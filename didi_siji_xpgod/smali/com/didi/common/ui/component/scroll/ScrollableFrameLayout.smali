.class public Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollableFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;
    }
.end annotation


# static fields
.field private static final MSG_SCROLL_END:I = 0x2

.field private static final MSG_SCROLL_STEP:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mScrollListener:Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;

.field protected mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

.field private mStepList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/didi/common/ui/component/scroll/Step;",
            ">;"
        }
    .end annotation
.end field

.field private touched:Z

.field private touching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$1;-><init>(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$1;-><init>(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$1;-><init>(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->actStep()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->onScrollEnd()V

    return-void
.end method

.method private actStep()V
    .locals 6

    .prologue
    .line 335
    iget-object v2, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mStepList:Ljava/util/LinkedList;

    invoke-static {v2}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mStepList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/scroll/Step;

    .line 338
    .local v1, step:Lcom/didi/common/ui/component/scroll/Step;
    invoke-virtual {v1}, Lcom/didi/common/ui/component/scroll/Step;->getDuration()I

    move-result v0

    .line 339
    .local v0, duration:I
    invoke-virtual {v1}, Lcom/didi/common/ui/component/scroll/Step;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    invoke-direct {p0, v1}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->scrollFinalStep(Lcom/didi/common/ui/component/scroll/Step;)V

    .line 343
    :goto_1
    iget-object v2, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0, v1}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->scrollDistanceStep(Lcom/didi/common/ui/component/scroll/Step;)V

    goto :goto_1
.end method

.method private action()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/scroll/ScrollState;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/scroll/ScrollState;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->doScrollTo(II)V

    .line 251
    return-void
.end method

.method private onScrollEnd()V
    .locals 1

    .prologue
    .line 237
    const-string v0, "onScrollEnd"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollListener:Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "onScrollEnd callback"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollListener:Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;

    invoke-interface {v0, p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;->onScrollEnd(Landroid/view/View;)V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->touched:Z

    .line 243
    :cond_0
    return-void
.end method

.method private scrollDistanceStep(Lcom/didi/common/ui/component/scroll/Step;)V
    .locals 3
    .parameter "step"

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/didi/common/ui/component/scroll/Step;->getDistanceX()I

    move-result v0

    invoke-virtual {p1}, Lcom/didi/common/ui/component/scroll/Step;->getDistanceY()I

    move-result v1

    invoke-virtual {p1}, Lcom/didi/common/ui/component/scroll/Step;->getDuration()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->smoothScrollBy(III)V

    .line 348
    return-void
.end method

.method private scrollFinalStep(Lcom/didi/common/ui/component/scroll/Step;)V
    .locals 3
    .parameter "step"

    .prologue
    .line 351
    invoke-virtual {p1}, Lcom/didi/common/ui/component/scroll/Step;->getFinalX()I

    move-result v0

    invoke-virtual {p1}, Lcom/didi/common/ui/component/scroll/Step;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Lcom/didi/common/ui/component/scroll/Step;->getDuration()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->smoothScrollTo(III)V

    .line 352
    return-void
.end method

.method private startScroll()V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->invalidate()V

    .line 208
    return-void
.end method

.method private stopCurrentMovement()V
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->stopScroll()V

    .line 356
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->action()V

    .line 224
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/scroll/ScrollState;->shouldScroll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->onScrollEnd()V

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->render()V

    goto :goto_0
.end method

.method public doScrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 319
    neg-int v0, p1

    neg-int v1, p2

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 320
    return-void
.end method

.method public doScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 303
    neg-int v0, p1

    neg-int v1, p2

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 304
    return-void
.end method

.method protected getCurrX()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/scroll/ScrollState;->getCurrX()I

    move-result v0

    return v0
.end method

.method protected getCurrY()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/scroll/ScrollState;->getCurrY()I

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mStepList:Ljava/util/LinkedList;

    .line 66
    new-instance v0, Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-direct {v0}, Lcom/didi/common/ui/component/scroll/ScrollState;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    .line 67
    return-void
.end method

.method public move(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/didi/common/ui/component/scroll/Step;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, stepList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/didi/common/ui/component/scroll/Step;>;"
    invoke-direct {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->stopCurrentMovement()V

    .line 329
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mStepList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 330
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mStepList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 331
    invoke-direct {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->actStep()V

    .line 332
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 72
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    :pswitch_0
    return v1

    .line 74
    :pswitch_1
    iput-boolean v2, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->touched:Z

    .line 75
    iput-boolean v2, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->touching:Z

    goto :goto_0

    .line 80
    :pswitch_2
    iput-boolean v1, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->touching:Z

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->render()V

    .line 264
    return-void
.end method

.method protected render()V
    .locals 0

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->postInvalidate()V

    .line 260
    return-void
.end method

.method protected setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 93
    new-instance v0, Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-direct {v0, p1}, Lcom/didi/common/ui/component/scroll/ScrollState;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    .line 94
    return-void
.end method

.method public setScrollListener(Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollListener:Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout$ScrollListener;

    .line 361
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 2
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->stopScroll()V

    .line 175
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    const/16 v1, 0xfa

    invoke-virtual {v0, p1, p2, v1}, Lcom/didi/common/ui/component/scroll/ScrollState;->setScrollParams(III)V

    .line 177
    invoke-direct {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->startScroll()V

    .line 178
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "duration"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->stopScroll()V

    .line 197
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/common/ui/component/scroll/ScrollState;->setScrollParams(III)V

    .line 199
    invoke-direct {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->startScroll()V

    .line 200
    return-void
.end method

.method public smoothScrollBy(IIIII)V
    .locals 6
    .parameter "fromX"
    .parameter "fromY"
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "duration"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->stopScroll()V

    .line 140
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    neg-int v3, p3

    neg-int v4, p4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/didi/common/ui/component/scroll/ScrollState;->setScrollParams(IIIII)V

    .line 142
    invoke-direct {p0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->startScroll()V

    .line 143
    return-void
.end method

.method public smoothScrollTo(II)V
    .locals 1
    .parameter "finalX"
    .parameter "finalY"

    .prologue
    .line 157
    const/16 v0, 0xfa

    invoke-virtual {p0, p1, p2, v0}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->smoothScrollTo(III)V

    .line 158
    return-void
.end method

.method public smoothScrollTo(III)V
    .locals 4
    .parameter "finalX"
    .parameter "finalY"
    .parameter "duration"

    .prologue
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smoothScrollTo distanceX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smoothScrollTo getCurrX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v3}, Lcom/didi/common/ui/component/scroll/ScrollState;->getCurrX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v2}, Lcom/didi/common/ui/component/scroll/ScrollState;->getCurrX()I

    move-result v2

    sub-int v0, p1, v2

    .line 113
    .local v0, dx:I
    iget-object v2, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v2}, Lcom/didi/common/ui/component/scroll/ScrollState;->getCurrY()I

    move-result v2

    sub-int v1, p2, v2

    .line 114
    .local v1, dy:I
    invoke-virtual {p0, v0, v1, p3}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->smoothScrollBy(III)V

    .line 115
    return-void
.end method

.method public smoothScrollTo(IIIII)V
    .locals 6
    .parameter "fromX"
    .parameter "fromY"
    .parameter "finalX"
    .parameter "finalY"
    .parameter "duration"

    .prologue
    .line 131
    sub-int v3, p3, p1

    .line 132
    .local v3, dx:I
    sub-int v4, p4, p2

    .local v4, dy:I
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->smoothScrollBy(IIIII)V

    .line 134
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/scroll/ScrollState;->setStoped()V

    .line 216
    return-void
.end method
