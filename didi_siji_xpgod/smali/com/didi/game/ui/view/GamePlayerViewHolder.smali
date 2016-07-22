.class public Lcom/didi/game/ui/view/GamePlayerViewHolder;
.super Ljava/lang/Object;
.source "GamePlayerViewHolder.java"

# interfaces
.implements Lcom/laya/iexternalinterface/IGamePlayerViewHolder;


# instance fields
.field private gamePlayerContainer:Landroid/widget/FrameLayout;

.field loadingView:Lcom/didi/game/ui/view/GameLoadingView;

.field private mGameActivity:Landroid/app/Activity;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/view/View;

.field private plistener:Lcom/laya/iexternalinterface/IPluginListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/laya/iexternalinterface/IPluginListener;)V
    .locals 2
    .parameter "_activity"
    .parameter "_gamePlayerContainer"
    .parameter "lis"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->plistener:Lcom/laya/iexternalinterface/IPluginListener;

    .line 41
    iput-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 23
    iput-object p2, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->gamePlayerContainer:Landroid/widget/FrameLayout;

    .line 24
    iput-object p1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mGameActivity:Landroid/app/Activity;

    .line 25
    iput-object p3, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->plistener:Lcom/laya/iexternalinterface/IPluginListener;

    .line 26
    invoke-direct {p0}, Lcom/didi/game/ui/view/GamePlayerViewHolder;->addProgressbar()V

    .line 28
    new-instance v0, Lcom/didi/game/ui/view/GameLoadingView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/game/ui/view/GameLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->loadingView:Lcom/didi/game/ui/view/GameLoadingView;

    .line 29
    return-void
.end method

.method private addProgressbar()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 44
    iget-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mGameActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressView:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressView:Landroid/view/View;

    const v1, 0x7f0803aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 46
    iget-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->gamePlayerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 48
    return-void
.end method


# virtual methods
.method public onHideLoadingView()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->gamePlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 81
    return-void
.end method

.method public onHidePluginView()V
    .locals 2

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->gamePlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 62
    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->plistener:Lcom/laya/iexternalinterface/IPluginListener;

    invoke-interface {v1}, Lcom/laya/iexternalinterface/IPluginListener;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLoadingProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onShowLoadingView()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mProgressView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onShowPluginView(Landroid/view/View;)V
    .locals 2
    .parameter "_view"

    .prologue
    const/4 v1, -0x1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->gamePlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 36
    iget-object v0, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->gamePlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 38
    :cond_0
    return-void
.end method

.method public quitFullScreen()V
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mGameActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 53
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 54
    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mGameActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/didi/game/ui/view/GamePlayerViewHolder;->mGameActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 56
    return-void
.end method
