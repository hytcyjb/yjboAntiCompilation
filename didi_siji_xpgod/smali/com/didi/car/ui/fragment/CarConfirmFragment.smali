.class public Lcom/didi/car/ui/fragment/CarConfirmFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CarConfirmFragment.java"


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
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->productId:I

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->countReEstimateNum:I

    .line 113
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$1;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 125
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$2;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    .line 234
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$4;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    .line 257
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$5;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 418
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$8;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    .line 434
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    .line 741
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$13;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 768
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$14;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$14;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getEstimatePriceCoupon(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/didi/car/ui/fragment/CarConfirmFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/car/listener/DynamicUpdatePriceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->checkProtectAndSendOrder()V

    return-void
.end method

.method static synthetic access$1300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->sendOrder()V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->onRealtimeOrderCreated(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/car/ui/fragment/CarConfirmFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->overdraftOid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/didi/car/ui/fragment/CarConfirmFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->productId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/car/model/CarServiceMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->isBackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->closeBar(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->confirmSendOrder()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/car/ui/fragment/CarConfirmFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->countReEstimateNum:I

    return v0
.end method

.method static synthetic access$608(Lcom/didi/car/ui/fragment/CarConfirmFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->countReEstimateNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->countReEstimateNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getEstimateFare(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->back()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    return-object v0
.end method

.method private back()V
    .locals 3

    .prologue
    .line 1102
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$17;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$17;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1126
    return-void
.end method

.method private cancelOrder()V
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$10;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    invoke-static {v0}, Lcom/didi/frame/business/terminator/OrderTerminator;->terminateAll(Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    .line 568
    return-void
.end method

.method private checkOrderAndSendOrder()V
    .locals 4

    .prologue
    .line 520
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v0

    .line 521
    .local v0, flag:Z
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    .line 522
    .local v1, sendable:Lcom/didi/frame/Sendable;
    if-eqz v0, :cond_3

    .line 523
    if-eqz v1, :cond_1

    .line 524
    instance-of v2, v1, Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v2, :cond_2

    .line 525
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

    .line 529
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->cancelOrder()V

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    .line 536
    :goto_1
    return-void

    .line 526
    :cond_2
    instance-of v2, v1, Lcom/didi/flier/model/FlierOrder;

    if-eqz v2, :cond_0

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carconfirm click runningflag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flierorder canceling...,oid:"

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

    .line 533
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

    .line 534
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->checkProtectAndSendOrder()V

    goto :goto_1
.end method

.method private checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 723
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fc

    if-ne v0, v1, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->overdraftOid:Ljava/lang/String;

    .line 728
    iget v0, p1, Lcom/didi/car/model/CarOrder;->productid:I

    iput v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->productId:I

    .line 729
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->initDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0596

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 733
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 734
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 737
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private checkProtectAndSendOrder()V
    .locals 3

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 594
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

    .line 596
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    .end local v0           #helper:Lcom/didi/common/helper/DialogHelper;
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 597
    .restart local v0       #helper:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 598
    const/4 v1, 0x0

    const v2, 0x7f0b0495

    invoke-virtual {p0, v2}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 600
    const v1, 0x7f0b0494

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 601
    const v1, 0x7f0b0496

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 602
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 603
    new-instance v1, Lcom/didi/car/ui/fragment/CarConfirmFragment$11;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$11;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 638
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 639
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->sendOrder()V

    goto :goto_0
.end method

.method private checkWexinPay(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->overdraftOid:Ljava/lang/String;

    .line 708
    iget v0, p1, Lcom/didi/car/model/CarOrder;->productid:I

    iput v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->productId:I

    .line 709
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->initDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0597

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 713
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 714
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0361

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 717
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private closeBar(Z)V
    .locals 2
    .parameter "clean"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->close()V

    .line 332
    :cond_0
    if-eqz p1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 336
    :cond_1
    return-void
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-nez v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 588
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto :goto_0
.end method

.method private confirmSendOrder()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 456
    const-string v6, "pgxcall_ck"

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 457
    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v6}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 458
    .local v1, carOrder:Lcom/didi/car/model/CarOrder;
    iget-object v6, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v6, :cond_5

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v0, carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    iget-object v6, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v6, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 462
    .local v3, selectCarArray:[I
    if-eqz v3, :cond_2

    .line 463
    iget-object v6, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v6, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 464
    .local v5, totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 465
    aget v6, v3, v2

    if-ne v9, v6, :cond_0

    .line 466
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 470
    iput-object v0, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 476
    .end local v2           #index:I
    .end local v5           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_2
    :goto_1
    iget-object v6, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 477
    :cond_3
    const v6, 0x7f0b0540

    invoke-static {v6}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->showTipsDialog(Ljava/lang/String;)V

    .line 478
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 479
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    .line 504
    .end local v0           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v3           #selectCarArray:[I
    :goto_2
    return-void

    .line 472
    .restart local v0       #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .restart local v2       #index:I
    .restart local v3       #selectCarArray:[I
    .restart local v5       #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_4
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    goto :goto_1

    .line 485
    .end local v0           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v2           #index:I
    .end local v3           #selectCarArray:[I
    .end local v5           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_5
    const-string v6, "pg0call08_ck"

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 487
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->disableSendConfirmBtn(Landroid/view/View;)V

    .line 490
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v6

    const v7, 0x7f05000b

    invoke-virtual {v6, v7}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 491
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v6

    if-nez v6, :cond_6

    .line 492
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    goto :goto_2

    .line 495
    :cond_6
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->hasStartAddressSelected()Z

    move-result v4

    .line 496
    .local v4, selected:Z
    if-nez v4, :cond_7

    .line 497
    const v6, 0x7f0b03dc

    invoke-static {v6}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 498
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    goto :goto_2

    .line 502
    :cond_7
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->checkOrderAndSendOrder()V

    goto :goto_2
.end method

.method private disableSendConfirmBtn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 507
    if-eqz p1, :cond_0

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 510
    :cond_0
    return-void
.end method

.method private enableSendConfirmBtn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 513
    if-eqz p1, :cond_0

    .line 514
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 516
    :cond_0
    return-void
.end method

.method private getEstimateFare(Z)V
    .locals 12
    .parameter "needRefreshDriver"

    .prologue
    .line 876
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v10

    .line 877
    .local v10, sendable:Lcom/didi/frame/Sendable;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    instance-of v0, v10, Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_0

    .line 882
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 883
    .local v11, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    .line 884
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

    .line 885
    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    .line 887
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

    .line 888
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

    .line 889
    new-instance v9, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v9}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 890
    .local v9, fare:Lcom/didi/common/model/MarkerFare;
    const v0, 0x7f0b032a

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 892
    invoke-interface {v10}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v0, v9}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 893
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v1, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v2, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v3, v8, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v4, v8, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;

    invoke-direct {v7, p0, v10, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment$15;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/frame/Sendable;Z)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePrice(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto/16 :goto_0
.end method

.method private getEstimatePriceCoupon(Z)V
    .locals 11
    .parameter "popWin"

    .prologue
    .line 1020
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v9

    .line 1021
    .local v9, sendable:Lcom/didi/frame/Sendable;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1022
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 1089
    :cond_1
    :goto_0
    return-void

    .line 1026
    :cond_2
    instance-of v0, v9, Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_1

    .line 1027
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v10

    .line 1028
    .local v10, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    .line 1029
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

    .line 1030
    if-eqz v10, :cond_1

    if-eqz v8, :cond_1

    .line 1032
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

    .line 1033
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

    .line 1034
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v1, v10, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v2, v10, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v3, v8, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v4, v8, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/didi/car/ui/fragment/CarConfirmFragment$16;

    invoke-direct {v7, p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment$16;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePriceCoupon(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private initDialog()Z
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 572
    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 578
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 579
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isBackEnabled()Z
    .locals 1

    .prologue
    .line 1098
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

    .line 675
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 676
    if-eqz p1, :cond_0

    .line 677
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 678
    :cond_0
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fb

    if-ne v0, v1, :cond_1

    .line 679
    const-string v0, "wanliu_confirm_uninstall_weixin_show"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 680
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->checkWexinPay(Lcom/didi/car/model/CarOrder;)V

    .line 689
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fc

    if-ne v0, v1, :cond_2

    .line 682
    const-string v0, "wanliu_confirm_bill_due_show"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 683
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V

    goto :goto_0

    .line 684
    :cond_2
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3f8

    if-ne v0, v1, :cond_3

    .line 685
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->validCityTip(Lcom/didi/car/model/CarOrder;)V

    goto :goto_0

    .line 687
    :cond_3
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    goto :goto_0
.end method

.method private onRealtimeOrderCreated(Lcom/didi/car/model/CarOrder;)V
    .locals 5
    .parameter "order"

    .prologue
    const/4 v4, 0x0

    .line 835
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 836
    if-eqz p1, :cond_0

    .line 837
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 838
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 863
    :cond_1
    :goto_0
    return-void

    .line 841
    :cond_2
    iget v1, p1, Lcom/didi/car/model/CarOrder;->errno:I

    const/16 v2, 0x7d8

    if-eq v1, v2, :cond_1

    .line 843
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    invoke-interface {v2}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    iput-object v2, v1, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 845
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 846
    .local v0, carOrder:Lcom/didi/car/model/CarOrder;
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    .line 847
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iput v4, v1, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 848
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 849
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 850
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget v2, v2, Lcom/didi/common/model/CommonAttributes;->countDown:I

    iput v2, v1, Lcom/didi/common/model/CommonAttributes;->countDown:I

    .line 851
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget v2, v2, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    iput v2, v1, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    .line 852
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    .line 853
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget v2, v2, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    iput v2, v1, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    .line 854
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget v2, v2, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    iput v2, v1, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    .line 856
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->setSent()V

    .line 858
    sput v4, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 859
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->confirmToWaitMapView()V

    .line 860
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/didi/frame/carmodel/CarModelOperator;->setIsOpen(Z)V

    .line 861
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v1}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 862
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    goto/16 :goto_0
.end method

.method private openBar(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 317
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$6;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    invoke-static {v0, p1, p2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    return-void
.end method

.method private sendOrder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 647
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const v1, 0x7f0b04e8

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 648
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    new-instance v1, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    invoke-static {v0, v3, v1}, Lcom/didi/car/net/CarRequest;->createOrder(Lcom/didi/frame/business/Business;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 672
    return-void
.end method

.method private setControlPanel()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 413
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->addCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 414
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarModelLayout()V

    .line 415
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    return-void
.end method

.method private setPalceListener()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 255
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 303
    return-void
.end method

.method private setTitleBar()V
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b027d

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 399
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 400
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->isBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    new-instance v1, Lcom/didi/car/ui/fragment/CarConfirmFragment$7;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$7;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    goto :goto_0
.end method

.method private setUpBar(Lcom/didi/car/model/CarServiceMessage;)V
    .locals 11
    .parameter "message"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 339
    const-wide/16 v4, 0x0

    .line 340
    .local v4, time:J
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v7}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    const-wide/16 v4, 0xfa

    .line 342
    invoke-direct {p0, v9}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->closeBar(Z)V

    .line 344
    :cond_0
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f0805f3

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 345
    .local v6, title:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f0805f4

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 346
    .local v3, content:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f08054b

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    .line 347
    .local v1, cancel:Lx/Button;
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f080611

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/Button;

    .line 348
    .local v2, confirm:Lx/Button;
    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f080610

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/LinearLayout;

    .line 350
    .local v0, buttonArea:Lx/LinearLayout;
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->cancelBtnText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->confirmBtnText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 351
    :cond_1
    invoke-virtual {v0, v10}, Lx/LinearLayout;->setVisibility(I)V

    .line 358
    :goto_0
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 359
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    :goto_1
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->content:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-direct {p0, v4, v5}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->openBar(J)V

    .line 368
    return-void

    .line 353
    :cond_2
    invoke-virtual {v0, v9}, Lx/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->cancelBtnText:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->confirmBtnText:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "type"
    .parameter "text"

    .prologue
    .line 866
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    if-ne p1, v0, :cond_0

    .line 867
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateTextFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 868
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showTextFareInfoWindow()V

    .line 873
    :goto_0
    return-void

    .line 870
    :cond_0
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateVoiceFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 871
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showVoiceFareInfoWindow()V

    goto :goto_0
.end method

.method private showTipsDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "tips"

    .prologue
    const/4 v2, 0x0

    .line 1130
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 1135
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private upLoadAddressGeo()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 195
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v9

    .line 196
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

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarOrder;

    .line 200
    .local v8, carOrder:Lcom/didi/car/model/CarOrder;
    invoke-virtual {v8}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 201
    .local v0, addr:Lcom/didi/common/model/Address;
    if-eqz v0, :cond_0

    .line 202
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
    .line 1093
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->back()V

    .line 1094
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

    .line 178
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->checkBusiness(Lcom/didi/frame/business/Business;)V

    .line 179
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->setTitleBar()V

    .line 180
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->setRedirectListener()V

    .line 182
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->setControlPanel()V

    .line 183
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->setPalceListener()V

    .line 185
    invoke-static {v1}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showConfirmMapView(Z)V

    .line 186
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    .line 187
    const-string v0, "pg0call_sw"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    const v0, 0x7f03004f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mView:Landroid/view/View;

    .line 190
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->upLoadAddressGeo()V

    .line 191
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 372
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 373
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 378
    const-string v0, "onDestroyView"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 380
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 381
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 382
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 383
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->hideContentPins()V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 388
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 390
    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    .line 392
    :cond_1
    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dynamicDialog:Lcom/didi/common/helper/DialogHelper;

    .line 393
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->closeDialog()V

    .line 394
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->closeBar(Z)V

    .line 395
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 250
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 220
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/didi/car/ui/fragment/CarConfirmFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment$3;-><init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStart()V

    .line 209
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    if-eq v0, v1, :cond_0

    .line 210
    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getEstimateFare(Z)V

    .line 211
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/config/CarPreferences;->getCarPollDynamicPriceTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/config/CarPreferences;->getCarPollDynamicPriceTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 309
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 310
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/DrawerView;

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    .line 312
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 313
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 314
    return-void
.end method

.method public validCityTip(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    const/4 v2, 0x0

    .line 692
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 697
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 698
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method
