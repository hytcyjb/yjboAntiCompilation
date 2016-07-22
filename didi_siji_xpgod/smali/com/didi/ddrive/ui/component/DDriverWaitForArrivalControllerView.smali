.class public Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;
.super Lcom/didi/common/base/BaseLayout;
.source "DDriverWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
.implements Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;
.implements Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;
.implements Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;
.implements Lcom/didi/taxi/ui/component/RedView$RedListener;
.implements Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;
.implements Lcom/didi/taxi/ui/component/ShareView$ShareListener;
.implements Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;
    }
.end annotation


# instance fields
.field private commonPushTipMessage:Ljava/lang/String;

.field private flagEvaluateStarClicked:Z

.field private mCancelTripView:Lcom/didi/ddrive/ui/component/DDriveCancelView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080362
    .end annotation
.end field

.field private mConsultView:Lcom/didi/car/ui/component/CarTimeConsultView;

.field private mCostDetailView:Lcom/didi/ddrive/ui/component/DDriveCostDetailView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08032a
    .end annotation
.end field

.field private mDriverProfile:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08035d
    .end annotation
.end field

.field private mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onEvaluateViewClicked"
        id = 0x7f080361
    .end annotation
.end field

.field private mFlipper:Lcom/didi/common/ui/component/FlipperView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080258
    .end annotation
.end field

.field private mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080363
    .end annotation
.end field

.field private mHasShowPayedView:Z

.field private mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08035e
    .end annotation
.end field

.field private mIsMapShield:Z

.field private mIsShareAvailable:Z

.field private mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

.field private mPaidView:Lcom/didi/ddrive/ui/component/DDrivePayedView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080360
    .end annotation
.end field

.field private mPopWin:Landroid/widget/PopupWindow;

.field private mRootLayout:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080256
    .end annotation
.end field

.field private mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08035f
    .end annotation
