.class public Lcom/didi/car/ui/fragment/CarBookingFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CarBookingFragment.java"

# interfaces
.implements Lcom/didi/common/booking/BookingView$BookingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/fragment/CarBookingFragment$ToastListener;,
        Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;
    }
.end annotation


# static fields
.field public static final ORDER_WAIT_ANSWER:I


# instance fields
.field private final COMMON_DIALOG_EVENT_GOCHECK:I

.field private final COMMON_DIALOG_EVENT_OVERDRAFT:I

.field private final COMMON_DIALOG_EVENT_PROTECT_PHONE:I

.field private carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

.field private carModelTriggerView:Lcom/didi/frame/carmodel/CarModelTriggerView;

.field private carOrder:Lcom/didi/car/model/CarOrder;

.field private isOpen:Z

.field private isclick:Z

.field private mBookingView:Lcom/didi/common/booking/BookingView;

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private mPayHelper:Lcom/didi/car/helper/CarPayHelper;

.field private overdraftOid:Ljava/lang/String;

.field private placeListener:Lcom/didi/car/listener/PlaceInterface;

.field private productId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 94
    iput v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->productId:I

    .line 102
    iput v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->COMMON_DIALOG_EVENT_GOCHECK:I

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->COMMON_DIALOG_EVENT_OVERDRAFT:I

    .line 106
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->COMMON_DIALOG_EVENT_PROTECT_PHONE:I

    .line 112
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isOpen:Z

    .line 176
    new-instance v0, Lcom/didi/car/ui/fragment/CarBookingFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarBookingFragment$1;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarBookingFragment$2;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 832
    new-instance v0, Lcom/didi/car/ui/fragment/CarBookingFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarBookingFragment$6;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/fragment/CarBookingFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isclick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/didi/car/ui/fragment/CarBookingFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isclick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/car/ui/fragment/CarBookingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->back()V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/car/ui/fragment/CarBookingFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->onBookingOrderCreated(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/car/ui/fragment/CarBookingFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->orderCreateFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/car/ui/fragment/CarBookingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->showSelectCityToast()V

    return-void
.end method

.method static synthetic access$1300(Lcom/didi/car/ui/fragment/CarBookingFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getEstimatePriceCoupon(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/car/ui/fragment/CarBookingFragment;Lcom/didi/car/model/CarOrder;)Lcom/didi/car/model/CarOrder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/common/booking/BookingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/car/ui/fragment/CarBookingFragment;Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/car/ui/fragment/CarBookingFragment;Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->setEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/car/ui/fragment/CarBookingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceFail()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/car/ui/fragment/CarBookingFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->overdraftOid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/car/ui/fragment/CarBookingFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->productId:I

    return v0
.end method

.method static synthetic access$900(Lcom/didi/car/ui/fragment/CarBookingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->sendOrder()V

    return-void
.end method

.method private back()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    .line 110
    return-void
.end method

.method private checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 518
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v1

    const/16 v2, 0x3fc

    if-ne v1, v2, :cond_0

    .line 519
    const-string v1, "wanliu_confirm_bill_due_show"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 520
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->overdraftOid:Ljava/lang/String;

    .line 521
    iget v1, p1, Lcom/didi/car/model/CarOrder;->productid:I

    iput v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->productId:I

    .line 522
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 523
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 525
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 526
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 527
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 529
    new-instance v1, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;I)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 530
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 532
    .end local v0           #dialog:Lcom/didi/common/helper/DialogHelper;
    :cond_0
    return-void
.end method

.method private checkProtectAndSendOrder()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 642
    const/4 v0, 0x0

    .line 643
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

    .line 644
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    .end local v0           #helper:Lcom/didi/common/helper/DialogHelper;
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 645
    .restart local v0       #helper:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 646
    const/4 v1, 0x0

    const v2, 0x7f0b0495

    invoke-virtual {p0, v2}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 648
    const v1, 0x7f0b0494

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 649
    const v1, 0x7f0b0496

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 650
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 651
    new-instance v1, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;

    invoke-direct {v1, p0, v3}, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;I)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 652
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 653
    invoke-static {v3}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->sendOrder()V

    goto :goto_0
.end method

.method private checkWexinPay(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->overdraftOid:Ljava/lang/String;

    .line 540
    iget v1, p1, Lcom/didi/car/model/CarOrder;->productid:I

    iput v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->productId:I

    .line 541
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 544
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 545
    const v1, 0x7f0b0361

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 546
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 548
    new-instance v1, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;I)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 549
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private clearData()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/booking/BookingView;->setTimeTxt(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method private estimatePriceFail()V
    .locals 3

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v0, dataTips:Ljava/lang/StringBuilder;
    const v1, 0x7f0b032b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 3
    .parameter "estimatePrice"

    .prologue
    const v2, 0x7f0b032b

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v0, dataTips:Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v1, :cond_4

    .line 436
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {p1, v1}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v1

    if-lez v1, :cond_3

    .line 437
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    iget-object v1, v1, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    iget-object v1, v1, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    .line 457
    return-void

    .line 441
    :cond_0
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_1
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->estimatePrice:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->estimatePrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 447
    :cond_2
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 451
    :cond_3
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 454
    :cond_4
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private fillOrder()V
    .locals 6

    .prologue
    .line 722
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v2

    .line 723
    .local v2, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 724
    .local v1, end:Lcom/didi/common/model/Address;
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v4}, Lcom/didi/common/booking/BookingView;->getBookingTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/didi/car/model/CarOrder;->setTransportTime(J)V

    .line 725
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    .line 726
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3, v2}, Lcom/didi/car/model/CarOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 727
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3, v1}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 728
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    sget-object v4, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v3, v4}, Lcom/didi/car/model/CarOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 729
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    sget-object v4, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {v3, v4}, Lcom/didi/car/model/CarOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 730
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getCity()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 731
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getCityId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 732
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getTimeTxt()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    .line 733
    return-void
