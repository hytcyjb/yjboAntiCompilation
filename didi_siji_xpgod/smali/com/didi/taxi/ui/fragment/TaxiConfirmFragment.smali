.class public Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "TaxiConfirmFragment.java"


# instance fields
.field private carPoolTriggerInterceptedListener:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field private mConfirmBtn:Landroid/view/View;

.field private mOnConfirmListener:Landroid/view/View$OnClickListener;

.field private placeListener:Lcom/didi/car/listener/PlaceInterface;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

.field private taxiOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 183
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$2;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->carPoolTriggerInterceptedListener:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    .line 244
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$4;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 264
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$5;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 333
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->showCarPoolFirstGuide()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->showRecommandDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->onRealtimeOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->isBackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->back()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->isNullStartAndEndName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mConfirmBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mConfirmBtn:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->disableSendConfirmBtn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->checkOrderAndSendOrder()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->sendOrder(Z)V

    return-void
.end method

.method private back()V
    .locals 3

    .prologue
    .line 692
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$13;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 713
    return-void
.end method

.method private cancelOrder(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 423
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$8;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Z)V

    invoke-static {v0}, Lcom/didi/frame/business/terminator/OrderTerminator;->terminateAll(Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    .line 453
    return-void
.end method

.method private checkBusiness()V
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->checkBusiness(Lcom/didi/frame/business/Business;)V

    .line 274
    return-void
.end method

.method private checkOrderAndSendOrder()V
    .locals 6

    .prologue
    .line 392
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v0

    .line 393
    .local v0, flag:Z
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 394
    .local v1, order:Lcom/didi/car/model/CarOrder;
    if-eqz v0, :cond_0

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taxiconfirm click runningflag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " carorder canceling...,oid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->cancelOrder(Z)V

    .line 397
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const v3, 0x7f0b04e8

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 400
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->sendOrder(Z)V

    goto :goto_0
.end method

.method private checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 547
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->check()Z

    move-result v0

    .line 548
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

    .line 549
    if-nez v0, :cond_1

    .line 550
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taxiconfirm failreplay4auto  check:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " It\'s booking order oid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->sendBookingOrder()V

    .line 564
    :goto_0
    return-void

    .line 554
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taxiconfirm failreplay4auto  check:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " It\'s realtime orderoid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->sendRealtimeOrder()V

    goto :goto_0

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taxiconfirm failreplay4auto  check:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " It\'s recovery order"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->onRealtimeOrderCreateFail(Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_0
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 460
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto :goto_0
.end method

.method private disableSendConfirmBtn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 382
    :cond_0
    return-void
.end method

.method private enableSendConfirmBtn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 388
    :cond_0
    return-void
.end method

.method private isBackEnabled()Z
    .locals 3

    .prologue
    .line 684
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getLastFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 685
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaxiClazz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 686
    const-class v1, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    if-eq v0, v1, :cond_0

    const-class v1, Lcom/didi/car/ui/fragment/CarConfirmFragment;

    if-eq v0, v1, :cond_0

    const-class v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    if-eq v1, v0, :cond_0

    const-class v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    if-eq v1, v0, :cond_0

    const-class v1, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    if-eq v1, v0, :cond_0

    const-class v1, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    if-eq v1, v0, :cond_0

    const-class v1, Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNullStartAndEndName()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 319
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 320
    .local v0, order:Lcom/didi/taxi/model/TaxiOrder;
    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v1

    .line 323
    :cond_1
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEndDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jumpToRecovery(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 630
    new-instance v1, Lcom/didi/common/model/RecoveryConfig;

    invoke-direct {v1}, Lcom/didi/common/model/RecoveryConfig;-><init>()V

    .line 631
    .local v1, re:Lcom/didi/common/model/RecoveryConfig;
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    iput-object v2, v1, Lcom/didi/common/model/RecoveryConfig;->business:Lcom/didi/frame/business/Business;

    .line 632
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/model/RecoveryConfig;->oid:Ljava/lang/String;

    .line 633
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOtype()I

    move-result v2

    iput v2, v1, Lcom/didi/common/model/RecoveryConfig;->type:I

    .line 634
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/model/RecoveryConfig;->msg:Ljava/lang/String;

    .line 635
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v2, v3}, Lcom/didi/frame/recovery/RecoveryHelper;->getRecoveryBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/recovery/RecoveryBusiness;

    move-result-object v0

    .line 636
    .local v0, bus:Lcom/didi/frame/recovery/RecoveryBusiness;
    if-nez v0, :cond_0

    .line 642
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-static {}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->getInstance()Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->disMissGuide()V

    .line 640
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->confirmToWaitMapView()V

    .line 641
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/didi/frame/recovery/RecoveryHelper;->showConfirmDialog(Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)V

    goto :goto_0
.end method

.method private onRealtimeOrderCreateFail(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 567
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 569
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v0

    .line 570
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

    .line 571
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v1

    const/16 v2, 0x3fa

    if-ne v1, v2, :cond_0

    .line 572
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->jumpToRecovery(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 582
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v1

    const v2, 0xf55d6

    if-ne v1, v2, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->showIllegalAddressDialog()V

    goto :goto_0

    .line 578
    :cond_1
    if-eqz p1, :cond_2

    .line 579
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Lcom/didi/taxi/model/TaxiOrder;->replaceEmptyErrorMessage(I)V

    .line 581
    :cond_2
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    goto :goto_0
.end method

.method private onRealtimeOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 10
    .parameter "order"

    .prologue
    const/4 v9, 0x0

    .line 645
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 646
    if-eqz p1, :cond_0

    .line 647
    const v5, 0x7f0b035d

    invoke-virtual {p1, v5}, Lcom/didi/taxi/model/TaxiOrder;->replaceEmptyErrorMessage(I)V

    .line 648
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 675
    :cond_1
    :goto_0
    return-void

    .line 651
    :cond_2
    iget v5, p1, Lcom/didi/taxi/model/TaxiOrder;->errno:I

    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_1

    .line 653
    sget-object v5, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v4

    check-cast v4, Lcom/didi/taxi/model/TaxiOrder;

    .line 654
    .local v4, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    iput v9, v5, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 656
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->isTimeout()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setTimeout(Z)V

    .line 657
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 658
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 667
    :goto_1
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v5

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->setTripType(I)V

    .line 668
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->setSent()V

    .line 669
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 670
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setUseDepart(Z)V

    .line 672
    :cond_3
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    iput v9, v5, Lcom/didi/common/model/CommonAttributes;->is_html:I

    .line 673
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->confirmToWaitMapView()V

    .line 674
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    goto :goto_0

    .line 660
    :cond_4
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getTimeOffset()J

    move-result-wide v2

    .line 661
    .local v2, offset:J
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x927c0

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v0, v5, v2

    .line 664
    .local v0, curTime:J
    :goto_2
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    iput-wide v0, v5, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_1

    .line 661
    .end local v0           #curTime:J
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_2
.end method

.method private sendBookingOrder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->getTimeTemp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$11;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$11;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    invoke-static {v2, v2, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->createBookingOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 543
    return-void
.end method

.method private sendOrder(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 405
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const v2, 0x7f0b04e8

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 406
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->start()V

    .line 407
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 409
    .local v0, order:Lcom/didi/taxi/model/TaxiOrder;
    if-nez v0, :cond_0

    .line 410
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    .end local v0           #order:Lcom/didi/taxi/model/TaxiOrder;
    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 412
    .restart local v0       #order:Lcom/didi/taxi/model/TaxiOrder;
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taxiconfirm click runningflag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " It\'s booking order,oid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->sendBookingOrder()V

    .line 419
    :goto_0
    return-void

    .line 416
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taxiconfirm click runningflag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " It\'s realtime order"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->sendRealtimeOrder()V

    goto :goto_0
.end method

.method private sendRealtimeOrder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    .line 483
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->getTimeTemp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    invoke-static {v2, v2, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->createRealtimeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 512
    return-void
.end method

.method private setCarPoolTriggerState()V
    .locals 3

    .prologue
    .line 120
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 121
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v1, v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/TaxiPreferences;->isOpenShareTrip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/didi/frame/carpool/CarPoolHelper;->enableTrigger(Z)V

    .line 125
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 126
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    if-ne v1, v2, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/frame/carpool/CarPoolHelper;->setCurrentCarPoolType(I)V

    goto :goto_0
.end method

.method private setCarPoolType()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    return-void
.end method

.method private setControlPanel()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void
.end method

.method private setPalceListener()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 262
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 258
    return-void
.end method

.method private setTitleBar()V
    .locals 2

    .prologue
    .line 299
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b0281

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 300
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 301
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->isBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$6;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$6;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    goto :goto_0
.end method

.method private showCarPoolFirstGuide()V
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 134
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->hasCarPoolGuidShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/TaxiPreferences;->isOpenShareTrip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->getInstance()Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->showGuideDelay()V

    .line 138
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCarPoolGuideShown(Z)V

    goto :goto_0
.end method

.method private showIllegalAddressDialog()V
    .locals 3

    .prologue
    .line 588
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 589
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 590
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 591
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 592
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    const v2, 0x7f0b0283

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0282

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$12;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$12;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 626
    return-void
.end method

.method private showRecommandDialog()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 201
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->MICRO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 202
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 203
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 204
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    const v2, 0x7f0b028b

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b028a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0289

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$3;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$3;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 241
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 242
    return-void
.end method

.method private upLoadAddressGeo()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 110
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, fsource:Ljava/lang/String;
    const-string v1, "5"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "9"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v9

    check-cast v9, Lcom/didi/taxi/model/TaxiOrder;

    .line 115
    .local v9, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v9}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 116
    .local v0, addr:Lcom/didi/common/model/Address;
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
    .line 679
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->back()V

    .line 680
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->checkBusiness()V

    .line 96
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->setTitleBar()V

    .line 97
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->setControlPanel()V

    .line 98
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->setRedirectListener()V

    .line 99
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->setPalceListener()V

    .line 100
    invoke-static {v1}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showConfirmMapView(Z)V

    .line 101
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->carPoolTriggerInterceptedListener:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setTriggerInterceptListener(Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;)V

    .line 102
    invoke-static {v1, v1, v1}, Lcom/didi/frame/carpool/CarPoolHelper;->lockCarPoolType(ZZZ)V

    .line 103
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->setCarPoolTriggerState()V

    .line 104
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->setCarPoolType()V

    .line 105
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->upLoadAddressGeo()V

    .line 106
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 288
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 289
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->stop()V

    .line 290
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 291
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 292
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 293
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setTriggerInterceptListener(Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;)V

    .line 294
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->closeDialog()V

    .line 295
    invoke-static {}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->getInstance()Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->realease()V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 465
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 466
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$9;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 477
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 278
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 279
    const-string v0, "confirm_show_setEndpoint"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 282
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 283
    return-void
.end method

.method public redirectToSearch(Z)V
    .locals 5
    .parameter "isStart"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    .line 717
    if-eqz p1, :cond_0

    move v2, v1

    .line 718
    .local v2, type:I
    :goto_0
    if-eqz p1, :cond_1

    .line 719
    .local v1, requestCode:I
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 720
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    const-string v3, "search_extra_order_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    const-string v3, "city"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Lcom/didi/frame/MainActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 724
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_0
    move v2, v3

    .line 717
    goto :goto_0

    .restart local v2       #type:I
    :cond_1
    move v1, v3

    .line 718
    goto :goto_1
.end method