.end field

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->init()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->init()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->init()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)Lcom/didi/common/ui/component/SimpleScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)Lcom/didi/common/ui/component/FlipperView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 123
    const v0, 0x7f0b0313

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(I)V

    .line 124
    const v0, 0x7f0b030c

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleRight(I)V

    .line 125
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    const v1, 0x7f020197

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setIcon(I)V

    .line 127
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setListener(Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;)V

    .line 128
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mCostDetailView:Lcom/didi/ddrive/ui/component/DDriveCostDetailView;

    invoke-virtual {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->setListener(Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;)V

    .line 129
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->setListener(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;)V

    .line 130
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPaidView:Lcom/didi/ddrive/ui/component/DDrivePayedView;

    invoke-virtual {v0, p0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->setListener(Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;)V

    .line 133
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setListener(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;)V

    .line 134
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setVisibility(I)V

    .line 135
    return-void
.end method

.method private setTitle(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 139
    return-void
.end method

.method private showOtherView(Landroid/view/View;Z)V
    .locals 3
    .parameter "contentView"
    .parameter "touchable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 638
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, v1, v1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 639
    .local v0, pop:Landroid/widget/PopupWindow;
    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 640
    const/16 v1, 0x50

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 641
    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    .line 642
    return-void
.end method


# virtual methods
.method public closePopWin()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    .line 649
    :cond_0
    return-void
.end method

.method public getCommonPushTipMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneLinkify(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 7
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 608
    sget-object v5, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 609
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 610
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 611
    .local v4, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 613
    .local v0, end:I
    sub-int v5, v0, v4

    const/4 v6, 0x5

    if-gt v5, v6, :cond_1

    .line 625
    .end local v0           #end:I
    .end local v4           #start:I
    :cond_0
    :goto_0
    return-object v3

    .line 617
    .restart local v0       #end:I
    .restart local v4       #start:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, number:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 621
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 622
    .local v3, ss:Landroid/text/SpannableString;
    new-instance v5, Lcom/didi/car/ui/component/PhoneSpan;

    iget-object v6, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-direct {v5, v2, v6}, Lcom/didi/car/ui/component/PhoneSpan;-><init>(Ljava/lang/String;Lcom/didi/common/ui/component/FlipperView;)V

    const/16 v6, 0x21

    invoke-virtual {v3, v5, v4, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public hideCancelTripView()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/ddrive/ui/component/DDriveCancelView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 545
    return-void
.end method

.method public hideFoodGameArea()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideFoodArea()V

    .line 634
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideGameArea()V

    .line 635
    return-void
.end method

.method public hideOpHomeTips()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 630
    return-void
.end method

.method public hideTitleLeft()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 167
    return-void
.end method

.method public isFlagEvaluateStarClicked()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    return v0
.end method

.method public onCancelTripConfirmed()V
    .locals 1

    .prologue
    .line 374
    const v0, 0x7f0b026e

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleRight(I)V

    .line 375
    return-void
.end method

.method public onConsultSubmitSucceed()V
    .locals 1

    .prologue
    .line 378
    const v0, 0x7f0b030c

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleRight(I)V

    .line 379
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->closePopWin()V

    .line 380
    return-void
.end method

.method public onCostDetailCouponsClicked(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onCostDetailCouponsClicked(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public onCostDetailInstructionClicked()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onCostDetailInstructionClicked()V

    .line 235
    return-void
.end method

.method public onCostDetailPayClicked()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onCostDetailPayClicked()V

    .line 230
    return-void
.end method

.method public onCostDetailPayTypeChecked()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onCostDetailPayTypeChecked()V

    .line 681
    return-void
.end method

.method public onDriverLateBillingStarted()V
    .locals 1

    .prologue
    .line 465
    const v0, 0x7f0b0572

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(I)V

    .line 466
    return-void
.end method

.method public onEvaluateEditShown()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onEvaluateEditShown()V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->hideOpHomeTips()V

    .line 309
    return-void
.end method

.method public onEvaluateFinishShown()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onEvaluateFinishShown()V

    .line 301
    :cond_0
    return-void
.end method

.method public onEvaluateShown()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onEvaluateShown()V

    .line 294
    :cond_0
    return-void
.end method

.method public onEvaluateStarClicked()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SimpleScrollView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->setTag(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    const v1, 0x7f080361

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SimpleScrollView;->moveChildToTop(I)V

    .line 276
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    new-instance v1, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$3;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$3;-><init>(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SimpleScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 285
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onEvaluateStarClicked()V

    goto :goto_0
.end method

.method public onEvaluateSubmitClicked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "content"
    .parameter "level"
    .parameter "types"
    .parameter "typeText"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onEvaluateSubmitClicked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onEvaluateSubmitSuccessed()V
    .locals 3

    .prologue
    .line 441
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getOrder()Lcom/didi/ddrive/model/DDriveOrder;

    move-result-object v0

    .line 443
    .local v0, order:Lcom/didi/ddrive/model/DDriveOrder;
    if-eqz v0, :cond_0

    .line 444
    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/ddrive/model/DDriveOrder;->evaluateMark:I

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/SimpleScrollView;->moveBack()V

    .line 448
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->showEvaluatedView()V

    .line 450
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    new-instance v2, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$5;

    invoke-direct {v2, p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$5;-><init>(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)V

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/SimpleScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 462
    return-void
.end method

.method public onEvaluateViewClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->isEvaluating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onEvaluatingViewClicked()V

    .line 255
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->showEvaluateView()V

    .line 257
    :cond_0
    return-void
.end method

.method public onEvaluatingBackClicked()V
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getOrder()Lcom/didi/ddrive/model/DDriveOrder;

    move-result-object v0

    .line 416
    .local v0, order:Lcom/didi/ddrive/model/DDriveOrder;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/didi/ddrive/model/DDriveOrder;->evaluateMark:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->onHomeClicked(Landroid/view/View;)V

    .line 437
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/SimpleScrollView;->moveBack()V

    .line 421
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->showEvaluateView()V

    .line 423
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    new-instance v2, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$4;

    invoke-direct {v2, p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$4;-><init>(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)V

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/SimpleScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    goto :goto_0
.end method

.method public onFooterArrivalClicked()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onFooterArrivalClicked()V

    .line 329
    return-void
.end method

.method public onFooterCloseClicked()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onFooterCloseClicked()V

    .line 334
    return-void
.end method

.method public onFooterFoundClicked()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onFooterFoundClicked()V

    .line 319
    return-void
.end method

.method public onFooterHomeClicked()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onFooterHomeClicked()V

    .line 344
    return-void
.end method

.method public onFooterOpClicked()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onFooterOpClicked()V

    .line 339
    return-void
.end method

.method public onFooterPayClicked()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onFooterPayClicked()V

    .line 324
    return-void
.end method

.method public onFooterQuestionClicked()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public onInfoImageClicked(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 1
    .parameter "snsConfig"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onInfoImageClicked(Lcom/didi/car/model/CarSNSConfig;)V

    .line 225
    return-void
.end method

.method public onInfoTellClicked(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 1
    .parameter "snsConfig"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onInfoTellClicked(Lcom/didi/car/model/CarSNSConfig;)V

    .line 220
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f030099

    return v0
.end method

.method public onItemTypeChecked(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onItemTypeChecked(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public onPaidApplyRefund()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onPaidApplyRefund()V

    .line 691
    return-void
.end method

.method public onPaidCostDetailClicked()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onPaidCostDetailClicked()V

    .line 240
    return-void
.end method

.method public onPaidInvoiceClicked()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onPaidInvoiceClicked()V

    .line 245
    return-void
.end method

.method public onPaidPayClicked()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onPaidPayClicked()V

    .line 250
    return-void
.end method

.method public onRedClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->closePopWin()V

    .line 359
    return-void
.end method

.method public onSelect(ILjava/lang/Object;)V
    .locals 1
    .parameter "position"
    .parameter "o"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1, p2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onSelect(ILjava/lang/Object;)V

    .line 654
    return-void
.end method

.method public onShareClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->closePopWin()V

    .line 364
    return-void
.end method

.method public onStartBilling()V
    .locals 1

    .prologue
    .line 369
    const v0, 0x7f0b0571

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(I)V

    .line 370
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleRight(I)V

    .line 371
    return-void
.end method

.method public onTimeConsultNoClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onTimeConsultNoClicked(Landroid/view/View;)V

    .line 349
    return-void
.end method

.method public onTimeConsultYesClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onTimeConsultYesClicked(Landroid/view/View;)V

    .line 354
    return-void
.end method

.method public onTitleLeftClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onTitleLeftClicked(Landroid/view/View;)V

    .line 211
    return-void
.end method

.method public onTitleRightClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;->onTitleRightClicked(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method public refreshOpHomeTips(Z)V
    .locals 3
    .parameter "isShareAvailable"

    .prologue
    .line 407
    const-string v0, "morning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshOpHomeTips"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iput-boolean p1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsShareAvailable:Z

    .line 409
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mHasShowPayedView:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showOpHomeTips()V

    .line 412
    :cond_0
    return-void
.end method

.method public setCommonPushTipMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "commonPushTipMessage"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setDriver(Lcom/didi/ddrive/net/http/response/DriverBriefInfo;)V
    .locals 1
    .parameter "driver"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mDriverProfile:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->setDriver(Lcom/didi/ddrive/net/http/response/DriverBriefInfo;)V

    .line 182
    return-void
.end method

.method public setFlagEvaluateStarClicked(Z)V
    .locals 0
    .parameter "flagEvaluateStarClicked"

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    .line 265
    return-void
.end method

.method public setFromHistory(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mDriverProfile:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->setFromHistory(Z)V

    .line 178
    return-void
.end method

.method public setListener(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;

    .line 171
    return-void
.end method

.method public setOrder(Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 1
    .parameter "order"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->setOrder(Lcom/didi/ddrive/model/DDriveOrder;)V

    .line 207
    return-void
.end method

.method public setShare(Ljava/lang/String;)V
    .locals 1
    .parameter "shareContent"

    .prologue
    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setTitleLeft()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    new-instance v1, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$2;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method public setTitleRight(I)V
    .locals 2
    .parameter "textId"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    new-instance v1, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$1;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$1;-><init>(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)V

    invoke-virtual {v0, p1, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method public setTripCancel(Z)V
    .locals 1
    .parameter "tripCancel"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mDriverProfile:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->setTripCancel(Z)V

    .line 186
    return-void
.end method

.method public showCancelTripView(I)V
    .locals 2
    .parameter "textId"

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, text:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cancelTripText"
    .parameter "feedbackText"

    .prologue
    const/4 v2, 0x1

    .line 523
    const v0, 0x7f0b013a

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(I)V

    .line 524
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 525
    invoke-static {p2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/ddrive/ui/component/DDriveCancelView;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveCancelView;->setCancelTripText(Ljava/lang/String;)V

    .line 530
    :goto_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v1, 0x7f08035f

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 531
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/ddrive/ui/component/DDriveCancelView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 533
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPaidView:Lcom/didi/ddrive/ui/component/DDrivePayedView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 534
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 536
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsMapShield:Z

    if-nez v0, :cond_0

    .line 537
    iput-boolean v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsMapShield:Z

    .line 538
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 539
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->setBackgroundColor(I)V

    .line 541
    :cond_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/ddrive/ui/component/DDriveCancelView;

    invoke-virtual {v0, p1, p2}, Lcom/didi/ddrive/ui/component/DDriveCancelView;->setCancelTripText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCostDetailView(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/model/OrderState;)V
    .locals 3
    .parameter "bill"
    .parameter "currentState"

    .prologue
    const/4 v2, 0x1

    .line 469
    const v0, 0x7f0b0150

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(I)V

    .line 470
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleRight(I)V

    .line 472
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mCostDetailView:Lcom/didi/ddrive/ui/component/DDriveCostDetailView;

    invoke-virtual {v0, p1, p2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->setOrderTotalCount(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/model/OrderState;)V

    .line 474
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsMapShield:Z

    if-nez v0, :cond_0

    .line 475
    iput-boolean v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsMapShield:Z

    .line 476
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 477
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->setBackgroundColor(I)V

    .line 480
    :cond_0
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$6;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$6;-><init>(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lutil/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    return-void
.end method

.method public showDrawerView(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v1, 0x7f08035e

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 592
    return-void
.end method

.method public showHomeTip()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 582
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideFoodArea()V

    .line 583
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideGameArea()V

    .line 584
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setHomeEnable(Z)V

    .line 585
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showHomeTip()V

    .line 586
    return-void
.end method

.method public showOpHomeTips()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 561
    const-string v0, "morning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOpHomeTips is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsShareAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideFoodArea()V

    .line 563
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideGameArea()V

    .line 564
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 565
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsShareAvailable:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->enableOpDDriveShareCouponHomeTips()V

    .line 567
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showOpShareCouponHomeTips()V

    .line 568
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setOpEnable(Z)V

    .line 577
    :goto_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideOpQuestion()V

    .line 578
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setOpEnable(Z)V

    .line 573
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setHomeEnable(Z)V

    .line 574
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setOpShareCouponEnable(Z)V

    goto :goto_0
.end method

.method public showPaidCancelTripView(ID)V
    .locals 4
    .parameter "cancelTripTextId"
    .parameter "paid"

    .prologue
    .line 548
    double-to-float v2, p2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(F)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, text:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPaidView:Lcom/didi/ddrive/ui/component/DDrivePayedView;

    const v3, 0x7f0b01be

    invoke-virtual {v2, v3, v1}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->showPaidSuccessView(ILjava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPaidView:Lcom/didi/ddrive/ui/component/DDrivePayedView;

    invoke-virtual {p0, v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 553
    return-void
.end method

.method public showPayedView(DZ)V
    .locals 5
    .parameter "payedFee"
    .parameter "isShareAvailable"

    .prologue
    const/4 v3, 0x1

    .line 383
    iput-boolean p3, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsShareAvailable:Z

    .line 384
    iput-boolean v3, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mHasShowPayedView:Z

    .line 385
    const v2, 0x7f0b0574

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(I)V

    .line 386
    iget-boolean v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsMapShield:Z

    if-nez v2, :cond_0

    .line 387
    iput-boolean v3, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mIsMapShield:Z

    .line 388
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 389
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/component/FlipperView;->setBackgroundColor(I)V

    .line 392
    :cond_0
    const v0, 0x7f08035f

    .line 394
    .local v0, curId:I
    double-to-float v2, p1

    invoke-static {v2}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(F)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v2}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v2}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v2, v0}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 398
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPaidView:Lcom/didi/ddrive/ui/component/DDrivePayedView;

    invoke-virtual {v2, v1}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->showPaidSuccessView(Ljava/lang/String;)V

    .line 403
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showOpHomeTips()V

    .line 404
    return-void

    .line 399
    :cond_3
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v2}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 400
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPaidView:Lcom/didi/ddrive/ui/component/DDrivePayedView;

    invoke-virtual {v2, v1}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->showPaidSuccessView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showPhoneDrawerView(Ljava/lang/String;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 595
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->ToDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, after:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setMobileMsg(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getPhoneLinkify(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 598
    .local v1, ss:Landroid/text/SpannableString;
    if-nez v1, :cond_0

    .line 599
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    .line 603
    :goto_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v3, 0x7f08035e

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 604
    return-void

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showShareTicketView(Lcom/didi/car/model/CarShareCouponInfo;)V
    .locals 3
    .parameter "shareCouponInfo"

    .prologue
    .line 510
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    new-instance v0, Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    .line 514
    .local v0, rv:Lcom/didi/taxi/ui/component/ShareView;
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;->setBackgroundColor(I)V

    .line 515
    invoke-virtual {v0, p0}, Lcom/didi/taxi/ui/component/ShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 516
    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/ShareView;->setShare(Lcom/didi/car/model/CarShareCouponInfo;)V

    .line 517
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 519
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showOtherView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public showShareView(Lcom/didi/car/model/CarPayShare;)V
    .locals 3
    .parameter "payShare"

    .prologue
    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarWait showShareView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPopWin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarWait showShareView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPopWin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 493
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    new-instance v0, Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    .line 497
    .local v0, s:Lcom/didi/taxi/ui/component/ShareView;
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;->setBackgroundColor(I)V

    .line 498
    invoke-virtual {v0, p0}, Lcom/didi/taxi/ui/component/ShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 499
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/didi/taxi/ui/component/ShareView;->setShare(Lcom/didi/car/model/CarPayShare;Landroid/content/Context;)V

    .line 500
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 502
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showOtherView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public updatePayBtn(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V
    .locals 1
    .parameter "orderBill"
    .parameter "payChannel"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->mCostDetailView:Lcom/didi/ddrive/ui/component/DDriveCostDetailView;

    invoke-virtual {v0, p1, p2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->updatePayBtnInformation(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V

    .line 658
    return-void
.end method
