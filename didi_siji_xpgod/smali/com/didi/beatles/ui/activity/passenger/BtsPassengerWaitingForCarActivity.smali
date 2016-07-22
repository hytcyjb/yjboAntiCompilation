.class public Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsPassengerWaitingForCarActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BtsPassengerWaitingForCarActivity"


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private che_num_tips:Landroid/widget/TextView;

.field isFristSet:Z

.field lastNum:Ljava/lang/Integer;

.field last_left:I

.field private locker:Z

.field private mButton:Landroid/widget/Button;

.field private mContinueLooping:Z

.field private mDay:Landroid/widget/TextView;

.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mDriverNumQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFee:Landroid/widget/TextView;

.field private mFrom:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHour:Landroid/widget/TextView;

.field private mInsideCircle:Lcom/didi/beatles/ui/component/BtsCircleProgressView;

.field private mLoadingLayout:Landroid/view/View;

.field private mNoDriverAccept:Landroid/view/View;

.field mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

.field private mOrderId:Ljava/lang/String;

.field private mOutsideCircle:Landroid/widget/ImageView;

.field private mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mTipsTv2:Lcom/didi/common/richtextview/RichTextView;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field private mTo:Landroid/widget/TextView;

.field private net_error_layout:Landroid/view/View;

.field private reloadOrderListener:Landroid/view/View$OnClickListener;

.field private resentOrderListener:Landroid/view/View$OnClickListener;

.field private rightButtonListener:Landroid/view/View$OnClickListener;

.field private time_left_tips:Landroid/widget/TextView;

