.class public Lcom/didi/common/ui/fragment/CommonBindFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CommonBindFragment.java"


# instance fields
.field private btnSina:Lx/Button;

.field private btnTencent:Lx/Button;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field mHandler:Landroid/os/Handler;

.field onClickListener:Landroid/view/View$OnClickListener;

.field shareFriends:Lcom/didi/common/ui/component/Share$ShareFriends;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/didi/common/ui/fragment/CommonBindFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonBindFragment$1;-><init>(Lcom/didi/common/ui/fragment/CommonBindFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->mBackListener:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/didi/common/ui/fragment/CommonBindFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonBindFragment$2;-><init>(Lcom/didi/common/ui/fragment/CommonBindFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/didi/common/ui/fragment/CommonBindFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonBindFragment$3;-><init>(Lcom/didi/common/ui/fragment/CommonBindFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->shareFriends:Lcom/didi/common/ui/component/Share$ShareFriends;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/CommonBindFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->updateButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/CommonBindFragment;)Lx/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnTencent:Lx/Button;

    return-object v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 56
    const v0, 0x7f080053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 58
    const v0, 0x7f080075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;

    .line 60
    const v0, 0x7f080078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnTencent:Lx/Button;

    .line 61
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->updateButtonState()V

    .line 62
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnTencent:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 80
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f0b01f4

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 82
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 83
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 84
    return-void
.end method

.method private updateButtonState()V
    .locals 3

    .prologue
    .line 65
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 66
    .local v0, platform:Lcn/sharesdk/framework/Platform;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;

    const v2, 0x7f0b0553

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;

    const v2, 0x7f070018

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lx/Button;->setTextColor(I)V

    .line 69
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Lx/Button;->setBackgroundResource(I)V

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;

    const v2, 0x7f0b01f4

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;

    const v2, 0x7f070047

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lx/Button;->setTextColor(I)V

    .line 73
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonBindFragment;->btnSina:Lx/Button;

    const v2, 0x7f020107

    invoke-virtual {v1, v2}, Lx/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 221
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    .line 89
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
    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->setTitleBar()V

    .line 45
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->initViews(Landroid/view/View;)V

    .line 46
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonBindFragment;->setListeners()V

    .line 47
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 215
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 216
    return-void
.end method
