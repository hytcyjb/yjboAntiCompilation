.class public Lcom/didi/common/ui/fragment/CommonAboutFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CommonAboutFragment.java"


# instance fields
.field private icsClickListener:Landroid/view/View$OnClickListener;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mContactUs:Landroid/view/View;

.field private mContactUsListener:Landroid/view/View$OnClickListener;

.field private mICslogan:Landroid/widget/ImageView;

.field private mVersionIntroduction:Landroid/view/View;

.field private mVersionListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/didi/common/ui/fragment/CommonAboutFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonAboutFragment$1;-><init>(Lcom/didi/common/ui/fragment/CommonAboutFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mVersionListener:Landroid/view/View$OnClickListener;

    .line 92
    new-instance v0, Lcom/didi/common/ui/fragment/CommonAboutFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonAboutFragment$2;-><init>(Lcom/didi/common/ui/fragment/CommonAboutFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mBackListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Lcom/didi/common/ui/fragment/CommonAboutFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonAboutFragment$3;-><init>(Lcom/didi/common/ui/fragment/CommonAboutFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mContactUsListener:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;-><init>(Lcom/didi/common/ui/fragment/CommonAboutFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->icsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 54
    const v0, 0x7f080020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mContactUs:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mContactUs:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mContactUsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f08001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mVersionIntroduction:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mVersionIntroduction:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mVersionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f080022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mICslogan:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mICslogan:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->icsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 67
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 68
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0b01cd

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonAboutFragment;->setTitleBar()V

    .line 48
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonAboutFragment;->initViews(Landroid/view/View;)V

    .line 49
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 123
    return-void
.end method
