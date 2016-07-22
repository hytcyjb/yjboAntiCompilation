.class public Lcom/didi/flier/ui/fragment/FlierConfirmFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "FlierConfirmFragment.java"


# instance fields
.field private bar:Lcom/didi/common/ui/component/DrawerView;

.field private carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

.field private carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

.field private countReEstimateNum:I

.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private dynamicDialog:Lcom/didi/common/helper/DialogHelper;

.field private dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

.field goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private mConfirmBtn:Landroid/view/View;

.field private mOnConfirmListener:Landroid/view/View$OnClickListener;

.field private mPayHelper:Lcom/didi/car/helper/CarPayHelper;

.field private mView:Landroid/view/View;

.field private overdraftOid:Ljava/lang/String;

.field private placeListener:Lcom/didi/car/listener/PlaceInterface;

.field private pollEstimateRunn:Ljava/lang/Runnable;

.field private productId:I

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->countReEstimateNum:I

    .line 109
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$1;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 121
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    .line 229
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$4;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$5;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 428
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$8;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    .line 442
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$9;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    .line 740
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$13;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 767
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$14;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getEstimatePriceCoupon(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mConfirmBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mConfirmBtn:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/car/listener/DynamicUpdatePriceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->checkProtectAndSendOrder()V

    return-void
.end method

.method static synthetic access$1300(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->sendOrder()V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->onRealtimeOrderCreated(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->overdraftOid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->productId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/car/model/CarServiceMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->isBackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->closeBar(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->confirmSendOrder()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->countReEstimateNum:I

    return v0
.end method

.method static synthetic access$608(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->countReEstimateNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->countReEstimateNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getEstimateFare(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->back()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    return-object v0
.end method

.method private back()V
    .locals 3

    .prologue
    .line 1108
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$17;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$17;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1133
    return-void
.end method

.method private cancelOrder()V
    .locals 1

    .prologue
    .line 539
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$10;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    invoke-static {v0}, Lcom/didi/frame/business/terminator/OrderTerminator;->terminateAll(Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    .line 567
    return-void
.end method

.method private checkOrderAndSendOrder()V
    .locals 4

    .prologue
    .line 519
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v0

    .line 520
    .local v0, flag:Z
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    .line 521
    .local v1, sendable:Lcom/didi/frame/Sendable;
    if-eqz v0, :cond_3

    .line 522
    if-eqz v1, :cond_1

    .line 523
    instance-of v2, v1, Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v2, :cond_2

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carconfirm click runningflag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " taxiorder canceling...,oid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 528
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->cancelOrder()V

    .line 530
    :cond_1
    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    .line 535
    :goto_1
    return-void

    .line 525
    :cond_2
    instance-of v2, v1, Lcom/didi/car/model/CarOrder;

    if-eqz v2, :cond_0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carconfirm click runningflag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " carorder canceling...,oid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carconfirm click runningflag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->checkProtectAndSendOrder()V

    goto :goto_1
.end method

.method private checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 722
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fc

    if-ne v0, v1, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->overdraftOid:Ljava/lang/String;

    .line 727
    iget v0, p1, Lcom/didi/car/model/CarOrder;->productid:I

    iput v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->productId:I

    .line 728
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->initDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0596

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 732
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 733
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 736
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private checkProtectAndSendOrder()V
    .locals 3

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 593
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

    .line 595
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    .end local v0           #helper:Lcom/didi/common/helper/DialogHelper;
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 596
    .restart local v0       #helper:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 597
    const/4 v1, 0x0

    const v2, 0x7f0b0495

    invoke-virtual {p0, v2}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 599
    const v1, 0x7f0b0494

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 600
    const v1, 0x7f0b0496

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 601
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 602
    new-instance v1, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$11;

    invoke-direct {v1, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$11;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 637
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 638
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->sendOrder()V

    goto :goto_0
.end method

.method private checkWexinPay(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->overdraftOid:Ljava/lang/String;

    .line 707
    iget v0, p1, Lcom/didi/car/model/CarOrder;->productid:I

    iput v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->productId:I

    .line 708
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->initDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0597

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 712
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 713
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0361

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 716
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private closeBar(Z)V
    .locals 2
    .parameter "clean"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->close()V

    .line 334
    :cond_0
    if-eqz p1, :cond_1

    .line 335
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 338
    :cond_1
    return-void
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 587
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto :goto_0
.end method

.method private confirmSendOrder()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 464
    const-string v6, "flier_pgxcall_ck"

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 465
    const-string v6, "flier_pg0call08_ck"

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 467
    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v6}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/flier/model/FlierOrder;

    .line 468
    .local v1, carOrder:Lcom/didi/flier/model/FlierOrder;
    iget-object v6, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v6, :cond_2

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    iget-object v6, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v6, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 472
    .local v3, selectCarArray:[I
    if-eqz v3, :cond_2

    .line 473
    iget-object v6, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v6, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 474
    .local v5, totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 475
    const/4 v6, 0x1

    aget v7, v3, v2

    if-ne v6, v7, :cond_0

    .line 476
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 480
    iput-object v0, v1, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

    .line 487
    .end local v0           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v2           #index:I
    .end local v3           #selectCarArray:[I
    .end local v5           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->disableSendConfirmBtn(Landroid/view/View;)V

    .line 490
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v6

    const v7, 0x7f05000b

    invoke-virtual {v6, v7}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 491
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v6

    if-nez v6, :cond_4

    .line 492
    iget-object v6, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    .line 503
    :goto_2
    return-void

    .line 482
    .restart local v0       #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .restart local v2       #index:I
    .restart local v3       #selectCarArray:[I
    .restart local v5       #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_3
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

    goto :goto_1

    .line 495
    .end local v0           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v2           #index:I
    .end local v3           #selectCarArray:[I
    .end local v5           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_4
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->hasStartAddressSelected()Z

    move-result v4

    .line 496
    .local v4, selected:Z
    if-nez v4, :cond_5

    .line 497
    const v6, 0x7f0b03dc

    invoke-static {v6}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 498
    iget-object v6, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    goto :goto_2

    .line 502
    :cond_5
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->checkOrderAndSendOrder()V

    goto :goto_2
.end method

.method private disableSendConfirmBtn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 509
    :cond_0
    return-void
.end method

.method private enableSendConfirmBtn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 513
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 515
    :cond_0
    return-void
.end method

.method private getEstimateFare(Z)V
    .locals 12
    .parameter "needRefreshDriver"

    .prologue
    .line 874
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v10

    .line 875
    .local v10, sendable:Lcom/didi/frame/Sendable;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    instance-of v0, v10, Lcom/didi/flier/model/FlierOrder;

    if-eqz v0, :cond_0

    .line 880
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 881
    .local v11, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    .line 882
    .local v8, end:Lcom/didi/common/model/Address;
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

    .line 883
    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    .line 885
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

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 887
    new-instance v9, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v9}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 888
    .local v9, fare:Lcom/didi/common/model/MarkerFare;
    const v0, 0x7f0b032a

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 889
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    .line 891
    invoke-interface {v10}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v0, v9}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 892
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    iget-object v1, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v2, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v3, v8, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v4, v8, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15;

    invoke-direct {v7, p0, v10, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$15;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/frame/Sendable;Z)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePrice(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto/16 :goto_0
.end method

.method private getEstimatePriceCoupon(Z)V
    .locals 11
    .parameter "popWin"

    .prologue
    .line 1025
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v9

    .line 1026
    .local v9, sendable:Lcom/didi/frame/Sendable;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1027
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 1095
    :cond_1
    :goto_0
    return-void

    .line 1031
    :cond_2
    instance-of v0, v9, Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_1

    .line 1032
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v10

    .line 1033
    .local v10, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    .line 1034
    .local v8, end:Lcom/didi/common/model/Address;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1035
    if-eqz v10, :cond_1

    if-eqz v8, :cond_1

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1039
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    iget-object v1, v10, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v2, v10, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v3, v8, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v4, v8, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;

    invoke-direct {v7, p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$16;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePriceCoupon(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private initDialog()Z
    .locals 2

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 571
    const/4 v0, 0x0

    .line 578
    :goto_0
    return v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 577
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 578
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isBackEnabled()Z
    .locals 1

    .prologue
    .line 1104
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    const/4 v2, 0x0

    .line 674
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 675
    if-eqz p1, :cond_0

    .line 676
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 677
    :cond_0
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fb

    if-ne v0, v1, :cond_1

    .line 678
    const-string v0, "flier_wanliu_confirm_uninstall_weixin_show"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 679
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->checkWexinPay(Lcom/didi/car/model/CarOrder;)V

    .line 688
    :goto_0
    return-void

    .line 680
    :cond_1
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fc

    if-ne v0, v1, :cond_2

    .line 681
    const-string v0, "flier_wanliu_confirm_bill_due_show"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V

    goto :goto_0

    .line 683
    :cond_2
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3f8

    if-ne v0, v1, :cond_3

    .line 684
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->validCityTip(Lcom/didi/car/model/CarOrder;)V

    goto :goto_0

    .line 686
    :cond_3
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    goto :goto_0
.end method

.method private onRealtimeOrderCreated(Lcom/didi/car/model/CarOrder;)V
    .locals 5
    .parameter "order"

    .prologue
    const/4 v4, 0x0

    .line 833
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 834
    if-eqz p1, :cond_0

    .line 835
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 836
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 861
    :cond_1
    :goto_0
    return-void

    .line 839
    :cond_2
    iget v1, p1, Lcom/didi/car/model/CarOrder;->errno:I

    const/16 v2, 0x7d8

    if-eq v1, v2, :cond_1

    .line 841
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    invoke-interface {v2}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    iput-object v2, v1, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 843
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    .line 844
    .local v0, carOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/flier/model/FlierOrder;->oid:Ljava/lang/String;

    .line 845
    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iput v4, v1, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 846
    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 847
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    iput-object v1, v0, Lcom/didi/flier/model/FlierOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 848
    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iput v4, v1, Lcom/didi/common/model/CommonAttributes;->countDown:I

    .line 854
    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->setSent()V

    .line 856
    sput v4, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 857
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->confirmToWaitMapView()V

    .line 858
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/didi/frame/carmodel/CarModelOperator;->setIsOpen(Z)V

    .line 859
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v1}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 860
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    goto :goto_0
.end method

.method private openBar(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 319
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$6;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    invoke-static {v0, p1, p2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    return-void
.end method

.method private sendOrder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 646
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const v1, 0x7f0b04e8

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 647
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    new-instance v1, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;

    invoke-direct {v1, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    invoke-static {v0, v3, v1}, Lcom/didi/car/net/CarRequest;->createOrder(Lcom/didi/frame/business/Business;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 671
    return-void
.end method

.method private setControlPanel()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 423
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->addCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 424
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 425
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    return-void
.end method

.method private setPalceListener()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 250
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 299
    return-void
.end method

.method private setTitleBar()V
    .locals 4

    .prologue
    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v1, titleBuilder:Ljava/lang/StringBuilder;
    const v2, 0x7f0b027c

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFlierName()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, flierName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :goto_0
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 410
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->isBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v2

    new-instance v3, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$7;

    invoke-direct {v3, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$7;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    invoke-virtual {v2, v3}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 419
    :goto_1
    return-void

    .line 406
    :cond_0
    const v2, 0x7f0b0280

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 418
    :cond_1
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    goto :goto_1
.end method

.method private setUpBar(Lcom/didi/car/model/CarServiceMessage;)V
    .locals 11
    .parameter "message"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 341
    const-wide/16 v4, 0x0

    .line 342
    .local v4, time:J
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v7}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 343
    const-wide/16 v4, 0xfa

    .line 344
    invoke-direct {p0, v9}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->closeBar(Z)V

    .line 346
    :cond_0
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f0805f3

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 347
    .local v6, title:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f0805f4

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 348
    .local v3, content:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f08054b

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    .line 349
    .local v1, cancel:Lx/Button;
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f080611

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/Button;

    .line 350
    .local v2, confirm:Lx/Button;
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f080610

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/LinearLayout;

    .line 352
    .local v0, buttonArea:Lx/LinearLayout;
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->cancelBtnText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->confirmBtnText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 353
    :cond_1
    invoke-virtual {v0, v10}, Lx/LinearLayout;->setVisibility(I)V

    .line 360
    :goto_0
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 361
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    :goto_1
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->content:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-direct {p0, v4, v5}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->openBar(J)V

    .line 370
    return-void

    .line 355
    :cond_2
    invoke-virtual {v0, v9}, Lx/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->cancelBtnText:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->confirmBtnText:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "type"
    .parameter "text"

    .prologue
    .line 864
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    if-ne p1, v0, :cond_0

    .line 865
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateTextFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 866
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showTextFareInfoWindow()V

    .line 871
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateVoiceFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 869
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showVoiceFareInfoWindow()V

    goto :goto_0
.end method

.method private upLoadAddressGeo()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, fsource:Ljava/lang/String;
    const-string v1, "5"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "9"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v8

    check-cast v8, Lcom/didi/flier/model/FlierOrder;

    .line 195
    .local v8, flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-virtual {v8}, Lcom/didi/flier/model/FlierOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 196
    .local v0, addr:Lcom/didi/common/model/Address;
    if-eqz v0, :cond_0

    .line 197
    const-string v1, ""

    const/16 v5, 0x63

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v6

    const-string v7, ""

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v7}, Lcom/didi/taxi/net/TaxiRequest;->logAddress(Lcom/didi/common/model/Address;Ljava/lang/String;ZZZIZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1099
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->back()V

    .line 1100
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 174
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->checkBusiness(Lcom/didi/frame/business/Business;)V

    .line 175
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->setTitleBar()V

    .line 176
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->setRedirectListener()V

    .line 178
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->setControlPanel()V

    .line 179
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->setPalceListener()V

    .line 180
    invoke-static {v1}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showConfirmMapView(Z)V

    .line 181
    const-string v0, "flier_pg0call_sw"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    .line 183
    const v0, 0x7f03004f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mView:Landroid/view/View;

    .line 185
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->upLoadAddressGeo()V

    .line 186
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 375
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 380
    const-string v0, "onDestroyView"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 382
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 383
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 384
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 386
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->hideContentPins()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 390
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 392
    iput-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    .line 394
    :cond_1
    iput-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dynamicDialog:Lcom/didi/common/helper/DialogHelper;

    .line 395
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->closeDialog()V

    .line 396
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->closeBar(Z)V

    .line 397
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 215
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$3;-><init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 203
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStart()V

    .line 204
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    if-eq v0, v1, :cond_0

    .line 205
    invoke-direct {p0, v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getEstimateFare(Z)V

    .line 206
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/config/CarPreferences;->getFlierPollDynamicPriceTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/config/CarPreferences;->getFlierPollDynamicPriceTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 305
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 306
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/DrawerView;

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    .line 314
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 315
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 316
    return-void
.end method

.method public validCityTip(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    const/4 v2, 0x0

    .line 691
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 696
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 697
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method
