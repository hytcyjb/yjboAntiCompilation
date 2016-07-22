.class public Lcom/didi/flier/ui/fragment/FlierBookingFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "FlierBookingFragment.java"

# interfaces
.implements Lcom/didi/common/booking/BookingView$BookingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/flier/ui/fragment/FlierBookingFragment$ToastListener;,
        Lcom/didi/flier/ui/fragment/FlierBookingFragment$BookingDialogListener;
    }
.end annotation


# static fields
.field public static final ORDER_WAIT_ANSWER:I


# instance fields
.field private final COMMON_DIALOG_EVENT_GOCHECK:I

.field private final COMMON_DIALOG_EVENT_OVERDRAFT:I

.field private final COMMON_DIALOG_EVENT_PROTECT_PHONE:I

.field private flierOrder:Lcom/didi/flier/model/FlierOrder;

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

    .line 75
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 95
    iput v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->COMMON_DIALOG_EVENT_GOCHECK:I

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->COMMON_DIALOG_EVENT_OVERDRAFT:I

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->COMMON_DIALOG_EVENT_PROTECT_PHONE:I

    .line 109
    iput-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isOpen:Z

    .line 171
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$1;-><init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 188
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;-><init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 739
    return-void
.end method

.method static synthetic access$000(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isclick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isclick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->back()V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->onBookingOrderCreated(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->orderCreateFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->showSelectCityToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/flier/model/FlierOrder;)Lcom/didi/flier/model/FlierOrder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/common/booking/BookingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->setEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->estimatePriceFail()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->overdraftOid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->productId:I

    return v0
.end method

.method static synthetic access$900(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->sendOrder()V

    return-void
.end method

.method private back()V
    .locals 0

    .prologue
    .line 106
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    .line 107
    return-void
.end method

.method private checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 466
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v1

    const/16 v2, 0x3fc

    if-ne v1, v2, :cond_0

    .line 467
    const-string v1, "wanliu_confirm_bill_due_show"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 468
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->overdraftOid:Ljava/lang/String;

    .line 469
    iget v1, p1, Lcom/didi/car/model/CarOrder;->productid:I

    iput v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->productId:I

    .line 470
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 471
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 473
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 474
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 475
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 477
    new-instance v1, Lcom/didi/flier/ui/fragment/FlierBookingFragment$BookingDialogListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$BookingDialogListener;-><init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;I)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 478
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 480
    .end local v0           #dialog:Lcom/didi/common/helper/DialogHelper;
    :cond_0
    return-void
.end method

.method private checkProtectAndSendOrder()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 597
    const/4 v0, 0x0

    .line 598
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

    .line 599
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    .end local v0           #helper:Lcom/didi/common/helper/DialogHelper;
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 600
    .restart local v0       #helper:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 601
    const/4 v1, 0x0

    const v2, 0x7f0b0495

    invoke-virtual {p0, v2}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 603
    const v1, 0x7f0b0494

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 604
    const v1, 0x7f0b0496

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 605
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 606
    new-instance v1, Lcom/didi/flier/ui/fragment/FlierBookingFragment$BookingDialogListener;

    invoke-direct {v1, p0, v3}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$BookingDialogListener;-><init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;I)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 607
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 608
    invoke-static {v3}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->sendOrder()V

    goto :goto_0
.end method

.method private checkWexinPay(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 501
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->overdraftOid:Ljava/lang/String;

    .line 490
    iget v1, p1, Lcom/didi/car/model/CarOrder;->productid:I

    iput v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->productId:I

    .line 491
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 492
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 494
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 495
    const v1, 0x7f0b0361

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 496
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 498
    new-instance v1, Lcom/didi/flier/ui/fragment/FlierBookingFragment$BookingDialogListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$BookingDialogListener;-><init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;I)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 499
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private clearData()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/booking/BookingView;->setTimeTxt(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method private estimatePriceFail()V
    .locals 3

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, dataTips:Ljava/lang/StringBuilder;
    const v1, 0x7f0b032b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 3
    .parameter "estimatePrice"

    .prologue
    const v2, 0x7f0b032b

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v0, dataTips:Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    iget-object v1, v1, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    iget-object v1, v1, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    .line 404
    return-void

    .line 394
    :cond_0
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 397
    :cond_1
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    iget-object v1, v1, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 398
    iget-object v1, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    iget-object v1, v1, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 400
    :cond_2
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private fillOrder()V
    .locals 6

    .prologue
    .line 654
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v2

    .line 655
    .local v2, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 656
    .local v1, end:Lcom/didi/common/model/Address;
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v4, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v4}, Lcom/didi/common/booking/BookingView;->getBookingTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/didi/flier/model/FlierOrder;->setTransportTime(J)V

    .line 657
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v3}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    .line 658
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v3, v2}, Lcom/didi/flier/model/FlierOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 659
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v3, v1}, Lcom/didi/flier/model/FlierOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 660
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    sget-object v4, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v3, v4}, Lcom/didi/flier/model/FlierOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 661
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    sget-object v4, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {v3, v4}, Lcom/didi/flier/model/FlierOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 662
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getCity()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 663
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getCityId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 664
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getTimeTxt()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    .line 665
    return-void
