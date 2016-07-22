.class public Lcom/didi/common/ui/component/InOutImageView;
.super Landroid/widget/ImageView;
.source "InOutImageView.java"


# instance fields
.field private animation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/InOutImageView;->setClickable(Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/InOutImageView;->setClickable(Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/InOutImageView;->setClickable(Z)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onAnimationEnd()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 35
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 36
    iget-object v0, p0, Lcom/didi/common/ui/component/InOutImageView;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/didi/common/ui/slidecall/ComposerButtonGrowAnimationOut;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/InOutImageView;->setVisibility(I)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/component/InOutImageView;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/didi/common/ui/slidecall/ComposerButtonGrowAnimationIn;

    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/InOutImageView;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/component/InOutImageView;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/didi/common/ui/slidecall/ComposerButtonShrinkAnimationOut;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/InOutImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAnimationStart()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 50
    iget-object v0, p0, Lcom/didi/common/ui/component/InOutImageView;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/didi/common/ui/slidecall/InOutAnimation;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/InOutImageView;->setVisibility(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    iput-object p1, p0, Lcom/didi/common/ui/component/InOutImageView;->animation:Landroid/view/animation/Animation;

    .line 58
    invoke-virtual {p0}, Lcom/didi/common/ui/component/InOutImageView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 59
    return-void
.end method
