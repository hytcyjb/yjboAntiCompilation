.class public abstract Lcom/didi/common/base/BaseLayout;
.super Landroid/widget/RelativeLayout;
.source "BaseLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/didi/common/base/BaseLayout;->initialize()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/didi/common/base/BaseLayout;->initialize()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lcom/didi/common/base/BaseLayout;->initialize()V

    .line 23
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/didi/common/base/BaseLayout;->onInitLayoutResId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/didi/common/base/BaseLayout;->setContentView(I)V

    .line 37
    invoke-static {p0, p0}, Lnet/tsz/afinal/FinalActivity;->initInjectedView(Ljava/lang/Object;Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/didi/common/base/BaseLayout;->onInit()V

    .line 39
    return-void
.end method

.method private setContentView(I)V
    .locals 2
    .parameter "layoutResId"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/base/BaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public enable(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    return-void
.end method

.method public enable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 60
    invoke-virtual {p0, p0, p1}, Lcom/didi/common/base/BaseLayout;->enable(Landroid/view/View;Z)V

    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0, p0}, Lcom/didi/common/base/BaseLayout;->hide(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public hide(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 75
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public invisible()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/didi/common/base/BaseLayout;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public invisible(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 79
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/didi/common/base/BaseLayout;->removeAllViews()V

    .line 102
    return-void
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected abstract onInitLayoutResId()I
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public resizeView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 93
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 94
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .parameter "resid"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 85
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p0}, Lcom/didi/common/base/BaseLayout;->show(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method
