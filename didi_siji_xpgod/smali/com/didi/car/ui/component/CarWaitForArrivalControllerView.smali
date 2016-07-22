.class public Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
.super Lcom/didi/common/base/BaseLayout;
.source "CarWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;
.implements Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;
.implements Lcom/didi/taxi/ui/component/RedView$RedListener;
.implements Lcom/didi/taxi/ui/component/ShareView$ShareListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;
    }
.end annotation


# instance fields
.field private commonPushTipMessage:Ljava/lang/String;

.field private flagEvaluateStarClicked:Z

.field private mCancelTripView:Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08025e
    .end annotation
.end field

.field private mConsultView:Lcom/didi/car/ui/component/CarTimeConsultView;

.field private mCostDetailView:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08025a
    .end annotation
.end field

.field private mDriverProfile:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080257
    .end annotation
.end field

.field private mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onEvaluateViewClicked"
        id = 0x7f08025d
    .end annotation
.end field

.field private mFlipper:Lcom/didi/common/ui/component/FlipperView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080258
    .end annotation
.end field

.field private mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08025f
    .end annotation
.end field

.field private mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080259
    .end annotation
.end field

.field private mIsMapShield:Z

.field private mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

.field private mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08025c
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
        id = 0x7f08025b
    .end annotation
.end field

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->init()V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->init()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->init()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)Lcom/didi/common/ui/component/SimpleScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)Lcom/didi/common/ui/component/FlipperView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 126
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 127
    const v0, 0x7f0b0238

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitle(I)V

    .line 128
    const v0, 0x7f0b0562

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitleRight(I)V

    .line 130
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setListener(Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;)V

    .line 131
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCostDetailView:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->setListener(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;)V

    .line 132
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->setListener(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;)V

    .line 133
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->setListener(Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;)V

    .line 136
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setListener(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;)V

    .line 137
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setVisibility(I)V

    .line 138
    return-void
.end method

