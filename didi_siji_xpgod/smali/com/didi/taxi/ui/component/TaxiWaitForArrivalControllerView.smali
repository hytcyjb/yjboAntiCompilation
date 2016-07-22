.class public Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;
.super Lcom/didi/common/base/BaseLayout;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;
.implements Lcom/didi/taxi/ui/component/RedView$RedListener;
.implements Lcom/didi/taxi/ui/component/ShareView$ShareListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterInterceptListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;
.implements Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;
    }
.end annotation


# instance fields
.field callListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;

.field private mContainer:Landroid/widget/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805a1
    .end annotation
.end field

.field private mDriverBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805a2
    .end annotation
.end field

.field private mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onEvaluateViewClicked"
        id = 0x7f0805a8
    .end annotation
.end field

.field private mFlipper:Lcom/didi/common/ui/component/FlipperView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080258
    .end annotation
.end field

.field private mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805a9
    .end annotation
.end field

.field private mFoundView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805a4
    .end annotation
.end field

.field private mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805a3
    .end annotation
.end field

.field private mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

.field mOP:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

.field private mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805a5
    .end annotation
.end field

.field mPayEvaluateFlag:Z

.field private mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onPayViewClicked"
        id = 0x7f0805a7
    .end annotation
.end field

.field private mPopWin:Landroid/widget/PopupWindow;

.field private mRootLayout:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08059f
    .end annotation
.end field

.field private mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805a0
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

    .line 97
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_NONE:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mOP:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    .line 185
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->callListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;

    .line 112
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->init(Landroid/content/Context;)V

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

    .line 97
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_NONE:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mOP:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    .line 185
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->callListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;

    .line 107
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->init(Landroid/content/Context;)V

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

    .line 97
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_NONE:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mOP:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    .line 185
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->callListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;

    .line 102
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->init(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleRight(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleByOrder()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/common/ui/component/FlipperView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;Lcom/didi/taxi/model/TaxiRedRecordInfo;Lcom/didi/taxi/model/TaxiPayShare;Lcom/didi/taxi/model/TaxiLove;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showOpHomeTips(Lcom/didi/taxi/model/TaxiRedRecordInfo;Lcom/didi/taxi/model/TaxiPayShare;Lcom/didi/taxi/model/TaxiLove;)V

    return-void
.end method

.method private closePopWin()V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    .line 1021
    :cond_0
    return-void
.end method

.method private enableMapView(Z)V
    .locals 3
    .parameter "disable"

    .prologue
    .line 488
    if-eqz p1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 490
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setBackgroundColor(I)V

    .line 497
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mRootLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 494
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 121
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 122
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 123
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v1}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 124
    const v1, 0x7f0b0575

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleRight(I)V

    .line 126
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mDriverBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;)V

    .line 127
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;)V

    .line 128
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;)V

    .line 129
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->setListener(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;)V

    .line 130
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;)V

    .line 131
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFoundView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;)V

    .line 132
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;)V

    .line 133
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setInterceptListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterInterceptListener;)V

    .line 137
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v1

    const/16 v2, 0x438

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v1

    const/16 v2, 0x708

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4006

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x76c

    invoke-static {v1, v2}, Lcom/didi/common/util/WindowUtil;->setViewHeight(Landroid/view/View;I)Z

    .line 141
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    const/16 v2, 0x4b0

    invoke-static {v1, v2}, Lcom/didi/common/util/WindowUtil;->setViewHeight(Landroid/view/View;I)Z

    .line 143
    :cond_0
    return-void
.end method