.end method

.method private getEstimatePrice()V
    .locals 9

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isOpen:Z

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01ff

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 361
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v5}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    new-instance v7, Lcom/didi/car/ui/fragment/CarBookingFragment$4;

    invoke-direct {v7, p0}, Lcom/didi/car/ui/fragment/CarBookingFragment$4;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePrice(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private getEstimatePriceCoupon(Z)V
    .locals 14
    .parameter "popWin"

    .prologue
    .line 868
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v10

    .line 869
    .local v10, sendable:Lcom/didi/frame/Sendable;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 870
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 913
    :cond_1
    :goto_0
    return-void

    .line 874
    :cond_2
    instance-of v0, v10, Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_1

    .line 875
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 876
    .local v11, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v9

    .line 877
    .local v9, end:Lcom/didi/common/model/Address;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 878
    if-eqz v11, :cond_1

    if-eqz v9, :cond_1

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    move-object v8, v10

    .line 882
    check-cast v8, Lcom/didi/car/model/CarOrder;

    .line 883
    .local v8, carOrder:Lcom/didi/car/model/CarOrder;
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v1, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v2, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v3, v9, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v4, v9, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v5

    const-wide/16 v12, 0x3e8

    div-long/2addr v5, v12

    new-instance v7, Lcom/didi/car/ui/fragment/CarBookingFragment$7;

    invoke-direct {v7, p0}, Lcom/didi/car/ui/fragment/CarBookingFragment$7;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePriceCoupon(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 6

    .prologue
    const v5, 0x7f07003f

    .line 142
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v3

    check-cast v3, Lcom/didi/car/model/CarOrder;

    iput-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    .line 143
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    if-nez v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/didi/common/booking/BookingView;->initCity(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    sget-object v4, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v3, v4}, Lcom/didi/car/model/CarOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 148
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    .line 149
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    iget-object v4, v0, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/booking/BookingView;->setTimeTxt(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, from:Ljava/lang/String;
    const/4 v2, 0x0

    .line 152
    .local v2, to:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 157
    :cond_1
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 158
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/didi/common/booking/BookingView;->setFromText(Ljava/lang/String;I)V

    .line 159
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/didi/common/booking/BookingView;->setToText(Ljava/lang/String;I)V

    .line 161
    :cond_2
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    iget-object v4, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/booking/BookingView;->initCity(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    invoke-direct {p0, v3}, Lcom/didi/car/ui/fragment/CarBookingFragment;->setDefaultEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 164
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/controlpanel/OperationArea;->getCarModelOperator()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/carmodel/CarModelOperator;->getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelTriggerView:Lcom/didi/frame/carmodel/CarModelTriggerView;

    goto :goto_0
.end method

.method private onBookingOrderCreated(Lcom/didi/car/model/CarOrder;)V
    .locals 4
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 330
    if-eqz p1, :cond_0

    .line 331
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 333
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    :goto_0
    return-void

    .line 336
    :cond_1
    sput v3, Lcom/didi/common/base/DidiApp;->mAsyncRecallCount:I

    .line 337
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/Preferences;->setCreateOrderTimes(J)V

    .line 338
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput v3, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 340
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 341
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->countDown:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->countDown:I

    .line 342
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    .line 343
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    .line 345
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    .line 347
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 348
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 349
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 350
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    .line 351
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->clearData()V

    goto :goto_0
.end method

.method private onCitySelected(Ljava/lang/String;)V
    .locals 7
    .parameter "cityString"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 282
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, c:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v5

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    aget-object v1, v0, v5

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v2}, Lcom/didi/common/booking/BookingView;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    aget-object v2, v0, v5

    aget-object v3, v0, v6

    invoke-virtual {v1, v2, v3, v6}, Lcom/didi/common/booking/BookingView;->setCity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getOpenCarByCityId(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isOpen:Z

    .line 287
    iget-boolean v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isOpen:Z

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->resetOperator(Z)V

    .line 288
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    const v2, 0x7f0b0327

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/car/model/CarEstimatePrice;->estimatePrice:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 291
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1, v4}, Lcom/didi/car/model/CarOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 292
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1, v4}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 293
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iput v5, v1, Lcom/didi/car/model/CarEstimatePrice;->discountPrice:I

    .line 294
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iput-object v4, v1, Lcom/didi/car/model/CarEstimatePrice;->description:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object v4, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 296
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object v4, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 297
    invoke-direct {p0, v4}, Lcom/didi/car/ui/fragment/CarBookingFragment;->setDefaultEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 299
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 300
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 301
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 305
    :cond_0
    return-void
.end method

.method private onEndAddressSelected()V
    .locals 4

    .prologue
    .line 318
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 319
    .local v0, endAddress:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/booking/BookingView;->setToText(Ljava/lang/String;I)V

    .line 320
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getEstimatePrice()V

    goto :goto_0
.end method

.method private onStartAddressSelected()V
    .locals 4

    .prologue
    .line 308
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 309
    .local v0, startAddress:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/booking/BookingView;->setFromText(Ljava/lang/String;I)V

    .line 310
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getEstimatePrice()V

    goto :goto_0
.end method

.method private orderCreateFail(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 497
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 498
    if-eqz p1, :cond_0

    .line 499
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 500
    :cond_0
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fb

    if-ne v0, v1, :cond_1

    .line 501
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->checkWexinPay(Lcom/didi/car/model/CarOrder;)V

    .line 508
    :goto_0
    return-void

    .line 502
    :cond_1
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fc

    if-ne v0, v1, :cond_2

    .line 503
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V

    goto :goto_0

    .line 505
    :cond_2
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->showDialog(Lcom/didi/car/model/CarOrder;)V

    goto :goto_0
.end method

.method private performLoadAnnouncement()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lcom/didi/car/ui/fragment/CarBookingFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarBookingFragment$3;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    return-void
.end method

.method private redirectToSearch(Z)V
    .locals 5
    .parameter "isStart"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    .line 249
    iget-boolean v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isOpen:Z

    if-nez v4, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->showSelectCityToast()V

    .line 260
    :goto_0
    return-void

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    move v2, v1

    .line 255
    .local v2, type:I
    :goto_1
    if-eqz p1, :cond_2

    .line 256
    .local v1, requestCode:I
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v3, "search_extra_order_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_1
    move v2, v3

    .line 254
    goto :goto_1

    .restart local v2       #type:I
    :cond_2
    move v1, v3

    .line 255
    goto :goto_2
.end method

.method private resetOperator(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelTriggerView:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->removeAllListener()V

    .line 809
    if-eqz p1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelTriggerView:Lcom/didi/frame/carmodel/CarModelTriggerView;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelTriggerView:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->getDefaultListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelTriggerView:Lcom/didi/frame/carmodel/CarModelTriggerView;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelTriggerView:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->getDefaultListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelTriggerView:Lcom/didi/frame/carmodel/CarModelTriggerView;

    new-instance v1, Lcom/didi/car/ui/fragment/CarBookingFragment$ToastListener;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/fragment/CarBookingFragment$ToastListener;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->addListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private sendOrder()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 660
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v4, v4, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v4, :cond_5

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v0, carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v4, v4, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, v4, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 664
    .local v2, selectCarArray:[I
    if-eqz v2, :cond_2

    .line 665
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v4, v4, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v4, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 666
    .local v3, totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 667
    const/4 v4, 0x1

    aget v5, v2, v1

    if-ne v4, v5, :cond_0

    .line 668
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 672
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object v0, v4, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 678
    .end local v1           #index:I
    .end local v3           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v4, v4, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v4, v4, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 679
    :cond_3
    const v4, 0x7f0b0540

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/didi/car/ui/fragment/CarBookingFragment;->showTipsDialog(Ljava/lang/String;)V

    .line 719
    .end local v0           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v2           #selectCarArray:[I
    :goto_2
    return-void

    .line 674
    .restart local v0       #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .restart local v1       #index:I
    .restart local v2       #selectCarArray:[I
    .restart local v3       #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_4
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object v7, v4, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    goto :goto_1

    .line 683
    .end local v0           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v1           #index:I
    .end local v2           #selectCarArray:[I
    .end local v3           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0b01f8

    invoke-virtual {p0, v5}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 684
    sget-object v4, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    new-instance v5, Lcom/didi/car/ui/fragment/CarBookingFragment$5;

    invoke-direct {v5, p0}, Lcom/didi/car/ui/fragment/CarBookingFragment$5;-><init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    invoke-static {v4, v7, v5}, Lcom/didi/car/net/CarRequest;->createOrder(Lcom/didi/frame/business/Business;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_2
.end method

.method private setDefaultEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 460
    if-eqz p1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object p1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 462
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const v1, 0x7f0b0328

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 11
    .parameter "t"

    .prologue
    const/4 v10, 0x1

    .line 389
    if-eqz p1, :cond_5

    .line 390
    iget-object v2, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 391
    .local v2, newCarModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 392
    iget-object v8, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v8, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 393
    .local v0, estimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v0, :cond_3

    .line 394
    iget-object v4, v0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 395
    .local v4, oldCarModelArray:[I
    iget-object v5, v0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 397
    .local v5, oldCarModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 398
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 399
    .local v3, newSize:I
    new-array v6, v3, [I

    .line 401
    .local v6, sCarIndexArray:[I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 402
    const/4 v7, 0x0

    .local v7, sInt:I
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_1

    .line 403
    aget v8, v4, v7

    if-ne v10, v8, :cond_0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarModel;

    iget v9, v8, Lcom/didi/car/model/CarModel;->cLevel:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarModel;

    iget v8, v8, Lcom/didi/car/model/CarModel;->cLevel:I

    if-ne v9, v8, :cond_0

    .line 405
    aput v10, v6, v1

    .line 402
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 401
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v7           #sInt:I
    :cond_2
    iput-object v6, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 414
    .end local v0           #estimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    .end local v1           #index:I
    .end local v3           #newSize:I
    .end local v4           #oldCarModelArray:[I
    .end local v5           #oldCarModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v6           #sCarIndexArray:[I
    :cond_3
    iget-object v8, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iput-object p1, v8, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 415
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 416
    iget-object v8, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v8, v8, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v8, v8, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_4

    .line 417
    iget-object v8, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    iget-object v8, v8, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v8, v8, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v8}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    .line 425
    .end local v2           #newCarModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :goto_2
    return-void

    .line 419
    .restart local v2       #newCarModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_4
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    goto :goto_2

    .line 422
    .end local v2           #newCarModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_5
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceFail()V

    .line 423
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    goto :goto_2
.end method

.method private setPlaceListener()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 191
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 192
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->addCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 193
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 169
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 170
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 171
    const v1, 0x7f0b01f7

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 172
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 173
    return-void
.end method

.method private showDialog(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 511
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 512
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 514
    return-void
.end method

.method private showSelectCityToast()V
    .locals 1

    .prologue
    .line 804
    const v0, 0x7f0b04e1

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 805
    return-void
.end method

.method private showTipsDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "tips"

    .prologue
    const/4 v2, 0x0

    .line 825
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 826
    .local v0, helper:Lcom/didi/common/helper/DialogHelper;
    invoke-virtual {v0, v2, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 829
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 830
    return-void
.end method

.method private validate()Z
    .locals 5

    .prologue
    const v4, 0x7f0b01e5

    const/4 v2, 0x0

    .line 736
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 737
    .local v1, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 738
    .local v0, end:Lcom/didi/common/model/Address;
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 739
    :cond_0
    invoke-virtual {p0, v4}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 765
    :cond_1
    :goto_0
    return v2

    .line 743
    :cond_2
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getFromText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getToText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 744
    :cond_3
    invoke-virtual {p0, v4}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_4
    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 748
    :cond_5
    invoke-virtual {p0, v4}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_6
    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 752
    const v3, 0x7f0b01e6

    invoke-virtual {p0, v3}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_7
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getTimeTxt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 757
    const v3, 0x7f0b01e8

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 761
    :cond_8
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 765
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 264
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 265
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 267
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 269
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->onStartAddressSelected()V

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->onEndAddressSelected()V

    goto :goto_0

    .line 275
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "city_select_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, cityString:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->onCitySelected(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->clearData()V

    .line 241
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 242
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 243
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public onCitySelected()V
    .locals 3

    .prologue
    .line 781
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 782
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 783
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->setTitleBar()V

    .line 126
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isOpen:Z

    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/common/util/Constant;->isClearRemark:Z

    .line 128
    new-instance v0, Lcom/didi/common/booking/BookingView;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/booking/BookingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    .line 129
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0, p0}, Lcom/didi/common/booking/BookingView;->setListener(Lcom/didi/common/booking/BookingView$BookingListener;)V

    .line 130
    invoke-static {}, Lcom/didi/common/util/Utils;->setSyncTime()V

    .line 131
    sget-boolean v0, Lcom/didi/common/util/Constant;->isBookingSendable:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const v1, 0x7f0b0328

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->initData()V

    .line 136
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/booking/BookingView;->initControlPanel()V

    .line 137
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isOpen:Z

    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->resetOperator(Z)V

    .line 138
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    return-object v0
.end method

.method public onFromSelected()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->redirectToSearch(Z)V

    .line 471
    return-void
.end method

.method public onGetOrderTime(J)V
    .locals 1
    .parameter "mOrderTime"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    if-nez v0, :cond_0

    .line 771
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0, p1, p2}, Lcom/didi/car/model/CarOrder;->setTransportTime(J)V

    .line 774
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/booking/BookingView;->getToText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/booking/BookingView;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getEstimatePrice()V

    .line 777
    :cond_1
    return-void
.end method

.method public onPriceSelected()V
    .locals 3

    .prologue
    .line 787
    iget-boolean v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isOpen:Z

    if-nez v1, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->showSelectCityToast()V

    .line 801
    :goto_0
    return-void

    .line 797
    :cond_0
    const-string v1, "pg1call06_ck"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 798
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 799
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "display_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSubmitClicked()V
    .locals 2

    .prologue
    .line 480
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 482
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment;->isOpen:Z

    if-nez v0, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->showSelectCityToast()V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->fillOrder()V

    .line 492
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->checkProtectAndSendOrder()V

    goto :goto_0
.end method

.method public onToSelected()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->redirectToSearch(Z)V

    .line 476
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 223
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 224
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->performLoadAnnouncement()V

    .line 225
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->setPlaceListener()V

    .line 226
    return-void
.end method