.method private setTitle(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 142
    return-void
.end method

.method private setTitleRight(I)V
    .locals 2
    .parameter "textId"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    new-instance v1, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$1;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$1;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)V

    invoke-virtual {v0, p1, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method private showOtherBottomView(Landroid/view/View;)V
    .locals 4
    .parameter "contentView"

    .prologue
    const/4 v3, 0x0

    .line 784
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 785
    .local v0, pop:Landroid/widget/PopupWindow;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 786
    const/16 v1, 0x50

    invoke-virtual {v0, p0, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 787
    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    .line 788
    return-void
.end method

.method private showOtherView(Landroid/view/View;Z)V
    .locals 3
    .parameter "contentView"
    .parameter "touchable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 777
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, v1, v1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 778
    .local v0, pop:Landroid/widget/PopupWindow;
    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 779
    const/16 v1, 0x50

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 780
    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    .line 781
    return-void
.end method


# virtual methods
.method public closePopWin()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    .line 795
    :cond_0
    return-void
.end method

.method public getCommonPushTipMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPayMentMode()I
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCostDetailView:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCostDetailView:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getPayMentMode()I

    move-result v0

    .line 801
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneLinkify(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 7
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 752
    sget-object v5, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 753
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 754
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 755
    .local v4, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 757
    .local v0, end:I
    sub-int v5, v0, v4

    const/4 v6, 0x5

    if-gt v5, v6, :cond_1

    .line 769
    .end local v0           #end:I
    .end local v4           #start:I
    :cond_0
    :goto_0
    return-object v3

    .line 761
    .restart local v0       #end:I
    .restart local v4       #start:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 763
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

    .line 765
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 766
    .local v3, ss:Landroid/text/SpannableString;
    new-instance v5, Lcom/didi/car/ui/component/PhoneSpan;

    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-direct {v5, v2, v6}, Lcom/didi/car/ui/component/PhoneSpan;-><init>(Ljava/lang/String;Lcom/didi/common/ui/component/FlipperView;)V

    const/16 v6, 0x21

    invoke-virtual {v3, v5, v4, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public handleRefundView(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {v0, v2, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showRefundLayout(IZ)V

    .line 458
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->updateRefundImg(I)V

    .line 465
    :goto_0
    return-void

    .line 459
    :cond_0
    if-ne v1, p1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {v0, v2, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showRefundLayout(IZ)V

    .line 461
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->updateRefundImg(I)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showRefundLayout(IZ)V

    goto :goto_0
.end method

.method public hideCancelTripView()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 641
    return-void
.end method

.method public hideOpHomeTips()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 774
    return-void
.end method

.method public hideTitleLeft()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 170
    return-void
.end method

.method public isFlagEvaluateStarClicked()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    return v0
.end method

.method public onCancelTripConfirmed()V
    .locals 1

    .prologue
    .line 421
    const v0, 0x7f0b026e

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitleRight(I)V

    .line 422
    return-void
.end method

.method public onConsultSubmitSucceed()V
    .locals 1

    .prologue
    .line 425
    const v0, 0x7f0b0562

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitleRight(I)V

    .line 426
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->closePopWin()V

    .line 427
    return-void
.end method

.method public onCoseDetailInstructionClicked()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onCoseDetailInstructionClicked()V

    .line 284
    return-void
.end method

.method public onCostDetailCouponsClicked(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onCostDetailCouponsClicked(Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public onCostDetailPayClicked()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onCostDetailPayClicked()V

    .line 279
    return-void
.end method

.method public onDriverLateBillingStarted()V
    .locals 1

    .prologue
    .line 520
    const v0, 0x7f0b0572

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitle(I)V

    .line 521
    return-void
.end method

.method public onEvaluateEditShown()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onEvaluateEditShown()V

    .line 351
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hideOpHomeTips()V

    .line 352
    return-void
.end method

.method public onEvaluateFinishShown()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onEvaluateFinishShown()V

    .line 346
    return-void
.end method

.method public onEvaluateShown()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onEvaluateShown()V

    .line 341
    return-void
.end method

.method public onEvaluateStarClicked()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SimpleScrollView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->setTag(Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    const v1, 0x7f08025d

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SimpleScrollView;->moveChildToTop(I)V

    .line 325
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    new-instance v1, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$3;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$3;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SimpleScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 334
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onEvaluateStarClicked()V

    goto :goto_0
.end method

.method public onEvaluateSubmitClicked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "content"
    .parameter "level"
    .parameter "types"
    .parameter "typeText"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onEvaluateSubmitClicked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public onEvaluateSubmitSuccessed()V
    .locals 3

    .prologue
    .line 497
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->getOrder()Lcom/didi/car/model/CarOrder;

    move-result-object v0

    .line 499
    .local v0, order:Lcom/didi/car/model/CarOrder;
    if-eqz v0, :cond_0

    .line 500
    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/car/model/CarOrder;->evaluateMark:I

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/SimpleScrollView;->moveBack()V

    .line 504
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->showEvaluatedView()V

    .line 506
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    new-instance v2, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$5;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$5;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)V

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/SimpleScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 517
    return-void
.end method

.method public onEvaluateViewClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->isEvaluating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onEvaluatingViewClicked()V

    .line 304
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->showEvaluateView()V

    .line 306
    :cond_0
    return-void
.end method

.method public onEvaluatingBackClicked()V
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->getOrder()Lcom/didi/car/model/CarOrder;

    move-result-object v0

    .line 473
    .local v0, order:Lcom/didi/car/model/CarOrder;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/didi/car/model/CarOrder;->evaluateMark:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->onHomeClicked(Landroid/view/View;)V

    .line 493
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/SimpleScrollView;->moveBack()V

    .line 478
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->showEvaluateView()V

    .line 480
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mScrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    new-instance v2, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$4;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$4;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)V

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/SimpleScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    goto :goto_0
.end method

.method public onFooterArrivalClicked()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onFooterArrivalClicked()V

    .line 372
    return-void
.end method

.method public onFooterCloseClicked()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onFooterCloseClicked()V

    .line 377
    return-void
.end method

.method public onFooterFoundClicked()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onFooterFoundClicked()V

    .line 362
    return-void
.end method

.method public onFooterHomeClicked()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onFooterHomeClicked()V

    .line 387
    return-void
.end method

.method public onFooterOpClicked()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onFooterOpClicked()V

    .line 382
    return-void
.end method

.method public onFooterPayClicked()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onFooterPayClicked()V

    .line 367
    return-void
.end method

.method public onFooterQuestionClicked()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onFooterQuestionClicked()V

    .line 392
    return-void
.end method

.method public onInfoImageClicked(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 1
    .parameter "snsConfig"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onInfoImageClicked(Lcom/didi/car/model/CarSNSConfig;)V

    .line 274
    return-void
.end method

.method public onInfoTellClicked(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 1
    .parameter "snsConfig"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onInfoTellClicked(Lcom/didi/car/model/CarSNSConfig;)V

    .line 269
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f03006a

    return v0
.end method

.method public onItemTypeChecked(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onItemTypeChecked(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public onPaidApplyRefund()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onPaidApplyRefund()V

    .line 849
    return-void
.end method

.method public onPaidCostDetailClicked()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onPaidCostDetailClicked()V

    .line 289
    return-void
.end method

.method public onPaidInvoiceClicked()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onPaidInvoiceClicked()V

    .line 294
    return-void
.end method

.method public onPaidPayClicked()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onPaidPayClicked()V

    .line 299
    return-void
.end method

.method public onPaySucceed(Lcom/didi/car/model/CarOrder;Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/model/CarWxAgentPayStatus;)V
    .locals 4
    .parameter "order"
    .parameter "paid"
    .parameter "payType"
    .parameter "payStatus"

    .prologue
    const/4 v2, 0x1

    .line 430
    const v1, 0x7f0b0574

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitle(I)V

    .line 431
    iget-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mIsMapShield:Z

    if-nez v1, :cond_0

    .line 432
    iput-boolean v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mIsMapShield:Z

    .line 433
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 434
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/FlipperView;->setBackgroundColor(I)V

    .line 437
    :cond_0
    const v0, 0x7f08025b

    .line 439
    .local v0, curId:I
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v1, v0}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 441
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget v1, v1, Lcom/didi/car/model/CarRefund;->refundStatus:I

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->handleRefundView(I)V

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {v1, p2, p3, p4}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidSuccessView(Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 452
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showOpHomeTips()V

    .line 453
    return-void

    .line 445
    :cond_4
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 446
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    if-eqz v1, :cond_5

    .line 447
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget v1, v1, Lcom/didi/car/model/CarRefund;->refundStatus:I

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->handleRefundView(I)V

    .line 449
    :cond_5
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {v1, p2, p3, p4}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidSuccessView(Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    goto :goto_0
.end method

.method public onPayTypeItemClicked(II)V
    .locals 1
    .parameter "type"
    .parameter "paymentMode"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onPayTypeItemClicked(II)V

    .line 844
    return-void
.end method

.method public onPayUpdateView(Lcom/didi/car/model/CarWxAgentPayStatus;)V
    .locals 1
    .parameter "payStatus"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidUpdateView(Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 469
    return-void
.end method

.method public onRedClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->closePopWin()V

    .line 407
    return-void
.end method

.method public onShareClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->closePopWin()V

    .line 412
    return-void
.end method

.method public onStartBilling()V
    .locals 1

    .prologue
    .line 417
    const v0, 0x7f0b0571

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitle(I)V

    .line 418
    return-void
.end method

.method public onTimeConsultNoClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onTimeConsultNoClicked(Landroid/view/View;)V

    .line 397
    return-void
.end method

.method public onTimeConsultYesClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onTimeConsultYesClicked(Landroid/view/View;)V

    .line 402
    return-void
.end method

.method public onTitleLeftClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onTitleLeftClicked(Landroid/view/View;)V

    .line 260
    return-void
.end method

.method public onTitleRightClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onTitleRightClicked(Landroid/view/View;)V

    .line 264
    return-void
.end method

.method public setCarShare(Ljava/lang/String;Lcom/didi/car/model/CarSNSConfig;)V
    .locals 4
    .parameter "orderId"
    .parameter "carSnsConfig"

    .prologue
    .line 217
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v3, 0x7f080259

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 221
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    .line 223
    .local v0, defaultContent:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/didi/car/model/CarSNSConfig;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v1, p2, Lcom/didi/car/model/CarSNSConfig;->detail:Ljava/lang/String;

    .line 235
    .local v1, shareContent:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    move-object v1, v0

    .line 239
    :cond_3
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setSNSConfig(Lcom/didi/car/model/CarSNSConfig;)V

    .line 240
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showCarDrawer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCommonPushTipMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "commonPushTipMessage"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->commonPushTipMessage:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setDriver(Lcom/didi/car/model/CarDriver;)V
    .locals 1
    .parameter "driver"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mDriverProfile:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->setDriver(Lcom/didi/car/model/CarDriver;)V

    .line 185
    return-void
.end method

.method public setFlagEvaluateStarClicked(Z)V
    .locals 0
    .parameter "flagEvaluateStarClicked"

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->flagEvaluateStarClicked:Z

    .line 314
    return-void
.end method

.method public setFromHistory(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mDriverProfile:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->setFromHistory(Z)V

    .line 181
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    .line 174
    return-void
.end method

.method public setOrder(Lcom/didi/car/model/CarOrder;)V
    .locals 1
    .parameter "order"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->setOrder(Lcom/didi/car/model/CarOrder;)V

    .line 256
    return-void
.end method

.method public setShare(Lcom/didi/common/model/SNSConfig;)V
    .locals 4
    .parameter "snsConfig"

    .prologue
    .line 196
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v3, 0x7f080259

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 198
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, defaultContent:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/didi/common/model/SNSConfig;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p1, Lcom/didi/common/model/SNSConfig;->detail:Ljava/lang/String;

    .line 208
    .local v1, shareContent:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    move-object v1, v0

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setShare(Ljava/lang/String;)V
    .locals 1
    .parameter "shareContent"

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public setTitleLeft()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    new-instance v1, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$2;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$2;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method public showCancelTripView(I)V
    .locals 2
    .parameter "textId"

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, text:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public showCancelTripView(Lcom/didi/car/model/CarCancelTrip;)V
    .locals 3
    .parameter "cancelTrip"

    .prologue
    const/4 v2, 0x1

    .line 644
    const v0, 0x7f0b0574

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitle(I)V

    .line 645
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 646
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->setCancelTrip(Lcom/didi/car/model/CarCancelTrip;)V

    .line 648
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v1, 0x7f08025b

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 649
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 650
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showHomeTip()V

    .line 651
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 652
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 654
    iget-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mIsMapShield:Z

    if-nez v0, :cond_0

    .line 655
    iput-boolean v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mIsMapShield:Z

    .line 656
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 657
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->setBackgroundColor(I)V

    .line 659
    :cond_0
    return-void
.end method

.method public showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cancelTripText"
    .parameter "feedbackText"

    .prologue
    const/4 v2, 0x1

    .line 619
    const v0, 0x7f0b0574

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitle(I)V

    .line 620
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 621
    invoke-static {p2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->setCancelTripText(Ljava/lang/String;)V

    .line 626
    :goto_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v1, 0x7f08025b

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 627
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 628
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showHomeTip()V

    .line 629
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 630
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 632
    iget-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mIsMapShield:Z

    if-nez v0, :cond_0

    .line 633
    iput-boolean v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mIsMapShield:Z

    .line 634
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 635
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->setBackgroundColor(I)V

    .line 637
    :cond_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCancelTripView:Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;

    invoke-virtual {v0, p1, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->setCancelTripText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCostDetailView(Lcom/didi/car/model/CarVoucherInfo;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCostDetailView:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updateCarOrderTotalCount(Lcom/didi/car/model/CarVoucherInfo;)V

    .line 810
    return-void
.end method

.method public showDrawerView(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v1, 0x7f080259

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 736
    return-void
.end method

.method public showHomeTip()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 726
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideFoodArea()V

    .line 727
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideGameArea()V

    .line 728
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setHomeEnable(Z)V

    .line 729
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showHomeTip()V

    .line 730
    return-void
.end method

.method public showOpHomeTips()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 684
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideFoodArea()V

    .line 685
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideGameArea()V

    .line 686
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {p0, v5}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 687
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarOrder;

    .line 688
    .local v2, order:Lcom/didi/car/model/CarOrder;
    iget-object v3, v2, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 689
    .local v3, payResult:Lcom/didi/car/model/CarPayResult;
    if-eqz v3, :cond_5

    .line 690
    iget-object v1, v3, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    .line 691
    .local v1, couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    if-eqz v1, :cond_4

    .line 692
    iget v5, v1, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v7, v5, :cond_0

    iget v5, v1, Lcom/didi/car/model/CarShareCouponInfo;->pinkOpen:I

    if-eq v7, v5, :cond_1

    :cond_0
    const/4 v5, 0x2

    iget v6, v1, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v5, v6, :cond_2

    iget v5, v1, Lcom/didi/car/model/CarShareCouponInfo;->displayCoupon:I

    if-ne v7, v5, :cond_2

    .line 694
    :cond_1
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    iget v6, v1, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    invoke-virtual {v5, v6}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->enableOpShareCouponHomeTips(I)V

    .line 695
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showOpShareCouponHomeTips()V

    .line 697
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5, v8}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setOpEnable(Z)V

    .line 703
    :goto_0
    iget v4, v1, Lcom/didi/car/model/CarShareCouponInfo;->isDonate:I

    .line 704
    .local v4, showDonate:I
    if-ne v7, v4, :cond_3

    .line 705
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5, v7}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setBottomTipEnable(Z)V

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v0, contentBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/didi/car/model/CarShareCouponInfo;->getDonateTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/didi/car/model/CarShareCouponInfo;->getDonateContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v1}, Lcom/didi/car/model/CarShareCouponInfo;->getDonateLogoUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->updateBottomEventsTip(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .end local v0           #contentBuilder:Ljava/lang/StringBuilder;
    .end local v1           #couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    .end local v4           #showDonate:I
    :goto_1
    return-void

    .line 699
    .restart local v1       #couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    :cond_2
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->enableOpHomeTips()V

    .line 700
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showOpHomeTips()V

    goto :goto_0

    .line 710
    .restart local v4       #showDonate:I
    :cond_3
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5, v8}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setBottomTipEnable(Z)V

    goto :goto_1

    .line 713
    .end local v4           #showDonate:I
    :cond_4
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->enableOpHomeTips()V

    .line 714
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showOpHomeTips()V

    .line 715
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5, v8}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setBottomTipEnable(Z)V

    goto :goto_1

    .line 718
    .end local v1           #couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    :cond_5
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->enableOpHomeTips()V

    .line 719
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showOpHomeTips()V

    .line 720
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v5, v8}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setBottomTipEnable(Z)V

    goto :goto_1
.end method

.method public showPaidCancelTripView(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cancelTripTextId"
    .parameter "paid"
    .parameter "payType"

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0, p2, p3}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showPaidCancelTripView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public showPaidCancelTripView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cancelTripText"
    .parameter "paid"
    .parameter "payType"

    .prologue
    .line 668
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidSuccessView(Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 670
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 671
    return-void
.end method

.method public showPaidCancelTripView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cancelTripText"
    .parameter "feedbackText"
    .parameter "paid"
    .parameter "payType"

    .prologue
    .line 662
    invoke-virtual {p0, p1, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidSuccessView(Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 664
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPaidView:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 665
    return-void
.end method

.method public showPhoneDrawerView(Ljava/lang/String;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 739
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->ToDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, after:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->setMobileMsg(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getPhoneLinkify(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 742
    .local v1, ss:Landroid/text/SpannableString;
    if-nez v1, :cond_0

    .line 743
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    .line 747
    :goto_0
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v3, 0x7f080259

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 748
    return-void

    .line 745
    :cond_0
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mInfoBar:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;

    invoke-virtual {v2, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showDrawer(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showRedView(Lcom/didi/car/model/CarRedRecordInfo;)V
    .locals 3
    .parameter "red"

    .prologue
    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarWait showRedView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPopWin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarWait showRedView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPopWin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 590
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    new-instance v0, Lcom/didi/taxi/ui/component/RedView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/taxi/ui/component/RedView;-><init>(Landroid/content/Context;)V

    .line 594
    .local v0, rv:Lcom/didi/taxi/ui/component/RedView;
    invoke-virtual {v0, p0}, Lcom/didi/taxi/ui/component/RedView;->setListener(Lcom/didi/taxi/ui/component/RedView$RedListener;)V

    .line 595
    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/RedView;->setRedInfo(Lcom/didi/car/model/CarRedRecordInfo;)V

    .line 596
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 598
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showOtherView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public showShareTicketView(Lcom/didi/car/model/CarShareCouponInfo;)V
    .locals 3
    .parameter "shareCouponInfo"

    .prologue
    .line 606
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    new-instance v0, Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, rv:Lcom/didi/taxi/ui/component/ShareView;
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;->setBackgroundColor(I)V

    .line 611
    invoke-virtual {v0, p0}, Lcom/didi/taxi/ui/component/ShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 612
    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/ShareView;->setShare(Lcom/didi/car/model/CarShareCouponInfo;)V

    .line 613
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 615
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showOtherView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public showShareView(Lcom/didi/car/model/CarPayShare;)V
    .locals 3
    .parameter "payShare"

    .prologue
    .line 572
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

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 573
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

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 574
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    new-instance v0, Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    .line 578
    .local v0, s:Lcom/didi/taxi/ui/component/ShareView;
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;->setBackgroundColor(I)V

    .line 579
    invoke-virtual {v0, p0}, Lcom/didi/taxi/ui/component/ShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 580
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/didi/taxi/ui/component/ShareView;->setShare(Lcom/didi/car/model/CarPayShare;Landroid/content/Context;)V

    .line 581
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 583
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showOtherView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public showTimeConsultView(Lcom/didi/car/model/CarConsultInfo;)V
    .locals 4
    .parameter "consultInfo"

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 561
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v1}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 551
    new-instance v0, Lcom/didi/car/ui/component/CarTimeConsultView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/car/ui/component/CarTimeConsultView;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, consultView:Lcom/didi/car/ui/component/CarTimeConsultView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarTimeConsultView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarTimeConsultView;->setListener(Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;)V

    .line 554
    iget-object v1, p1, Lcom/didi/car/model/CarConsultInfo;->systemTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarTimeConsultView;->setConsultInfo(Ljava/lang/String;)V

    .line 555
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 557
    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showOtherBottomView(Landroid/view/View;)V

    .line 558
    iget-object v1, p1, Lcom/didi/car/model/CarConsultInfo;->driverTips:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showDrawerView(Ljava/lang/String;)V

    .line 559
    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mConsultView:Lcom/didi/car/ui/component/CarTimeConsultView;

    .line 560
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;

    invoke-interface {v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;->onTimeConsultViewShown()V

    goto :goto_0
.end method

.method public showdCostDetailView(Lcom/didi/car/model/FeeDetail;ZLcom/didi/car/model/CarVoucherInfo;)V
    .locals 3
    .parameter "totalCount"
    .parameter "isNewPrice"
    .parameter "voucherInfo"

    .prologue
    const/4 v2, 0x1

    .line 524
    const v0, 0x7f0b0573

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitle(I)V

    .line 525
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFooterBar:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCostDetailView:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->setCarOrderTotalCount(Lcom/didi/car/model/FeeDetail;ZLcom/didi/car/model/CarVoucherInfo;)V

    .line 528
    iget-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mIsMapShield:Z

    if-nez v0, :cond_0

    .line 529
    iput-boolean v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mIsMapShield:Z

    .line 530
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 531
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/FlipperView;->setBackgroundColor(I)V

    .line 534
    :cond_0
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$6;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$6;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lutil/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 542
    return-void
.end method

.method public updateCostDetailView(Lcom/didi/car/model/CarVoucherInfo;Lcom/didi/car/model/FeeDetail;ZZ)V
    .locals 1
    .parameter "data"
    .parameter "feeDetail"
    .parameter "isNewPrice"
    .parameter "refreshPayTypeView"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mCostDetailView:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updateCarOrderTotalCount(Lcom/didi/car/model/CarVoucherInfo;Lcom/didi/car/model/FeeDetail;ZZ)V

    .line 814
    return-void
.end method

.method public updateTimeConsultView(I)V
    .locals 3
    .parameter "times"

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mConsultView:Lcom/didi/car/ui/component/CarTimeConsultView;

    const v1, 0x7f0b0293

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarTimeConsultView;->setConsultInfo(Ljava/lang/String;)V

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->mConsultView:Lcom/didi/car/ui/component/CarTimeConsultView;

    const v1, 0x7f0b0290

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarTimeConsultView;->setConsultInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
