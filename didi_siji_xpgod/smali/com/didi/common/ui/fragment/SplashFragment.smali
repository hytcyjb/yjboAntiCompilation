.class public Lcom/didi/common/ui/fragment/SplashFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "SplashFragment.java"


# static fields
.field private static final MSG_EXIT_APP:I = 0x2

.field private static final TIME_DELAY_LAUNCH:I = 0x7d0

.field private static final TIME_LEAST_LAUNCH:I = 0xfa0


# instance fields
.field private imgSplashLogo:Landroid/widget/ImageView;

.field isDestory:Z

.field private mAdvertisementImageListener:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCoverView:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->isDestory:Z

    .line 51
    new-instance v0, Lcom/didi/common/ui/fragment/SplashFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SplashFragment$1;-><init>(Lcom/didi/common/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mAdvertisementImageListener:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    .line 71
    new-instance v0, Lcom/didi/common/ui/fragment/SplashFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SplashFragment$2;-><init>(Lcom/didi/common/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/SplashFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/common/ui/fragment/SplashFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mCoverView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/SplashFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SplashFragment;->enterApp()V

    return-void
.end method

.method private enterApp()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    invoke-static {}, Lcom/didi/common/helper/IconHelper;->preLoadIconList()V

    .line 161
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 162
    return-void
.end method

.method private getCommonSentence()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/didi/common/ui/fragment/SplashFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/SplashFragment$3;-><init>(Lcom/didi/common/ui/fragment/SplashFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 125
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 90
    const v0, 0x7f0300f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v1, 0x7f080563

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mCoverView:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v1, 0x7f080562

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->imgSplashLogo:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SplashFragment;->getCommonSentence()V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->TRACE_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->NET_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 97
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 98
    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->checkLocalImgState()V

    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 155
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 137
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->imgSplashLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->isDestory:Z

    .line 141
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    :cond_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->detachSplashFragment()V

    .line 145
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDetach()V

    .line 150
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStart()V

    .line 130
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_intro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment;->mAdvertisementImageListener:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    invoke-static {v0}, Lcom/didi/common/helper/AdvertisementHelper;->showAdvertisement(Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V

    .line 132
    :cond_1
    return-void
.end method

.method public shouldBeAddedToBackStack()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method
