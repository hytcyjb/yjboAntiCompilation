.class public Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CommonUserAgreeFragment.java"


# instance fields
.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mNounDefined:Landroid/view/View;

.field private mRiskTips:Landroid/view/View;

.field private mSpicalStatment:Landroid/view/View;

.field private mSpicalTips:Landroid/view/View;

.field private onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment$1;-><init>(Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 130
    new-instance v0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment$2;-><init>(Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mBackListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 51
    const v0, 0x7f08024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mSpicalTips:Landroid/view/View;

    .line 52
    const v0, 0x7f080250

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mNounDefined:Landroid/view/View;

    .line 53
    const v0, 0x7f080252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mRiskTips:Landroid/view/View;

    .line 54
    const v0, 0x7f080254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mSpicalStatment:Landroid/view/View;

    .line 55
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mSpicalTips:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mNounDefined:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mRiskTips:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mSpicalStatment:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 66
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 67
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f0b0237

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 43
    const v1, 0x7f030068

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->setTitleBar()V

    .line 45
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->initViews(Landroid/view/View;)V

    .line 46
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;->setListeners()V

    .line 47
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 127
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 128
    return-void
.end method