.method private openOptionPanel(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 521
    sget-object v2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_NONE:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    if-ne p1, v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v3, 0x7f0805a3

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 523
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mOP:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    .line 548
    :goto_0
    return-void

    .line 527
    :cond_0
    sget-object v2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_FOUND:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    if-ne p1, v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v3, 0x7f0805a4

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 529
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mOP:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    goto :goto_0

    .line 533
    :cond_1
    const/4 v1, 0x0

    .line 534
    .local v1, payVisible:I
    const/4 v0, 0x0

    .line 536
    .local v0, evaluateVisible:I
    sget-object v2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_PAY:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    if-ne p1, v2, :cond_2

    .line 537
    const/4 v0, 0x4

    .line 540
    :cond_2
    sget-object v2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_ARRIVAL:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    if-ne p1, v2, :cond_3

    .line 541
    const/16 v1, 0x8

    .line 544
    :cond_3
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v2, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->setVisibility(I)V

    .line 545
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v2, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->setVisibility(I)V

    .line 546
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    const v3, 0x7f0805a6

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/component/FlipperView;->switchToChild(I)V

    .line 547
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mOP:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    goto :goto_0
.end method

.method private setTitle(I)V
    .locals 1
    .parameter "rid"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 247
    return-void
.end method

.method private setTitleByOrder()V
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    .line 234
    .local v0, sendable:Lcom/didi/frame/Sendable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .end local v0           #sendable:Lcom/didi/frame/Sendable;
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const v1, 0x7f0b0564

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    const v1, 0x7f0b0570

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    goto :goto_0
.end method

.method private setTitleRight(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$2;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    invoke-virtual {v0, p1, v1}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method private showOpHomeTips(Lcom/didi/taxi/model/TaxiRedRecordInfo;Lcom/didi/taxi/model/TaxiPayShare;Lcom/didi/taxi/model/TaxiLove;)V
    .locals 5
    .parameter "red"
    .parameter "share"
    .parameter "love"

    .prologue
    const v4, 0x7f0b04b7

    const v3, 0x7f02031d

    const/4 v1, 0x1

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--TaxiWait showOpHomeTips:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " payshare:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lvoe:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaxiWaitForArrivalControllerView showOpHomeTips reds:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " share:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " share isnull?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " love:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 990
    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/didi/taxi/model/TaxiLove;->btnUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v0, v4, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setOpText(II)V

    .line 992
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showOpHomeTips()V

    .line 1006
    :goto_1
    return-void

    .line 984
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 994
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mIsRed:I

    if-ne v0, v1, :cond_2

    .line 995
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v0, v4, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setOpText(II)V

    .line 996
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showOpHomeTips()V

    goto :goto_1

    .line 998
    :cond_2
    if-eqz p2, :cond_3

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiWaitForArrivalControllerView  share:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showOpHomeTips()V

    goto :goto_1

    .line 1003
    :cond_3
    const-string v0, "TaxiWaitForArrivalControllerView  showHomeTip"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showHomeTip()V

    goto :goto_1
.end method

.method private showOtherBottomView(Landroid/view/View;)V
    .locals 4
    .parameter "contentView"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1009
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, v1, v1, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1011
    .local v0, pop:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1012
    const/16 v1, 0x50

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1013
    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    .line 1014
    return-void
.end method


# virtual methods
.method public enableIMView()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mDriverBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->enableIMView()V

    .line 1037
    return-void
.end method

.method public getCostDetailEnterpriseStatus()I
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getEnterpriseStatus()I

    move-result v0

    return v0
.end method

.method public getCostDetailPay()I
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getFinalPayTotal()I

    move-result v0

    return v0
.end method

.method public getCostDetailPayChannelId()I
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getPayChannelId()I

    move-result v0

    return v0
.end method

.method public getEnterpriseStatus()I
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getEnterpriseStatus()I

    move-result v0

    return v0
.end method

.method public getPaidText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getPaidText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPay()I
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getPay()I

    move-result v0

    return v0
.end method

.method public getPayChannelId()I
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getPayChannelId()I

    move-result v0

    return v0
.end method

.method public getPayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getPayText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideFooterBar()V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 1029
    return-void
.end method

.method public hideTitleLeft()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 147
    return-void
.end method

.method public invisibleIMView()V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mDriverBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->invisibleIMView()V

    .line 1033
    return-void
.end method

.method public isEnterpriseCheckedInCostDetail()Z
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->isEnterpriseChecked()Z

    move-result v0

    return v0
.end method

.method public isEnterpriseCheckedInPaying()Z
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isEnterpriseChecked()Z

    move-result v0

    return v0
.end method

.method public isPaying()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isPaying()Z

    move-result v0

    return v0
.end method

.method public loadWebUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFoundView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->loadUrl(Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public onCarPoolDetailClicked()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onCarPoolDetailClicked()V

    .line 372
    return-void
.end method

.method public onCostDetailPaySucceed(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;)V
    .locals 3
    .parameter "order"
    .parameter "paid"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 617
    invoke-virtual {p0, p1, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPaySucceed(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;)V

    .line 619
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$7;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$7;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    return-void
.end method

.method public onCostDetailReceived()V
    .locals 4

    .prologue
    .line 820
    const/4 v0, 0x0

    .line 822
    .local v0, needWait:Z
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isPaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    const/4 v0, 0x1

    .line 824
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPayingBackClicked()V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->isEvaing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    const/4 v0, 0x1

    .line 829
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onEvaluatingBackClicked()V

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 834
    new-instance v3, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$14;

    invoke-direct {v3, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$14;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x7d0

    :goto_0
    invoke-static {v3, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 841
    return-void

    .line 834
    :cond_2
    const-wide/16 v1, 0x64

    goto :goto_0
.end method

.method public onCountdownFinished()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 795
    return-void
.end method

.method public onDriverBarIMClicked()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onDriverBarIMClicked()V

    .line 266
    return-void
.end method

.method public onEnterpriseReimbursementClicked()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onEnterpriseReimbursementClicked()V

    .line 367
    return-void
.end method

.method public onEvaluateEditHidden()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onEvaluateEditHidden()V

    .line 436
    return-void
.end method

.method public onEvaluateFinishShown()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onEvaluateFinishShown()V

    .line 441
    return-void
.end method

.method public onEvaluateSubmitBtnClicked(Ljava/lang/String;I)V
    .locals 1
    .parameter "content"
    .parameter "level"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0, p1, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onEvaluateSubmitBtnClicked(Ljava/lang/String;I)V

    .line 446
    return-void
.end method

.method public onEvaluateSucceed(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayEvaluateFlag:Z

    .line 750
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->showEvaToEvaed()V

    .line 751
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$12;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$12;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 759
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$13;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;Lcom/didi/taxi/model/TaxiOrder;)V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 790
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setBackgroundColor(I)V

    .line 791
    return-void
.end method

.method public onEvaluateSucceedInPaying()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->showEvaToEvaed()V

    .line 746
    return-void
.end method

.method public onEvaluateViewClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->isEvaing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->hideInputMethod()Z

    .line 404
    :cond_0
    return-void
.end method

.method public onEvaluatingBackClicked()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->isEvaing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->moveBack()V

    .line 727
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 728
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$11;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$11;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    goto :goto_0
.end method

.method public onEvaulateEditShown()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 430
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onEvaulateEditShown()V

    .line 431
    return-void
.end method

.method public onEvaulateStarClicked()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    const v1, 0x7f0805a8

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->moveChildToTop(I)V

    .line 413
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$5;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$5;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    goto :goto_0
.end method

.method public onFooterArrivalClicked()V
    .locals 1

    .prologue
    .line 474
    const v0, 0x7f0b033d

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    .line 475
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->enableMapView(Z)V

    .line 476
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onFooterArrivalClicked()V

    .line 477
    return-void
.end method

.method public onFooterCloseClicked()V
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_NONE:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->openOptionPanel(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;)V

    .line 482
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleByOrder()V

    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->enableMapView(Z)V

    .line 484
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onFooterCloseClicked()V

    .line 485
    return-void
.end method

.method public onFooterCloseIntercepted()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFooterFoundClicked()V
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isGameShow4FootBar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onFooterFoundClicked()V

    .line 463
    return-void

    .line 459
    :cond_1
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_FOUND:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->openOptionPanel(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;)V

    .line 460
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->enableMapView(Z)V

    goto :goto_0
.end method

.method public onFooterHomeClicked()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onFooterHomeClicked()V

    .line 507
    return-void
.end method

.method public onFooterOpClicked()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onFooterOpClicked()V

    .line 502
    return-void
.end method

.method public onFooterPayClicked()V
    .locals 1

    .prologue
    .line 467
    const v0, 0x7f0b046c

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    .line 468
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->enableMapView(Z)V

    .line 469
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onFooterPayClicked()V

    .line 470
    return-void
.end method

.method public onFoundItemClicked(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onFoundItemClicked(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public onInfoImageClicked(Lcom/didi/common/model/SNSConfig;)V
    .locals 1
    .parameter "snsConfig"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onInfoImageClicked(Lcom/didi/common/model/SNSConfig;)V

    .line 276
    return-void
.end method

.method public onInfoTellClicked(Lcom/didi/common/model/SNSConfig;)V
    .locals 1
    .parameter "snsConfig"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onInfoTellClicked(Lcom/didi/common/model/SNSConfig;)V

    .line 271
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f030100

    return v0
.end method

.method public onIntegralClicked()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onIntegralClicked()V

    .line 377
    return-void
.end method

.method public onOffLinePaySucceed(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;)V
    .locals 3
    .parameter "order"
    .parameter "payCloseText"

    .prologue
    .line 691
    const v0, 0x7f0b0574

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    .line 692
    const v0, 0x7f0b0565

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleRight(I)V

    .line 694
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->hideInputMethod()Z

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->isEvaing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->hideEditLayoutView()V

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->setPayClostText(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    const v1, 0x7f0b0432

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->setPayTypeTip(I)V

    .line 704
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPayClosed(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 705
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 707
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$10;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$10;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    return-void
.end method

.method public onPassengerGotOff()V
    .locals 1

    .prologue
    .line 815
    const v0, 0x7f0b0573

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    .line 816
    const v0, 0x7f0b0565

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleRight(I)V

    .line 817
    return-void
.end method

.method public onPassengerGoton()V
    .locals 1

    .prologue
    .line 801
    const v0, 0x7f0b0571

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    .line 802
    return-void
.end method

.method public onPayClicked()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayClicked()V

    .line 352
    return-void
.end method

.method public onPayClosed(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->moveBack()V

    .line 665
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$9;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;Lcom/didi/taxi/model/TaxiOrder;)V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 687
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setBackgroundColor(I)V

    .line 688
    return-void
.end method

.method public onPayEditHidden()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayEditHidden()V

    .line 342
    return-void
.end method

.method public onPayEditShown()V
    .locals 2

    .prologue
    .line 332
    const v0, 0x7f0b0573

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    .line 334
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->setCanTouch(Z)V

    .line 335
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayEditShown()V

    .line 337
    return-void
.end method

.method public onPayFinishShown()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayFinishShown()V

    .line 347
    return-void
.end method

.method public onPayInputClicked()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    const v1, 0x7f0805c9

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->moveChildToTop(I)V

    .line 289
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$4;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    goto :goto_0
.end method

.method public onPayParamsSucceed(Lcom/didi/common/model/PayParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updateState(Lcom/didi/common/model/PayParams;)V

    .line 719
    return-void
.end method

.method public onPayRedSendClicked()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayRedSendClicked()V

    .line 397
    return-void
.end method

.method public onPayRedShown()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayRedShown()V

    .line 392
    return-void
.end method

.method public onPayShareClicked()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayShareClicked()V

    .line 382
    return-void
.end method

.method public onPayShareShown()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayShareShown()V

    .line 387
    return-void
.end method

.method public onPayShown()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayShown()V

    .line 328
    return-void
.end method

.method public onPaySubmit()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPaySubmit()V

    .line 357
    return-void
.end method

.method public onPaySucceed(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;)V
    .locals 3
    .parameter "order"
    .parameter "paid"

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--TaxiWait onPaySucceed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--TaxiWait onPaySucceed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 632
    const v0, 0x7f0b0574

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    .line 633
    const v0, 0x7f0b0565

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleRight(I)V

    .line 635
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->moveBack()V

    .line 636
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$8;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;Ljava/lang/String;Lcom/didi/taxi/model/TaxiOrder;)V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    .line 660
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setBackgroundColor(I)V

    .line 661
    return-void
.end method

.method public onPayTaxiTicketClicked()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onPayTaxiTicketClicked()V

    .line 323
    return-void
.end method

.method public onPayViewClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->hideInputMethod()Z

    .line 318
    :cond_0
    return-void
.end method

.method public onPayingBackClicked()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isPaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->moveBack()V

    .line 568
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$6;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V

    goto :goto_0
.end method

.method public onRedClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->closePopWin()V

    .line 517
    return-void
.end method

.method public onShareClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->closePopWin()V

    .line 512
    return-void
.end method

.method public onTicketCheatingFound(Z)V
    .locals 1
    .parameter "closeTicket"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->onTicketCheatingFound(Z)V

    .line 552
    return-void
.end method

.method public onTicketCheatingFoundInCostDetail(Z)V
    .locals 1
    .parameter "closeTicket"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->onTicketCheatingFound(Z)V

    .line 556
    return-void
.end method

.method public onTicketClicked()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onTicketClicked()V

    .line 362
    return-void
.end method

.method public onTitleLeftClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->hideInputMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->isEvaing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->hideInputMethod()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onTitleLeftClicked(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onTitleRightClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;->onTitleRightClicked(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method public onTripFriendGotOff()V
    .locals 1

    .prologue
    .line 808
    const v0, 0x7f0b0565

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleRight(I)V

    .line 809
    return-void
.end method

.method public openFoundWebView()V
    .locals 1

    .prologue
    .line 1149
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_FOUND:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->openOptionPanel(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;)V

    .line 1150
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->enableMapView(Z)V

    .line 1151
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFoundView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView;->loadFoundUrl()V

    .line 1152
    return-void
.end method

.method public refreshCostDetailSale()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->updateConfirmButtonErrorHandle()V

    .line 1065
    return-void
.end method

.method public refreshEnterpriseStatus()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->disableEnterprisePayIfNeed()V

    .line 1049
    return-void
.end method

.method public refreshSale()V
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale()V

    .line 1053
    return-void
.end method

.method public resetTicketState()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->resetTicketState()V

    .line 560
    return-void
.end method

.method public setDriver(Lcom/didi/taxi/model/TaxiDriver;)V
    .locals 2
    .parameter "driver"

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mDriverBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->setDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 176
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mDriverBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->callListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->setCallListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;)V

    .line 178
    :cond_0
    return-void
.end method

.method public setFromHistory(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mDriverBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->setFromHistory(Z)V

    .line 183
    return-void
.end method

.method public setIMUnRead(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mDriverBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->setIMUnRead(I)V

    .line 228
    return-void
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;

    .line 171
    return-void
.end method

.method public setOrder(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "order"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->setOrder(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 220
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->setOrder(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 221
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->setOrder(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 222
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setOrder(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 223
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleByOrder()V

    .line 224
    return-void
.end method

.method public setShare(Lcom/didi/common/model/SNSConfig;)V
    .locals 4
    .parameter "snsConfig"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, defaultContent:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/didi/common/model/SNSConfig;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-virtual {v2, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->showDrawer(Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v1, p1, Lcom/didi/common/model/SNSConfig;->title:Ljava/lang/String;

    .line 209
    .local v1, shareContent:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    move-object v1, v0

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-virtual {v2, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->setSNSConfig(Lcom/didi/common/model/SNSConfig;)V

    .line 214
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-virtual {v2, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-virtual {v2, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->showDrawer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitleLeft()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$1;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method public showArrivalView()V
    .locals 1

    .prologue
    .line 923
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_ARRIVAL:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->openOptionPanel(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;)V

    .line 924
    return-void
.end method

.method public showCostDetail(Lcom/didi/taxi/model/TaxiFeeDetail;)V
    .locals 1
    .parameter "feeDetail"

    .prologue
    .line 863
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showCostDetail(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V

    .line 864
    return-void
.end method

.method public showCostDetail(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V
    .locals 3
    .parameter "feeDetail"
    .parameter "requestPayInfo"

    .prologue
    .line 844
    if-nez p1, :cond_0

    .line 860
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->hide(Landroid/view/View;)V

    .line 850
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0, p1, p2}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->setTaxiFeeDetail(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V

    .line 852
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$15;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$15;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showDrawerView(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw share content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--TaxiWait showDrawerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->setContent(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mInfoBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->showDrawer(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFlipper:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 873
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_NONE:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->openOptionPanel(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;)V

    .line 875
    :cond_0
    return-void
.end method

.method public showFooterBar()V
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 1025
    return-void
.end method

.method public showHomeTip()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setHomeEnable(Z)V

    .line 933
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->showHomeTip()V

    .line 934
    return-void
.end method

.method public showInputMethod()V
    .locals 3

    .prologue
    .line 1135
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$17;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$17;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lutil/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1142
    return-void
.end method

.method public showOpHomeTips()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->enableOpHomeTips()V

    .line 928
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->showOpHomeTips()V

    .line 929
    return-void
.end method

.method public showPayEvaluateView(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 6
    .parameter "order"

    .prologue
    const/4 v5, 0x1

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---TaxiWait Share:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---TaxiWait Share:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 947
    iput-boolean v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayEvaluateFlag:Z

    .line 948
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrder;->redRecord:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    .line 949
    .local v0, red:Lcom/didi/taxi/model/TaxiRedRecordInfo;
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    .line 950
    .local v1, share:Lcom/didi/taxi/model/TaxiPayShare;
    iget-object v2, p1, Lcom/didi/taxi/model/TaxiOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showOpHomeTips(Lcom/didi/taxi/model/TaxiRedRecordInfo;Lcom/didi/taxi/model/TaxiPayShare;Lcom/didi/taxi/model/TaxiLove;)V

    .line 952
    const v2, 0x7f0b0574

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitle(I)V

    .line 953
    const v2, 0x7f0b0565

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleRight(I)V

    .line 954
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mFooterBar:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->disableMainTips()V

    .line 956
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 957
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mEvaluateView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->show(Landroid/view/View;)V

    .line 959
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    const v3, 0x7f090298

    invoke-static {v2, v3}, Lcom/didi/common/util/WindowUtil;->setHeight(Landroid/view/View;I)Z

    .line 960
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mScrollView:Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->setBackgroundColor(I)V

    .line 962
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v2

    iget v2, v2, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    if-eq v2, v5, :cond_0

    .line 963
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayOrCloseIcon()V

    .line 966
    :cond_0
    new-instance v2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$16;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$16;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V

    const-wide/16 v3, 0xc8

    invoke-static {v2, v3, v4}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 973
    return-void
.end method

.method public showPayView()V
    .locals 1

    .prologue
    .line 919
    sget-object v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;->OP_PAY:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->openOptionPanel(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$OP;)V

    .line 920
    return-void
.end method

.method public showRedView(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V
    .locals 4
    .parameter "red"

    .prologue
    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--TaxiWait RedVeiw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--TaxiWait RedVeiw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 897
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    new-instance v0, Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    .line 902
    .local v0, s:Lcom/didi/taxi/ui/component/ShareView;
    new-instance v1, Lcom/didi/taxi/ui/component/ShareReportModel;

    invoke-direct {v1}, Lcom/didi/taxi/ui/component/ShareReportModel;-><init>()V

    .line 903
    .local v1, shareReportModel:Lcom/didi/taxi/ui/component/ShareReportModel;
    const-string v2, "0"

    iput-object v2, v1, Lcom/didi/taxi/ui/component/ShareReportModel;->product_id:Ljava/lang/String;

    .line 904
    iget-object v2, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->oId:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/taxi/ui/component/ShareReportModel;->order_id:Ljava/lang/String;

    .line 906
    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;->setReportModel(Lcom/didi/taxi/ui/component/ShareReportModel;)V

    .line 908
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/didi/taxi/ui/component/ShareView;->setBackgroundColor(I)V

    .line 910
    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/ShareView;->setRedShare(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V

    .line 911
    invoke-virtual {v0, p0}, Lcom/didi/taxi/ui/component/ShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 913
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 915
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showOtherBottomView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showShareView(Lcom/didi/taxi/model/TaxiPayShare;)V
    .locals 3
    .parameter "payShare"

    .prologue
    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--TaxiWait showShareView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--TaxiWait showShareView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 880
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPopWin:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    new-instance v0, Lcom/didi/taxi/ui/component/ShareView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;-><init>(Landroid/content/Context;)V

    .line 884
    .local v0, s:Lcom/didi/taxi/ui/component/ShareView;
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/ShareView;->setBackgroundColor(I)V

    .line 886
    invoke-virtual {v0, p0}, Lcom/didi/taxi/ui/component/ShareView;->setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V

    .line 887
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/didi/taxi/ui/component/ShareView;->setShare(Lcom/didi/taxi/model/TaxiPayShare;Landroid/content/Context;)V

    .line 888
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 890
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showOtherBottomView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateCostDetailSaleInfo()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayCostDetail:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->peformPaySaleInfo()V

    .line 1069
    return-void
.end method

.method public updatePaidEnterpriseView()V
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePaidEnterpriseView()V

    .line 1073
    return-void
.end method

.method public updatePayWays()V
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePayWayView()V

    .line 1061
    return-void
.end method

.method public updatePreSaleText()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->mPayView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePreSaleText()V

    .line 1057
    return-void
.end method
