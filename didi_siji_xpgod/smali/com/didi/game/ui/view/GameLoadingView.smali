.class public Lcom/didi/game/ui/view/GameLoadingView;
.super Lx/RelativeLayout;
.source "GameLoadingView.java"

# interfaces
.implements Lorg/egret/egretframeworknative/engine/IGameZipUpdateListener;


# instance fields
.field private bar:Landroid/widget/ProgressBar;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, -0x2

    .line 23
    invoke-direct {p0, p1}, Lx/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/didi/game/ui/view/GameLoadingView;->setBackgroundColor(I)V

    .line 26
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/didi/game/ui/view/GameLoadingView;->tv:Landroid/widget/TextView;

    .line 34
    iget-object v2, p0, Lcom/didi/game/ui/view/GameLoadingView;->tv:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v2, p0, Lcom/didi/game/ui/view/GameLoadingView;->tv:Landroid/widget/TextView;

    const-string v3, "GameLoading..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, p0, Lcom/didi/game/ui/view/GameLoadingView;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v2, p1, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/didi/game/ui/view/GameLoadingView;->bar:Landroid/widget/ProgressBar;

    .line 42
    iget-object v2, p0, Lcom/didi/game/ui/view/GameLoadingView;->bar:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xf

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v2, p0, Lcom/didi/game/ui/view/GameLoadingView;->bar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/didi/game/ui/view/GameLoadingView;->addView(Landroid/view/View;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onGameZipUpdateError()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onGameZipUpdateProgress(F)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/game/ui/view/GameLoadingView;->bar:Landroid/widget/ProgressBar;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 58
    return-void
.end method

.method public onGameZipUpdateSuccess()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onProgress(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/game/ui/view/GameLoadingView;->bar:Landroid/widget/ProgressBar;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 52
    return-void
.end method