.end method

.method private getEstimatePrice()V
    .locals 9

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isOpen:Z

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01ff

    invoke-virtual {p0, v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 348
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

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

    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v5}, Lcom/didi/flier/model/FlierOrder;->getTransportTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    new-instance v7, Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;

    invoke-direct {v7, p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;-><init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePrice(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 6

    .prologue
    const v5, 0x7f07003f

    .line 138
    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v3

    check-cast v3, Lcom/didi/flier/model/FlierOrder;

    iput-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    .line 139
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-nez v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/didi/common/booking/BookingView;->initCity(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    sget-object v4, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v3, v4}, Lcom/didi/flier/model/FlierOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 144
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v3}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    .line 145
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    iget-object v4, v0, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/booking/BookingView;->setTimeTxt(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, from:Ljava/lang/String;
    const/4 v2, 0x0

    .line 148
    .local v2, to:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v3}, Lcom/didi/flier/model/FlierOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v3}, Lcom/didi/flier/model/FlierOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v3}, Lcom/didi/flier/model/FlierOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v3}, Lcom/didi/flier/model/FlierOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_1
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/didi/common/booking/BookingView;->setFromText(Ljava/lang/String;I)V

    .line 155
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/didi/common/booking/BookingView;->setToText(Ljava/lang/String;I)V

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    iget-object v4, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/booking/BookingView;->initCity(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v3, v3, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    invoke-direct {p0, v3}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->setDefaultEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V

    goto :goto_0
.end method

.method private onBookingOrderCreated(Lcom/didi/car/model/CarOrder;)V
    .locals 4
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 315
    if-eqz p1, :cond_0

    .line 316
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 318
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    :goto_0
    return-void

    .line 321
    :cond_1
    sput v3, Lcom/didi/common/base/DidiApp;->mAsyncRecallCount:I

    .line 322
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/Preferences;->setCreateOrderTimes(J)V

    .line 323
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/flier/model/FlierOrder;->oid:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput v3, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 325
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    iput-object v1, v0, Lcom/didi/flier/model/FlierOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 326
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput v3, v0, Lcom/didi/common/model/CommonAttributes;->countDown:I

    .line 332
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 333
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 334
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 335
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    .line 336
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->clearData()V

    goto :goto_0
.end method

.method private onCitySelected(Ljava/lang/String;)V
    .locals 7
    .parameter "cityString"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 269
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 270
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

    .line 271
    aget-object v1, v0, v5

    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v2}, Lcom/didi/common/booking/BookingView;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    aget-object v2, v0, v5

    aget-object v3, v0, v6

    invoke-virtual {v1, v2, v3, v6}, Lcom/didi/common/booking/BookingView;->setCity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 273
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getOpenCarByCityId(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isOpen:Z

    .line 274
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v1, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v1, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    const v2, 0x7f0b0327

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/car/model/CarEstimatePrice;->estimatePrice:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v1, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    invoke-direct {p0, v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 277
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v1, v4}, Lcom/didi/flier/model/FlierOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 278
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v1, v4}, Lcom/didi/flier/model/FlierOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 279
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v1, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iput v5, v1, Lcom/didi/car/model/CarEstimatePrice;->discountPrice:I

    .line 280
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iget-object v1, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iput-object v4, v1, Lcom/didi/car/model/CarEstimatePrice;->description:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 282
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

    .line 283
    invoke-direct {p0, v4}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->setDefaultEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 285
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 286
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 290
    :cond_0
    return-void
.end method

.method private onEndAddressSelected()V
    .locals 4

    .prologue
    .line 303
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 304
    .local v0, endAddress:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/booking/BookingView;->setToText(Ljava/lang/String;I)V

    .line 305
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getEstimatePrice()V

    goto :goto_0
.end method

.method private onStartAddressSelected()V
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 294
    .local v0, startAddress:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/booking/BookingView;->setFromText(Ljava/lang/String;I)V

    .line 295
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getEstimatePrice()V

    goto :goto_0
.end method

