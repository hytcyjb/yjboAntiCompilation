.class public Lcom/didi/common/ui/component/FlipperView;
.super Landroid/widget/FrameLayout;
.source "FlipperView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/FlipperView$FlipperViewTouchableListener;,
        Lcom/didi/common/ui/component/FlipperView$BaseAnimationListener;,
        Lcom/didi/common/ui/component/FlipperView$ViewHiddenListener;,
        Lcom/didi/common/ui/component/FlipperView$ViewShownListener;
    }
.end annotation


# static fields
.field private static final sInvalidIndex:I = -0x64


# instance fields
.field mCurShownIndex:I

.field mCurrentId:I

.field mHiddenListener:Lcom/didi/common/ui/component/FlipperView$ViewHiddenListener;

.field mInAnimation:Landroid/view/animation/Animation;

.field mNextShownIndex:I

.field mOutAnimation:Landroid/view/animation/Animation;

.field mShownListener:Lcom/didi/common/ui/component/FlipperView$ViewShownListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/FlipperView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/FlipperView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/16 v0, -0x64

    .line 49
    iput v0, p0, Lcom/didi/common/ui/component/FlipperView;->mCurShownIndex:I

    .line 50
    iput v0, p0, Lcom/didi/common/ui/component/FlipperView;->mNextShownIndex:I

    .line 52
    const v0, 0x7f04001f

    invoke-virtual {p0, p1, v0}, Lcom/didi/common/ui/component/FlipperView;->setInAnimation(Landroid/content/Context;I)V

    .line 53
    const v0, 0x7f040020

    invoke-virtual {p0, p1, v0}, Lcom/didi/common/ui/component/FlipperView;->setOutAnimation(Landroid/content/Context;I)V

    .line 54
    return-void
.end method

.method private start()V
    .locals 10

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/didi/common/ui/component/FlipperView;->getChildCount()I

    move-result v1

    .line 185
    .local v1, count:I
    iget-object v4, p0, Lcom/didi/common/ui/component/FlipperView;->mOutAnimation:Landroid/view/animation/Animation;

    .line 187
    .local v4, outAnimation:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 188
    .local v2, currentView:Landroid/view/View;
    if-nez v2, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/didi/common/ui/component/FlipperView;->startNext()V

    .line 216
    :cond_0
    return-void

    .line 193
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 196
    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    new-instance v5, Lcom/didi/common/ui/component/FlipperView$3;

    invoke-direct {v5, p0}, Lcom/didi/common/ui/component/FlipperView$3;-><init>(Lcom/didi/common/ui/component/FlipperView;)V

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x320

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 206
    iget v5, p0, Lcom/didi/common/ui/component/FlipperView;->mCurShownIndex:I

    if-eq v3, v5, :cond_2

    .line 207
    invoke-virtual {p0, v3}, Lcom/didi/common/ui/component/FlipperView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 211
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .end local v0           #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private startNext()V
    .locals 3

    .prologue
    .line 129
    iget v1, p0, Lcom/didi/common/ui/component/FlipperView;->mNextShownIndex:I

    .line 130
    .local v1, index:I
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/FlipperView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/didi/common/ui/component/FlipperView;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 136
    iput v1, p0, Lcom/didi/common/ui/component/FlipperView;->mCurShownIndex:I

    .line 137
    const/16 v2, -0x64

    iput v2, p0, Lcom/didi/common/ui/component/FlipperView;->mNextShownIndex:I

    .line 138
    return-void
.end method

.method private switchTo(I)V
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 168
    const/16 v0, -0x64

    if-ne p1, v0, :cond_1

    .line 169
    const/4 p1, 0x0

    .line 178
    :cond_0
    :goto_0
    iput p1, p0, Lcom/didi/common/ui/component/FlipperView;->mNextShownIndex:I

    .line 179
    invoke-direct {p0}, Lcom/didi/common/ui/component/FlipperView;->start()V

    .line 180
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/ui/component/FlipperView;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 172
    const/4 p1, 0x0

    goto :goto_0

    .line 174
    :cond_2
    if-gez p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/didi/common/ui/component/FlipperView;->getChildCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/didi/common/ui/component/FlipperView;->mCurShownIndex:I

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/FlipperView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViewIndex()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/didi/common/ui/component/FlipperView;->mCurrentId:I

    return v0
.end method

.method protected onSlideIn()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/component/FlipperView;->mShownListener:Lcom/didi/common/ui/component/FlipperView$ViewShownListener;

    .line 118
    .local v0, l:Lcom/didi/common/ui/component/FlipperView$ViewShownListener;
    invoke-virtual {p0}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, v:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 122
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v0, v1}, Lcom/didi/common/ui/component/FlipperView$ViewShownListener;->onShown(Landroid/view/View;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected onSlideOut()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/common/ui/component/FlipperView;->mHiddenListener:Lcom/didi/common/ui/component/FlipperView$ViewHiddenListener;

    .line 103
    .local v0, l:Lcom/didi/common/ui/component/FlipperView$ViewHiddenListener;
    invoke-virtual {p0}, Lcom/didi/common/ui/component/FlipperView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, v:Landroid/view/View;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 107
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v0, v1}, Lcom/didi/common/ui/component/FlipperView$ViewHiddenListener;->onHidden(Landroid/view/View;)V

    .line 111
    :cond_0
    iget v2, p0, Lcom/didi/common/ui/component/FlipperView;->mNextShownIndex:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/didi/common/ui/component/FlipperView;->startNext()V

    .line 113
    :cond_1
    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 62
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/FlipperView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 63
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "inAnimation"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/common/ui/component/FlipperView;->mInAnimation:Landroid/view/animation/Animation;

    .line 72
    new-instance v0, Lcom/didi/common/ui/component/FlipperView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/FlipperView$1;-><init>(Lcom/didi/common/ui/component/FlipperView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 80
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 66
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/FlipperView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 67
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "outAnimation"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/common/ui/component/FlipperView;->mOutAnimation:Landroid/view/animation/Animation;

    .line 85
    new-instance v0, Lcom/didi/common/ui/component/FlipperView$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/FlipperView$2;-><init>(Lcom/didi/common/ui/component/FlipperView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 98
    return-void
.end method

.method public switchNext()V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 157
    iget v0, p0, Lcom/didi/common/ui/component/FlipperView;->mCurShownIndex:I

    if-ne v0, v1, :cond_0

    .line 158
    invoke-direct {p0, v1}, Lcom/didi/common/ui/component/FlipperView;->switchTo(I)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p0, Lcom/didi/common/ui/component/FlipperView;->mCurShownIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/FlipperView;->switchTo(I)V

    goto :goto_0
.end method

.method public switchToChild(I)V
    .locals 3
    .parameter "childId"

    .prologue
    .line 142
    iput p1, p0, Lcom/didi/common/ui/component/FlipperView;->mCurrentId:I

    .line 144
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/component/FlipperView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/FlipperView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 150
    .local v0, index:I
    iget v2, p0, Lcom/didi/common/ui/component/FlipperView;->mCurShownIndex:I

    if-eq v2, v0, :cond_0

    .line 151
    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/FlipperView;->switchTo(I)V

    goto :goto_0
.end method
