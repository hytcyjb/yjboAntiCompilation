.class public Lcom/didi/beatles/common/utils/BtsAnimationUtil;
.super Ljava/lang/Object;
.source "BtsAnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translateDownToUpAnim(Landroid/view/View;Z)Z
    .locals 3
    .parameter "view"
    .parameter "inOrOut"

    .prologue
    .line 40
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    if-eqz p1, :cond_0

    const v1, 0x7f040005

    :goto_0
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 42
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    const/4 v1, 0x1

    return v1

    .line 40
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    const v1, 0x7f040006

    goto :goto_0
.end method

.method public static translateUpToDownAnim(Landroid/view/View;Z)Z
    .locals 3
    .parameter "view"
    .parameter "inOrOut"

    .prologue
    .line 24
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    if-eqz p1, :cond_0

    const v1, 0x7f040008

    :goto_0
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 26
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    const/4 v1, 0x1

    return v1

    .line 24
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    const v1, 0x7f040009

    goto :goto_0
.end method