.method private orderCreateFail(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 443
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 444
    if-eqz p1, :cond_0

    .line 445
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 446
    :cond_0
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fb

    if-ne v0, v1, :cond_1

    .line 447
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->checkWexinPay(Lcom/didi/car/model/CarOrder;)V

    .line 454
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fc

    if-ne v0, v1, :cond_2

    .line 449
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V

    goto :goto_0

    .line 451
    :cond_2
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->showDialog(Lcom/didi/car/model/CarOrder;)V

    goto :goto_0
.end method

.method private performLoadAnnouncement()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$3;-><init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method

.method private redirectToSearch(Z)V
    .locals 5
    .parameter "isStart"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    .line 236
    iget-boolean v4, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isOpen:Z

    if-nez v4, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->showSelectCityToast()V

    .line 247
    :goto_0
    return-void

    .line 241
    :cond_0
    if-eqz p1, :cond_1

    move v2, v1

    .line 242
    .local v2, type:I
    :goto_1
    if-eqz p1, :cond_2

    .line 243
    .local v1, requestCode:I
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const-string v3, "search_extra_order_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_1
    move v2, v3

    .line 241
    goto :goto_1

    .restart local v2       #type:I
    :cond_2
    move v1, v3

    .line 242
    goto :goto_2
.end method

.method private sendOrder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01f8

    invoke-virtual {p0, v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 616
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    new-instance v1, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;

    invoke-direct {v1, p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;-><init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V

    invoke-static {v0, v3, v1}, Lcom/didi/car/net/CarRequest;->createOrder(Lcom/didi/frame/business/Business;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 651
    return-void
.end method

.method private setDefaultEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 407
    if-eqz p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object p1, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 409
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const v1, 0x7f0b0328

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 374
    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    iput-object p1, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 376
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->estimatePriceFail()V

    goto :goto_0
.end method

.method private setPlaceListener()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 186
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 164
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 165
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 166
    const v1, 0x7f0b01fa

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 167
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 168
    return-void
.end method

.method private showDialog(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 457
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 458
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 460
    return-void
.end method

.method private showSelectCityToast()V
    .locals 1

    .prologue
    .line 736
    const v0, 0x7f0b04e1

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 737
    return-void
.end method

.method private validate()Z
    .locals 5

    .prologue
    const v4, 0x7f0b01e5

    const/4 v2, 0x0

    .line 668
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 669
    .local v1, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 670
    .local v0, end:Lcom/didi/common/model/Address;
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 671
    :cond_0
    invoke-virtual {p0, v4}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 697
    :cond_1
    :goto_0
    return v2

    .line 675
    :cond_2
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getFromText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getToText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 676
    :cond_3
    invoke-virtual {p0, v4}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 679
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

    .line 680
    :cond_5
    invoke-virtual {p0, v4}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_6
    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 684
    const v3, 0x7f0b01e6

    invoke-virtual {p0, v3}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_7
    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getTimeTxt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 689
    const v3, 0x7f0b01e8

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 693
    :cond_8
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 697
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
    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 254
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 256
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->onStartAddressSelected()V

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->onEndAddressSelected()V

    goto :goto_0

    .line 262
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "city_select_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, cityString:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->onCitySelected(Ljava/lang/String;)V

    goto :goto_0

    .line 254
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
    .line 226
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->clearData()V

    .line 227
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 228
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public onCitySelected()V
    .locals 3

    .prologue
    .line 713
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 714
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 715
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->setTitleBar()V

    .line 123
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isOpen:Z

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/common/util/Constant;->isClearRemark:Z

    .line 125
    new-instance v0, Lcom/didi/common/booking/BookingView;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/booking/BookingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    .line 126
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0, p0}, Lcom/didi/common/booking/BookingView;->setListener(Lcom/didi/common/booking/BookingView$BookingListener;)V

    .line 127
    invoke-static {}, Lcom/didi/common/util/Utils;->setSyncTime()V

    .line 128
    sget-boolean v0, Lcom/didi/common/util/Constant;->isBookingSendable:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const v1, 0x7f0b0328

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->initData()V

    .line 133
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/booking/BookingView;->initControlPanel()V

    .line 134
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    return-object v0
.end method

.method public onFromSelected()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->redirectToSearch(Z)V

    .line 418
    return-void
.end method

.method public onGetOrderTime(J)V
    .locals 1
    .parameter "mOrderTime"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    if-nez v0, :cond_0

    .line 703
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0, p1, p2}, Lcom/didi/flier/model/FlierOrder;->setTransportTime(J)V

    .line 706
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/booking/BookingView;->getToText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/booking/BookingView;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getEstimatePrice()V

    .line 709
    :cond_1
    return-void
.end method

.method public onPriceSelected()V
    .locals 3

    .prologue
    .line 719
    iget-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isOpen:Z

    if-nez v1, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->showSelectCityToast()V

    .line 733
    :goto_0
    return-void

    .line 729
    :cond_0
    const-string v1, "pg1call06_ck"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 730
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 731
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "display_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    invoke-virtual {p0, v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSubmitClicked()V
    .locals 2

    .prologue
    .line 427
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 429
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->isOpen:Z

    if-nez v0, :cond_1

    .line 430
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->showSelectCityToast()V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->fillOrder()V

    .line 439
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->checkProtectAndSendOrder()V

    goto :goto_0
.end method

.method public onToSelected()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->redirectToSearch(Z)V

    .line 423
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 209
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 210
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->performLoadAnnouncement()V

    .line 211
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->setPlaceListener()V

    .line 212
    return-void
.end method
