.class public Lcom/didi/common/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boom(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "duration"

    .prologue
    .line 117
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 11
    .parameter "view"
    .parameter "duration"

    .prologue
    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    const v1, 0x3dcccccd

    .line 162
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 163
    .local v10, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 165
    .local v0, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 166
    .local v9, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 168
    int-to-long v1, p1

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 169
    invoke-virtual {p0, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    new-instance v1, Lcom/didi/common/util/AnimationUtil$3;

    invoke-direct {v1, p0}, Lcom/didi/common/util/AnimationUtil$3;-><init>(Landroid/view/View;)V

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 11
    .parameter "view"
    .parameter "duration"

    .prologue
    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    const v2, 0x3dcccccd

    .line 143
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 144
    .local v10, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 146
    .local v0, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 147
    .local v9, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 148
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 149
    int-to-long v1, p1

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 150
    invoke-virtual {p0, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    new-instance v1, Lcom/didi/common/util/AnimationUtil$2;

    invoke-direct {v1, p0}, Lcom/didi/common/util/AnimationUtil$2;-><init>(Landroid/view/View;)V

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    return-void
.end method

.method public static move(Landroid/view/View;IIJ)Z
    .locals 6
    .parameter "view"
    .parameter "xDistance"
    .parameter "yDistance"
    .parameter "duration"

    .prologue
    .line 106
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/didi/common/util/AnimationUtil;->move(Landroid/view/View;IIJLandroid/view/animation/Interpolator;)Z

    move-result v0

    return v0
.end method

.method public static move(Landroid/view/View;IIJLandroid/view/animation/Interpolator;)Z
    .locals 14
    .parameter "view"
    .parameter "xDistance"
    .parameter "yDistance"
    .parameter "duration"
    .parameter "interpolator"

    .prologue
    .line 65
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    .line 66
    .local v10, tag:Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 91
    :goto_0
    return v2

    .line 68
    :cond_0
    const v2, 0x7f08001d

    move-object/from16 v0, p5

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int v4, v2, p1

    .line 71
    .local v4, left:I
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int v5, v2, p2

    .line 72
    .local v5, top:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 73
    .local v11, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 74
    .local v9, height:I
    add-int v6, v4, v11

    .line 75
    .local v6, right:I
    add-int v7, v5, v9

    .line 76
    .local v7, bottom:I
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 77
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v12, 0x0

    move/from16 v0, p2

    int-to-float v13, v0

    invoke-direct {v8, v2, v3, v12, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 78
    .local v8, anim:Landroid/view/animation/TranslateAnimation;
    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 79
    if-eqz p5, :cond_1

    .line 80
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    :cond_1
    new-instance v2, Lcom/didi/common/util/AnimationUtil$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/didi/common/util/AnimationUtil$1;-><init>(Landroid/view/View;IIII)V

    move-wide/from16 v0, p3

    invoke-static {v2, v0, v1}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    invoke-virtual {p0, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 91
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static rotateRight(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 43
    if-nez p0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 46
    .local v0, animation:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 47
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static shake(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 35
    :cond_0
    return-void
.end method

.method public static shrink(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "duration"

    .prologue
    .line 110
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 111
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    return-void
.end method

.method public static slideUpAnim(Landroid/view/View;I)Z
    .locals 3
    .parameter "view"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-static {p0}, Lcom/didi/common/util/ViewUtil;->show(Landroid/view/View;)V

    .line 134
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 135
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 136
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    const/4 v1, 0x1

    return v1
.end method

.method public static translateDownAnim(Landroid/view/View;I)Z
    .locals 3
    .parameter "view"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 124
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 125
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 126
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 127
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    const/4 v1, 0x1

    return v1
.end method