.field totalMinute:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDriverNumQueue:Ljava/util/Queue;

    .line 222
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->totalMinute:F

    .line 223
    iput-boolean v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFristSet:Z

    .line 270
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->reloadOrderListener:Landroid/view/View$OnClickListener;

    .line 280
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$2;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->resentOrderListener:Landroid/view/View$OnClickListener;

    .line 354
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->last_left:I

    .line 438
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->lastNum:Ljava/lang/Integer;

    .line 661
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$9;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->rightButtonListener:Landroid/view/View$OnClickListener;

    .line 673
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$10;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$10;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 684
    iput-boolean v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->locker:Z

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loadOrderInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setTimeLeft(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->checkOrderStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->showCancelOrderComfirm()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    return v0
.end method

.method static synthetic access$202(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    return p1
.end method

.method static synthetic access$300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->net_error_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->fillUI(Lcom/didi/beatles/model/order/BtsOrderPassenger;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loopingOrderInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loadDriverNumSeq()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->updateDriverNum()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDriverNumQueue:Ljava/util/Queue;

    return-object v0
.end method

.method private checkOrderStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "subSatus"

    .prologue
    const/4 v3, 0x0

    .line 505
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(Ljava/lang/String;)V

    .line 512
    iput-boolean v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    .line 513
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mNoDriverAccept:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hideRight()V

    .line 515
    new-instance v0, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v1, "BTS_ORDER_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_2
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 519
    :cond_3
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 520
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 521
    iput-boolean v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    .line 522
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->nick_name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/didi/im/db/IMDBDataHelper;->insertDriverAndPassengerSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 525
    new-instance v0, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v1, "BTS_ORDER_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->finish()V

    goto :goto_0

    .line 529
    :cond_4
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 532
    :cond_5
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 533
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 536
    :cond_6
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    const-string v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private fillUI(Lcom/didi/beatles/model/order/BtsOrderPassenger;Z)V
    .locals 2
    .parameter "order"
    .parameter "flag"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mLoadingLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->text_setup_time:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setSetUpTime(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mFrom:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setTextViewContent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setTextViewContent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 382
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mFee:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    invoke-virtual {v1}, Lcom/didi/beatles/model/order/BtsPrice;->getTotalPrice()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setTextViewContent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 386
    :cond_0
    if-eqz p2, :cond_1

    .line 387
    iget v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_driver_num:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setCheNum(Ljava/lang/Integer;)V

    .line 390
    :cond_1
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setTipsMsg(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    .line 392
    iget v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->left_minutes:I

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setTimeLeft(I)V

    .line 394
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->checkOrderStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private getOrderInfo()V
    .locals 3

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    const-string v1, ""

    new-instance v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$6;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$6;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForPassenger(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0
.end method

.method private getRotateAnimate()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 245
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOutsideCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 246
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOutsideCircle:Landroid/widget/ImageView;

    const-string v3, "rotation"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 248
    .local v0, a:Lcom/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 250
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 251
    .local v1, lir:Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 252
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 253
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 255
    return-object v0

    .line 246
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0x43t
    .end array-data
.end method

.method private initViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 190
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setTitlebar()V

    .line 192
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDay:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHour:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mFrom:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTo:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mFee:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->che_num_tips:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOutsideCircle:Landroid/widget/ImageView;

    .line 200
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mInsideCircle:Lcom/didi/beatles/ui/component/BtsCircleProgressView;

    .line 202
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/richtextview/RichTextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTipsTv2:Lcom/didi/common/richtextview/RichTextView;

    .line 203
    const v0, 0x7f080166

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->time_left_tips:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mNoDriverAccept:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mNoDriverAccept:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mButton:Landroid/widget/Button;

    .line 209
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->resentOrderListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mLoadingLayout:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->net_error_layout:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->net_error_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->net_error_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->reloadOrderListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->startRotate()V

    .line 219
    return-void
.end method

.method private loadDriverNumSeq()V
    .locals 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    invoke-static {v0, v1}, Lcom/didi/beatles/net/BtsRequest;->getDriverNumListForPassenger(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0
.end method

.method private loadOrderInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "orderId"

    .prologue
    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    .line 412
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    const-string v0, ""

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$3;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForPassenger(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 436
    return-void
.end method

.method private loopingOrderInfo()V
    .locals 3

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    const-string v1, ""

    new-instance v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForPassenger(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0
.end method

.method private parseIntent()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    move v1, v2

    .line 186
    :goto_0
    return v1

    .line 172
    :cond_0
    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .line 173
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    move v1, v3

    .line 176
    goto :goto_0

    .line 179
    :cond_1
    const-string v1, "ORDER_UI_PARAM_OID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 183
    goto :goto_0

    :cond_2
    move v1, v3

    .line 186
    goto :goto_0
.end method

.method private resume()V
    .locals 0

    .prologue
    .line 725
    return-void
.end method

.method private setCheNum(Ljava/lang/Integer;)V
    .locals 4
    .parameter "num"

    .prologue
    const/16 v1, 0x3e7

    const/4 v3, 0x0

    .line 398
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 399
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 402
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->che_num_tips:Landroid/widget/TextView;

    const-string v1, "\u5df2\u901a\u77e5{%s}\u4f4d\u8f66\u4e3b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method private setSetUpTime(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, -0x1

    .line 326
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDay:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHour:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 334
    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 335
    .local v2, pos:I
    if-eq v2, v5, :cond_0

    .line 336
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, day:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, hour:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDay:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHour:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTextViewContent(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "tv"
    .parameter "msg"

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTimeLeft(I)V
    .locals 3
    .parameter "left"

    .prologue
    .line 357
    if-gtz p1, :cond_0

    .line 358
    const/4 p1, 0x0

    .line 361
    :cond_0
    iget v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->last_left:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 362
    iput p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->last_left:I

    .line 365
    :cond_1
    iget v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->last_left:I

    if-ge v0, p1, :cond_2

    .line 374
    :goto_0
    return-void

    .line 369
    :cond_2
    iput p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->last_left:I

    .line 371
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->time_left_tips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->updateProgress(I)V

    goto :goto_0
.end method

.method private setTipsMsg(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 347
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->wait_op_string2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTipsTv2:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->wait_op_string2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTipsTv2:Lcom/didi/common/richtextview/RichTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 296
    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 298
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->rightButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->show(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method private showCancelOrderComfirm()V
    .locals 3

    .prologue
    .line 605
    const-string v1, "pbp1wfr01_ck"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 606
    new-instance v1, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v1, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 607
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v1

    iget-object v0, v1, Lcom/didi/beatles/model/BtsConfig;->cancelStr:Ljava/lang/String;

    .line 608
    .local v0, titleContent:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const-string v0, "\u8f66\u4e3b\u5df2\u4e3a\u672c\u6b21\u51fa\u884c\u505a\u597d\u51c6\u5907\uff0c\u8bf7\u4e0eta\u8054\u7cfb\u540e\u518d\u53d6\u6d88\u54e6\uff01"

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 614
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 616
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 617
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    new-instance v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 658
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v1}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 659
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 3
    .parameter "activity"
    .parameter "order"

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 116
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    const-string v2, "order"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "orderId"

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const v2, 0x7f0b00b8

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 108
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "ORDER_UI_PARAM_OID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startRotate()V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->getRotateAnimate()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 260
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 261
    return-void
.end method

.method private stopRotate()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->cancel()V

    .line 267
    :cond_0
    return-void
.end method

.method private updateDriverNum()V
    .locals 5

    .prologue
    .line 441
    iget-boolean v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDriverNumQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 447
    .local v0, num:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->lastNum:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 449
    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setCheNum(Ljava/lang/Integer;)V

    .line 451
    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->lastNum:Ljava/lang/Integer;

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$4;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$4;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    const-wide/16 v3, 0x9c4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateProgress(I)V
    .locals 5
    .parameter "left"

    .prologue
    .line 226
    iget-boolean v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFristSet:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->offset_time:I

    if-lez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->offset_time:I

    int-to-float v1, v1

    iput v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->totalMinute:F

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFristSet:Z

    .line 231
    :cond_0
    const-wide/high16 v1, 0x4059

    iget v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->totalMinute:F

    int-to-float v4, p1

    sub-float/2addr v3, v4

    float-to-double v3, v3

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->totalMinute:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v0, v1

    .line 232
    .local v0, ratio:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 233
    const/4 v0, 0x1

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mInsideCircle:Lcom/didi/beatles/ui/component/BtsCircleProgressView;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->setProgress(I)V

    .line 238
    if-gtz p1, :cond_2

    .line 239
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->stopRotate()V

    .line 241
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 720
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->finish()V

    .line 721
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setContentView(I)V

    .line 133
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->parseIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->finish()V

    .line 153
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->initViews()V

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHandler:Landroid/os/Handler;

    .line 143
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loadOrderInfo(Ljava/lang/String;)V

    .line 152
    :goto_1
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrder:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->fillUI(Lcom/didi/beatles/model/order/BtsOrderPassenger;Z)V

    .line 147
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loopingOrderInfo()V

    .line 148
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loadDriverNumSeq()V

    .line 149
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->updateDriverNum()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 709
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 710
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 715
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z

    .line 716
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 689
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onPause()V

    .line 691
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 696
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onResume()V

    .line 697
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->resume()V

    .line 700
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public orderStatusEvent(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V
    .locals 2
    .parameter "btsPushOrderStatus"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "order_status"
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->getOrderInfo()V

    goto :goto_0
.end method
