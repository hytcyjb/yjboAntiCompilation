.class public Lcom/didi/common/ui/slidecall/ComposerButtonShrinkAnimationOut;
.super Lcom/didi/common/ui/slidecall/InOutAnimation;
.source "ComposerButtonShrinkAnimationOut.java"


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 15
    sget-object v0, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->OUT:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    int-to-long v1, p1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/common/ui/slidecall/InOutAnimation;-><init>(Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;J[Landroid/view/View;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected addInAnimation([Landroid/view/View;)V
    .locals 0
    .parameter "aview"

    .prologue
    .line 21
    return-void
.end method

.method protected addOutAnimation([Landroid/view/View;)V
    .locals 9
    .parameter "aview"

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 25
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/slidecall/ComposerButtonShrinkAnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    .line 26
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/slidecall/ComposerButtonShrinkAnimationOut;->addAnimation(Landroid/view/animation/Animation;)V

    .line 27
    return-void
.end method
