.class public Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;
.super Lcom/didi/common/ui/slidecall/InOutAnimation;
.source "ComposerButtonAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/slidecall/ComposerButtonAnimation$1;
    }
.end annotation


# static fields
.field public static final DURATION:I = 0xc8

.field private static final xOffset:I = 0x10

.field private static final yOffset:I = -0xd


# direct methods
.method public constructor <init>(Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;JLandroid/view/View;)V
    .locals 2
    .parameter "direction"
    .parameter "l"
    .parameter "view"

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/didi/common/ui/slidecall/InOutAnimation;-><init>(Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;J[Landroid/view/View;)V

    .line 19
    return-void
.end method

.method public static startAnimations(Lcom/didi/common/ui/component/InOutImageView;Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;I)V
    .locals 2
    .parameter "viewgroup"
    .parameter "direction"
    .parameter "i"

    .prologue
    .line 22
    sget-object v0, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation$1;->$SwitchMap$com$didi$common$ui$slidecall$InOutAnimation$Direction:[I

    invoke-virtual {p1}, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 30
    :goto_0
    return-void

    .line 24
    :pswitch_0
    invoke-static {p0, p2}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;->startAnimationsIn(Lcom/didi/common/ui/component/InOutImageView;I)V

    goto :goto_0

    .line 27
    :pswitch_1
    invoke-static {p0, p2}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;->startAnimationsOut(Lcom/didi/common/ui/component/InOutImageView;I)V

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static startAnimationsIn(Lcom/didi/common/ui/component/InOutImageView;I)V
    .locals 4
    .parameter "view"
    .parameter "i"

    .prologue
    .line 36
    new-instance v0, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;

    sget-object v1, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->IN:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;-><init>(Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;JLandroid/view/View;)V

    .line 37
    .local v0, animation:Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;
    mul-int/lit8 v1, p1, 0x64

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;->setStartOffset(J)V

    .line 38
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/InOutImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    return-void
.end method

.method private static startAnimationsOut(Lcom/didi/common/ui/component/InOutImageView;I)V
    .locals 4
    .parameter "viewgroup"
    .parameter "i"

    .prologue
    .line 48
    new-instance v0, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;

    sget-object v1, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->OUT:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;-><init>(Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;JLandroid/view/View;)V

    .line 49
    .local v0, animation:Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;
    rsub-int/lit8 v1, p1, 0x2

    mul-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;->setStartOffset(J)V

    .line 50
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/InOutImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected addInAnimation([Landroid/view/View;)V
    .locals 5
    .parameter "aview"

    .prologue
    const/4 v4, 0x0

    .line 58
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    .local v0, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    neg-int v2, v2

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/lit8 v3, v3, -0xd

    int-to-float v3, v3

    invoke-direct {v1, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 60
    return-void
.end method

.method protected addOutAnimation([Landroid/view/View;)V
    .locals 5
    .parameter "aview"

    .prologue
    const/4 v4, 0x0

    .line 64
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 65
    .local v0, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    neg-int v2, v2

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/lit8 v3, v3, -0xd

    int-to-float v3, v3

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/slidecall/ComposerButtonAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 66
    return-void
.end method
