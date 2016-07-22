.class public Lcom/didi/common/ui/component/PullScrollView;
.super Landroid/widget/ScrollView;
.source "PullScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;,
        Lcom/didi/common/ui/component/PullScrollView$State;
    }
.end annotation


# static fields
.field private static final SCROLL_RATIO:F = 0.5f

.field private static final TURN_DISTANCE:I = 0x64


# instance fields
.field private isMoving:Z

.field private isTop:Z

.field private mContentRect:Landroid/graphics/Rect;

.field private mContentView:Landroid/view/View;

.field private mCurrentBottom:I

.field private mCurrentTop:I

.field private mEnableTouch:Z

.field private mHeader:Landroid/view/View;

.field private mHeaderVisibleHeight:I

.field private mInitBottom:I

.field private mInitTop:I

.field private mOnRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

.field private mState:Lcom/didi/common/ui/component/PullScrollView$State;

.field private mTouchDownY:F

.field private maxScrollY:I

.field private progressBarY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    .line 47
    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->mEnableTouch:Z

    .line 50
    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    .line 53
    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->isTop:Z

    .line 79
    sget-object v0, Lcom/didi/common/ui/component/PullScrollView$State;->NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

    iput-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/component/PullScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    .line 47
    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->mEnableTouch:Z

    .line 50
    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    .line 53
    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->isTop:Z

    .line 79
    sget-object v0, Lcom/didi/common/ui/component/PullScrollView$State;->NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

    iput-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/component/PullScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    .line 47
    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->mEnableTouch:Z

    .line 50
    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    .line 53
    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->isTop:Z

    .line 79
    sget-object v0, Lcom/didi/common/ui/component/PullScrollView$State;->NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

    iput-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/component/PullScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method private doActionMove(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/didi/common/ui/component/PullScrollView;->getScrollY()I

    move-result v7

    if-nez v7, :cond_0

    .line 209
    sget-object v7, Lcom/didi/common/ui/component/PullScrollView$State;->NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

    iput-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    .line 212
    iget-boolean v7, p0, Lcom/didi/common/ui/component/PullScrollView;->isTop:Z

    if-eqz v7, :cond_0

    .line 213
    iput-boolean v9, p0, Lcom/didi/common/ui/component/PullScrollView;->isTop:Z

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mTouchDownY:F

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/didi/common/ui/component/PullScrollView;->mTouchDownY:F

    sub-float v2, v7, v8

    .line 221
    .local v2, deltaY:F
    cmpg-float v7, v2, v6

    if-gez v7, :cond_5

    iget-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    sget-object v8, Lcom/didi/common/ui/component/PullScrollView$State;->NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

    if-ne v7, v8, :cond_5

    .line 222
    sget-object v7, Lcom/didi/common/ui/component/PullScrollView$State;->UP:Lcom/didi/common/ui/component/PullScrollView$State;

    iput-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    .line 226
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    sget-object v8, Lcom/didi/common/ui/component/PullScrollView$State;->UP:Lcom/didi/common/ui/component/PullScrollView$State;

    if-ne v7, v8, :cond_7

    .line 227
    cmpg-float v7, v2, v6

    if-gez v7, :cond_6

    .line 229
    :goto_1
    iput-boolean v9, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    .line 230
    iput-boolean v9, p0, Lcom/didi/common/ui/component/PullScrollView;->mEnableTouch:Z

    .line 251
    :cond_2
    :goto_2
    iget-boolean v6, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    if-eqz v6, :cond_4

    .line 253
    iget-object v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 255
    iget-object v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    :cond_3
    mul-float v6, v2, v11

    mul-float v4, v6, v11

    .line 260
    .local v4, headerMoveHeight:F
    iget v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mInitTop:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mCurrentTop:I

    .line 261
    iget v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mInitBottom:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mCurrentBottom:I

    .line 264
    mul-float v1, v2, v11

    .line 267
    .local v1, contentMoveHeight:F
    iget v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mCurrentBottom:I

    iget v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeaderVisibleHeight:I

    sub-int v3, v6, v7

    .line 268
    .local v3, headerBottom:I
    iget-object v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    float-to-int v5, v6

    .line 269
    .local v5, top:I
    iget-object v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    float-to-int v0, v6

    .line 271
    .local v0, bottom:I
    if-gt v5, v3, :cond_4

    .line 273
    iget-object v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    iget-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7, v5, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 276
    iget-object v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    iget-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/didi/common/ui/component/PullScrollView;->mCurrentTop:I

    iget-object v9, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Lcom/didi/common/ui/component/PullScrollView;->mCurrentBottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 280
    .end local v0           #bottom:I
    .end local v1           #contentMoveHeight:F
    .end local v3           #headerBottom:I
    .end local v4           #headerMoveHeight:F
    .end local v5           #top:I
    :cond_4
    return-void

    .line 223
    :cond_5
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    sget-object v8, Lcom/didi/common/ui/component/PullScrollView$State;->NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

    if-ne v7, v8, :cond_1

    .line 224
    sget-object v7, Lcom/didi/common/ui/component/PullScrollView$State;->DOWN:Lcom/didi/common/ui/component/PullScrollView$State;

    iput-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    goto/16 :goto_0

    :cond_6
    move v2, v6

    .line 227
    goto/16 :goto_1

    .line 232
    :cond_7
    iget-object v7, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    sget-object v8, Lcom/didi/common/ui/component/PullScrollView$State;->DOWN:Lcom/didi/common/ui/component/PullScrollView$State;

    if-ne v7, v8, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/didi/common/ui/component/PullScrollView;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_8

    .line 235
    iput-boolean v10, p0, Lcom/didi/common/ui/component/PullScrollView;->mEnableTouch:Z

    .line 236
    iput-boolean v10, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    .line 239
    :cond_8
    cmpg-float v7, v2, v6

    if-gez v7, :cond_9

    move v2, v6

    .line 241
    :cond_9
    iget v6, p0, Lcom/didi/common/ui/component/PullScrollView;->progressBarY:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_a

    .line 242
    iget-object v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mOnRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    invoke-interface {v6}, Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;->onStart()V

    .line 245
    :cond_a
    iget v6, p0, Lcom/didi/common/ui/component/PullScrollView;->maxScrollY:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_2

    .line 246
    iput-boolean v9, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    .line 247
    iput-boolean v9, p0, Lcom/didi/common/ui/component/PullScrollView;->mEnableTouch:Z

    goto/16 :goto_2
.end method

.method private doTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 174
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 176
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/PullScrollView;->doActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 180
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    .line 183
    invoke-direct {p0}, Lcom/didi/common/ui/component/PullScrollView;->isNeedAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/didi/common/ui/component/PullScrollView;->rollBackAnimation()V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/ui/component/PullScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    .line 188
    sget-object v1, Lcom/didi/common/ui/component/PullScrollView$State;->NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

    iput-object v1, p0, Lcom/didi/common/ui/component/PullScrollView;->mState:Lcom/didi/common/ui/component/PullScrollView$State;

    .line 191
    :cond_1
    iput-boolean v2, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    .line 192
    iput-boolean v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mEnableTouch:Z

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 100
    invoke-virtual {p0, v3}, Lcom/didi/common/ui/component/PullScrollView;->setOverScrollMode(I)V

    .line 103
    :cond_0
    if-eqz p2, :cond_1

    .line 104
    sget-object v1, Lcom/sdu/didi/psnger/R$styleable;->PullScrollView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, ta:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 108
    const/high16 v1, -0x4080

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeaderVisibleHeight:I

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    .end local v0           #ta:Landroid/content/res/TypedArray;
    :cond_1
    const v1, 0x7f09015c

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/didi/common/ui/component/PullScrollView;->maxScrollY:I

    .line 114
    const v1, 0x7f09015d

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/didi/common/ui/component/PullScrollView;->progressBarY:I

    .line 115
    return-void
.end method

.method private isNeedAnimation()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/common/ui/component/PullScrollView;->isMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rollBackAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x0

    .line 283
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mInitTop:I

    iget v3, p0, Lcom/didi/common/ui/component/PullScrollView;->mCurrentTop:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v7, v7, v2, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 284
    .local v1, tranAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 285
    iget-object v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 287
    iget-object v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/didi/common/ui/component/PullScrollView;->mInitTop:I

    iget-object v5, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mInitBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 290
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-direct {v0, v7, v7, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 291
    .local v0, innerAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 292
    iget-object v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 293
    iget-object v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    iget-object v3, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 295
    iget-object v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 297
    iget-object v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mOnRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    invoke-interface {v2}, Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;->onRefresh()V

    .line 300
    iget v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mCurrentTop:I

    iget v3, p0, Lcom/didi/common/ui/component/PullScrollView;->mInitTop:I

    add-int/lit8 v3, v3, 0x64

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mOnRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/didi/common/ui/component/PullScrollView;->mOnRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    invoke-interface {v2}, Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;->onTurn()V

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/didi/common/ui/component/PullScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/PullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    .line 135
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mTouchDownY:F

    .line 150
    iget-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mInitTop:I

    iput v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mCurrentTop:I

    .line 151
    iget-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mInitBottom:I

    iput v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mCurrentBottom:I

    .line 153
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 141
    invoke-virtual {p0}, Lcom/didi/common/ui/component/PullScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/component/PullScrollView;->isTop:Z

    .line 144
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/PullScrollView;->doTouchEvent(Landroid/view/MotionEvent;)V

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/didi/common/ui/component/PullScrollView;->mEnableTouch:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/didi/common/ui/component/PullScrollView;->mHeader:Landroid/view/View;

    .line 124
    return-void
.end method

.method public setOnRefreshListener(Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;)V
    .locals 0
    .parameter "onRefreshLisener"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/didi/common/ui/component/PullScrollView;->mOnRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    .line 128
    return-void
.end method
