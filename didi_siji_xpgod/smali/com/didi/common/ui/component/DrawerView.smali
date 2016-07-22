.class public Lcom/didi/common/ui/component/DrawerView;
.super Landroid/view/ViewGroup;
.source "DrawerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/DrawerView$1;,
        Lcom/didi/common/ui/component/DrawerView$SlidingHandler;,
        Lcom/didi/common/ui/component/DrawerView$DrawerToggler;,
        Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;,
        Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;,
        Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field public static final LOG_TAG:Ljava/lang/String; = "Sliding"

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORI_BOTTOM_TOP:I = 0x1

.field public static final ORI_LEFT_RIGHT:I = 0x2

.field public static final ORI_RIGHT_LEFT:I = 0x0

.field public static final ORI_TOP_BOTTOM:I = 0x3

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mInvert:Z

.field private mLocked:Z

.field private mMaximumAcceleration:I

.field private mMaximumMajorVelocity:I

.field private mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/didi/common/ui/component/DrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/high16 v9, 0x3f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mFrame:Landroid/graphics/Rect;

    .line 58
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvalidate:Landroid/graphics/Rect;

    .line 68
    iput v6, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    .line 76
    new-instance v5, Lcom/didi/common/ui/component/DrawerView$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/didi/common/ui/component/DrawerView$SlidingHandler;-><init>(Lcom/didi/common/ui/component/DrawerView;Lcom/didi/common/ui/component/DrawerView$1;)V

    iput-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    .line 156
    sget-object v5, Lcom/sdu/didi/psnger/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 159
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    if-ne v4, v10, :cond_2

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    .line 160
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    .line 161
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    .line 162
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mAllowSingleTap:Z

    .line 163
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimateOnClick:Z

    .line 164
    if-eq v4, v10, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :cond_1
    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    .line 166
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 167
    .local v3, handleId:I
    if-nez v3, :cond_4

    .line 168
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_2
    move v5, v6

    .line 159
    goto :goto_0

    :cond_3
    move v5, v6

    .line 164
    goto :goto_1

    .line 171
    .restart local v3       #handleId:I
    :cond_4
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 172
    .local v1, contentId:I
    if-nez v1, :cond_5

    .line 173
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 176
    :cond_5
    if-ne v3, v1, :cond_6

    .line 177
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    :cond_6
    iput v3, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleId:I

    .line 180
    iput v1, p0, Lcom/didi/common/ui/component/DrawerView;->mContentId:I

    .line 182
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 183
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mTapThreshold:I

    .line 184
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumTapVelocity:I

    .line 185
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMinorVelocity:I

    .line 186
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    .line 187
    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    .line 188
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mVelocityUnits:I

    .line 190
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v5, :cond_7

    .line 191
    iget v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    neg-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    .line 192
    iget v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    .line 193
    iget v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMinorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMinorVelocity:I

    .line 196
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    invoke-virtual {p0, v6}, Lcom/didi/common/ui/component/DrawerView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 198
    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/component/DrawerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/component/DrawerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/component/DrawerView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/DrawerView;->prepareTracking(I)V

    .line 477
    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/didi/common/ui/component/DrawerView;->performFling(IFZ)V

    .line 478
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/DrawerView;->prepareTracking(I)V

    .line 482
    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/didi/common/ui/component/DrawerView;->performFling(IFZ)V

    .line 483
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 893
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/DrawerView;->moveHandle(I)V

    .line 894
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-nez v0, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    .line 902
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerCloseListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerCloseListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x10

    const/16 v4, 0x3e8

    const/4 v3, 0x0

    .line 741
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->incrementAnimation()V

    .line 744
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v0, :cond_4

    .line 745
    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    iget v1, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 746
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    .line 747
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->closeDrawer()V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget v1, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    iget v2, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getHeight()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    .line 749
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    .line 750
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->openDrawer()V

    goto :goto_0

    .line 748
    :cond_2
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getWidth()I

    move-result v0

    goto :goto_1

    .line 752
    :cond_3
    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/DrawerView;->moveHandle(I)V

    .line 753
    iget-wide v0, p0, Lcom/didi/common/ui/component/DrawerView;->mCurrentAnimationTime:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/didi/common/ui/component/DrawerView;->mCurrentAnimationTime:J

    .line 754
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/component/DrawerView;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 757
    :cond_4
    iget v1, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    iget v2, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getHeight()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_6

    .line 758
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    .line 759
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->closeDrawer()V

    goto :goto_0

    .line 757
    :cond_5
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getWidth()I

    move-result v0

    goto :goto_2

    .line 760
    :cond_6
    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    iget v1, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 761
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    .line 762
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->openDrawer()V

    goto :goto_0

    .line 764
    :cond_7
    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/DrawerView;->moveHandle(I)V

    .line 765
    iget-wide v0, p0, Lcom/didi/common/ui/component/DrawerView;->mCurrentAnimationTime:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/didi/common/ui/component/DrawerView;->mCurrentAnimationTime:J

    .line 766
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/didi/common/ui/component/DrawerView;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 773
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 774
    .local v1, now:J
    iget-wide v6, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 775
    .local v4, t:F
    iget v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    .line 776
    .local v3, position:F
    iget v5, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    .line 777
    .local v5, v:F
    iget-boolean v6, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedAcceleration:F

    .line 778
    .local v0, a:F
    :goto_0
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    .line 779
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    .line 780
    iput-wide v1, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationLastTime:J

    .line 781
    return-void

    .line 777
    .end local v0           #a:F
    :cond_0
    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedAcceleration:F

    goto :goto_0
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 602
    iget-object v3, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    .line 604
    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v7, :cond_6

    .line 605
    if-ne p1, v9, :cond_1

    .line 606
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_0

    .line 607
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 610
    :goto_0
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->invalidate()V

    .line 675
    :goto_1
    return-void

    .line 609
    :cond_0
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 611
    :cond_1
    if-ne p1, v8, :cond_3

    .line 612
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_2

    .line 613
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 617
    :goto_2
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->invalidate()V

    goto :goto_1

    .line 615
    :cond_2
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 619
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 620
    .local v6, top:I
    sub-int v1, p1, v6

    .line 621
    .local v1, deltaY:I
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    if-ge p1, v7, :cond_5

    .line 622
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int v1, v7, v6

    .line 627
    :cond_4
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 629
    iget-object v2, p0, Lcom/didi/common/ui/component/DrawerView;->mFrame:Landroid/graphics/Rect;

    .line 630
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvalidate:Landroid/graphics/Rect;

    .line 632
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 633
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 635
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 636
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 638
    invoke-virtual {p0, v5}, Lcom/didi/common/ui/component/DrawerView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 623
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_5
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_4

    .line 624
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_3

    .line 641
    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_6
    if-ne p1, v9, :cond_8

    .line 642
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_7

    .line 643
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 646
    :goto_4
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->invalidate()V

    goto/16 :goto_1

    .line 645
    :cond_7
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 647
    :cond_8
    if-ne p1, v8, :cond_a

    .line 648
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_9

    .line 649
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 652
    :goto_5
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->invalidate()V

    goto/16 :goto_1

    .line 651
    :cond_9
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_5

    .line 654
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 655
    .local v4, left:I
    sub-int v0, p1, v4

    .line 656
    .local v0, deltaX:I
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    if-ge p1, v7, :cond_c

    .line 657
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int v0, v7, v4

    .line 661
    :cond_b
    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 663
    iget-object v2, p0, Lcom/didi/common/ui/component/DrawerView;->mFrame:Landroid/graphics/Rect;

    .line 664
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvalidate:Landroid/graphics/Rect;

    .line 666
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 667
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 669
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 670
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 672
    invoke-virtual {p0, v5}, Lcom/didi/common/ui/component/DrawerView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 658
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_c
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_b

    .line 659
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_6
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 908
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/DrawerView;->moveHandle(I)V

    .line 909
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    .line 917
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerOpenListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerOpenListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 11
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    .line 486
    int-to-float v7, p1

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    .line 487
    iput p2, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    .line 493
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-eqz v7, :cond_11

    .line 494
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v0

    .line 495
    .local v0, bottom:I
    :goto_0
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v7, :cond_3

    iget v4, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    .line 497
    .local v4, handleHeight:I
    :goto_1
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_4

    const/4 v1, 0x1

    .line 498
    .local v1, c1:Z
    :goto_2
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_8

    add-int v7, p1, v4

    sub-int v7, v0, v7

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    add-int/2addr v7, v8

    if-le v7, v4, :cond_7

    const/4 v2, 0x1

    .line 500
    .local v2, c2:Z
    :goto_3
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_c

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_b

    const/4 v3, 0x1

    .line 501
    .local v3, c3:Z
    :goto_4
    if-nez p3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    .line 503
    :cond_0
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    int-to-float v7, v7

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedAcceleration:F

    .line 504
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_e

    .line 505
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    .line 506
    const/4 v7, 0x0

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    .line 564
    .end local v0           #bottom:I
    .end local v4           #handleHeight:I
    :cond_1
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 565
    .local v5, now:J
    iput-wide v5, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationLastTime:J

    .line 566
    const-wide/16 v7, 0x10

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/didi/common/ui/component/DrawerView;->mCurrentAnimationTime:J

    .line 567
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    .line 568
    iget-object v7, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 569
    iget-object v7, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-wide v9, p0, Lcom/didi/common/ui/component/DrawerView;->mCurrentAnimationTime:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 570
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->stopTracking()V

    .line 571
    return-void

    .line 494
    .end local v1           #c1:Z
    .end local v2           #c2:Z
    .end local v3           #c3:Z
    .end local v5           #now:J
    :cond_2
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getRight()I

    move-result v0

    goto :goto_0

    .line 495
    .restart local v0       #bottom:I
    :cond_3
    iget v4, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    goto :goto_1

    .line 497
    .restart local v4       #handleHeight:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 498
    .restart local v1       #c1:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    :goto_6
    add-int/2addr v7, v8

    if-le p1, v7, :cond_a

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 500
    .restart local v2       #c2:Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_d

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    goto :goto_4

    .line 509
    .restart local v3       #c3:Z
    :cond_e
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 510
    const/4 v7, 0x0

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    goto :goto_5

    .line 517
    :cond_f
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    neg-int v7, v7

    int-to-float v7, v7

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedAcceleration:F

    .line 519
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_10

    .line 520
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 521
    const/4 v7, 0x0

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    goto :goto_5

    .line 524
    :cond_10
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    .line 525
    const/4 v7, 0x0

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 533
    .end local v0           #bottom:I
    .end local v1           #c1:Z
    .end local v2           #c2:Z
    .end local v3           #c3:Z
    .end local v4           #handleHeight:I
    :cond_11
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_14

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_13

    const/4 v1, 0x1

    .line 534
    .restart local v1       #c1:Z
    :goto_7
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_18

    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v7, :cond_16

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getHeight()I

    move-result v7

    :goto_8
    div-int/lit8 v7, v7, 0x2

    if-ge p1, v7, :cond_17

    const/4 v2, 0x1

    .line 535
    .restart local v2       #c2:Z
    :goto_9
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_1c

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1b

    const/4 v3, 0x1

    .line 537
    .restart local v3       #c3:Z
    :goto_a
    if-nez p3, :cond_1f

    if-nez v1, :cond_12

    if-eqz v2, :cond_1f

    if-eqz v3, :cond_1f

    .line 538
    :cond_12
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    int-to-float v7, v7

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedAcceleration:F

    .line 540
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_1e

    .line 541
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    .line 542
    const/4 v7, 0x0

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 533
    .end local v1           #c1:Z
    .end local v2           #c2:Z
    .end local v3           #c3:Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_7

    :cond_14
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_15

    const/4 v1, 0x1

    goto :goto_7

    :cond_15
    const/4 v1, 0x0

    goto :goto_7

    .line 534
    .restart local v1       #c1:Z
    :cond_16
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getWidth()I

    move-result v7

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    goto :goto_9

    :cond_18
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v7, :cond_19

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getHeight()I

    move-result v7

    :goto_b
    div-int/lit8 v7, v7, 0x2

    if-le p1, v7, :cond_1a

    const/4 v2, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getWidth()I

    move-result v7

    goto :goto_b

    :cond_1a
    const/4 v2, 0x0

    goto :goto_9

    .line 535
    .restart local v2       #c2:Z
    :cond_1b
    const/4 v3, 0x0

    goto :goto_a

    :cond_1c
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1d

    const/4 v3, 0x1

    goto :goto_a

    :cond_1d
    const/4 v3, 0x0

    goto :goto_a

    .line 545
    .restart local v3       #c3:Z
    :cond_1e
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 546
    const/4 v7, 0x0

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 550
    :cond_1f
    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    neg-int v7, v7

    int-to-float v7, v7

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedAcceleration:F

    .line 552
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v7, :cond_20

    .line 553
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 554
    const/4 v7, 0x0

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 557
    :cond_20
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    .line 558
    const/4 v7, 0x0

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    goto/16 :goto_5
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 678
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 724
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    .line 685
    .local v0, content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 687
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v5, :cond_3

    .line 688
    iget v1, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    .line 689
    .local v1, handleHeight:I
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int v3, v5, v6

    .line 690
    .local v3, height:I
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 694
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v5, :cond_2

    .line 695
    iget v5, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 720
    .end local v1           #handleHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 721
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 723
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 697
    .restart local v1       #handleHeight:I
    .restart local v3       #height:I
    :cond_2
    iget v5, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 703
    .end local v1           #handleHeight:I
    .end local v3           #height:I
    :cond_3
    iget-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 704
    .local v2, handleWidth:I
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int v4, v5, v6

    .line 705
    .local v4, width:I
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 709
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v5, :cond_4

    .line 710
    iget v5, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    iget v6, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 712
    :cond_4
    iget v5, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 574
    iput-boolean v4, p0, Lcom/didi/common/ui/component/DrawerView;->mTracking:Z

    .line 575
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 576
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 578
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_3

    .line 579
    iget v3, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedAcceleration:F

    .line 580
    iget v3, p0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimatedVelocity:F

    .line 581
    iget-boolean v3, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v3, :cond_1

    .line 582
    iget v3, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    int-to-float v3, v3

    iput v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    .line 585
    :goto_1
    iget v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/didi/common/ui/component/DrawerView;->moveHandle(I)V

    .line 586
    iput-boolean v4, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    .line 587
    iget-object v3, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 589
    .local v0, now:J
    iput-wide v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationLastTime:J

    .line 590
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/didi/common/ui/component/DrawerView;->mCurrentAnimationTime:J

    .line 591
    iput-boolean v4, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    .line 599
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v3

    .line 576
    goto :goto_0

    .line 584
    .restart local v2       #opening:Z
    :cond_1
    iget v5, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_3
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimationPosition:F

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_3

    .line 593
    :cond_3
    iget-boolean v4, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    if-eqz v4, :cond_4

    .line 594
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    .line 595
    iget-object v3, p0, Lcom/didi/common/ui/component/DrawerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    :cond_4
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/DrawerView;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 727
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 728
    iput-boolean v1, p0, Lcom/didi/common/ui/component/DrawerView;->mTracking:Z

    .line 730
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerScrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerScrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;->onScrollEnded()V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 738
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->prepareContent()V

    .line 857
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerScrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;

    .line 858
    .local v0, scrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 859
    invoke-interface {v0}, Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;->onScrollStarted()V

    .line 861
    :cond_0
    iget-boolean v1, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/didi/common/ui/component/DrawerView;->animateClose(I)V

    .line 863
    if-eqz v0, :cond_1

    .line 864
    invoke-interface {v0}, Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;->onScrollEnded()V

    .line 866
    :cond_1
    return-void

    .line 861
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->prepareContent()V

    .line 879
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerScrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;

    .line 880
    .local v0, scrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 881
    invoke-interface {v0}, Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;->onScrollStarted()V

    .line 883
    :cond_0
    iget-boolean v1, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/didi/common/ui/component/DrawerView;->animateOpen(I)V

    .line 885
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/DrawerView;->sendAccessibilityEvent(I)V

    .line 887
    if-eqz v0, :cond_1

    .line 888
    invoke-interface {v0}, Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;->onScrollEnded()V

    .line 890
    :cond_1
    return-void

    .line 883
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-nez v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->animateOpen()V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->closeDrawer()V

    .line 842
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->invalidate()V

    .line 843
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->requestLayout()V

    .line 844
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getDrawingTime()J

    move-result-wide v1

    .line 248
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    .line 249
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    .line 251
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/didi/common/ui/component/DrawerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 253
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mTracking:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    if-eqz v5, :cond_b

    .line 254
    :cond_0
    iget-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 256
    if-eqz v4, :cond_3

    .line 257
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v5, :cond_2

    .line 258
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->invalidate()V

    .line 281
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-void

    .line 260
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 263
    :cond_3
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :goto_2
    invoke-virtual {p1, v0, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_2

    .line 266
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 267
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v5, :cond_8

    .line 268
    if-eqz v4, :cond_6

    move v7, v6

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    :goto_4
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    :goto_5
    iget-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/didi/common/ui/component/DrawerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 268
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    move v7, v5

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_4

    .line 272
    :cond_8
    if-eqz v4, :cond_a

    move v5, v6

    :goto_6
    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    :cond_9
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    goto :goto_6

    .line 278
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_b
    iget-boolean v5, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 279
    iget-object v5, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/didi/common/ui/component/DrawerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mLocked:Z

    .line 989
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 202
    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/didi/common/ui/component/DrawerView$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/didi/common/ui/component/DrawerView$DrawerToggler;-><init>(Lcom/didi/common/ui/component/DrawerView;Lcom/didi/common/ui/component/DrawerView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget v0, p0, Lcom/didi/common/ui/component/DrawerView;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 333
    iget-boolean v9, p0, Lcom/didi/common/ui/component/DrawerView;->mLocked:Z

    if-eqz v9, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v7

    .line 337
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 339
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 340
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 342
    .local v6, y:F
    iget-object v1, p0, Lcom/didi/common/ui/component/DrawerView;->mFrame:Landroid/graphics/Rect;

    .line 343
    .local v1, frame:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    .line 345
    .local v2, handle:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 346
    iget-boolean v9, p0, Lcom/didi/common/ui/component/DrawerView;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 350
    :cond_2
    if-nez v0, :cond_4

    .line 351
    iput-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mTracking:Z

    .line 353
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 355
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->prepareContent()V

    .line 358
    iget-object v7, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerScrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;

    if-eqz v7, :cond_3

    .line 359
    iget-object v7, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerScrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;

    invoke-interface {v7}, Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;->onScrollStarted()V

    .line 362
    :cond_3
    iget-boolean v7, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v7, :cond_5

    .line 363
    iget-object v7, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 364
    .local v4, top:I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTouchDelta:I

    .line 365
    invoke-direct {p0, v4}, Lcom/didi/common/ui/component/DrawerView;->prepareTracking(I)V

    .line 371
    .end local v4           #top:I
    :goto_1
    iget-object v7, p0, Lcom/didi/common/ui/component/DrawerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v7, v8

    .line 374
    goto :goto_0

    .line 367
    :cond_5
    iget-object v7, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 368
    .local v3, left:I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/didi/common/ui/component/DrawerView;->mTouchDelta:I

    .line 369
    invoke-direct {p0, v3}, Lcom/didi/common/ui/component/DrawerView;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 287
    iget-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mTracking:Z

    if-eqz v8, :cond_0

    .line 329
    :goto_0
    return-void

    .line 291
    :cond_0
    sub-int v7, p4, p2

    .line 292
    .local v7, width:I
    sub-int v6, p5, p3

    .line 294
    .local v6, height:I
    iget-object v1, p0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    .line 296
    .local v1, handle:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 297
    .local v5, handleWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 302
    .local v2, handleHeight:I
    iget-object v0, p0, Lcom/didi/common/ui/component/DrawerView;->mContent:Landroid/view/View;

    .line 304
    .local v0, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v8, :cond_4

    .line 305
    sub-int v8, v7, v5

    div-int/lit8 v3, v8, 0x2

    .line 306
    .local v3, handleLeft:I
    iget-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v8, :cond_2

    .line 307
    iget-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    sub-int v8, v6, v8

    sub-int v4, v8, v2

    .line 308
    .local v4, handleTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 326
    :goto_2
    add-int v8, v3, v5

    add-int v9, v4, v2

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 327
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    .line 328
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    goto :goto_0

    .line 307
    .end local v4           #handleTop:I
    :cond_1
    iget v4, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    goto :goto_1

    .line 310
    :cond_2
    iget-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v4, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    .line 311
    .restart local v4       #handleTop:I
    :goto_3
    const/4 v8, 0x0

    iget v9, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v9, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v11, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 310
    .end local v4           #handleTop:I
    :cond_3
    sub-int v8, v6, v2

    iget v9, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    add-int v4, v8, v9

    goto :goto_3

    .line 315
    .end local v3           #handleLeft:I
    :cond_4
    sub-int v8, v6, v2

    div-int/lit8 v4, v8, 0x2

    .line 316
    .restart local v4       #handleTop:I
    iget-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    if-eqz v8, :cond_6

    .line 317
    iget-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    sub-int v8, v7, v8

    sub-int v3, v8, v5

    .line 318
    .restart local v3       #handleLeft:I
    :goto_4
    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 317
    .end local v3           #handleLeft:I
    :cond_5
    iget v3, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    goto :goto_4

    .line 320
    :cond_6
    iget-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-eqz v8, :cond_7

    iget v3, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    .line 321
    .restart local v3       #handleLeft:I
    :goto_5
    iget v8, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v8, v5

    const/4 v9, 0x0

    iget v10, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v10, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 320
    .end local v3           #handleLeft:I
    :cond_7
    sub-int v8, v7, v5

    iget v9, p0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    add-int v3, v8, v9

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 217
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 218
    .local v6, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 219
    .local v7, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 220
    .local v3, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 222
    .local v4, heightSpecSize:I
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getHandle()Landroid/view/View;

    move-result-object v1

    .line 223
    .local v1, handle:Landroid/view/View;
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getContent()Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, content:Landroid/view/View;
    invoke-virtual {p0, v1, p1, p2}, Lcom/didi/common/ui/component/DrawerView;->measureChild(Landroid/view/View;II)V

    .line 226
    iget-boolean v8, p0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    if-eqz v8, :cond_1

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v4, v8

    iget v9, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int v2, v8, v9

    .line 228
    .local v2, height:I
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, p1, v8}, Landroid/view/View;->measure(II)V

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v4, v8, v9

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 231
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-le v8, v7, :cond_0

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 242
    .end local v2           #height:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/didi/common/ui/component/DrawerView;->setMeasuredDimension(II)V

    .line 243
    return-void

    .line 234
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v7, v8

    iget v9, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    sub-int v5, v8, v9

    .line 235
    .local v5, width:I
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->getContent()Landroid/view/View;

    move-result-object v8

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v9, p2}, Landroid/view/View;->measure(II)V

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    add-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v7, v8, v9

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 238
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mLocked:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 380
    const/16 v17, 0x1

    .line 472
    :goto_0
    return v17

    .line 383
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTracking:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/component/DrawerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 386
    .local v2, action:I
    packed-switch v2, :pswitch_data_0

    .line 472
    .end local v2           #action:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTracking:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mAnimating:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_23

    :cond_2
    const/16 v17, 0x1

    goto :goto_0

    .line 388
    .restart local v2       #action:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    :goto_2
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTouchDelta:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    goto :goto_2

    .line 392
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/common/ui/component/DrawerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 393
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mVelocityUnits:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 395
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 396
    .local v16, yVelocity:F
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 399
    .local v15, xVelocity:F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/didi/common/ui/component/DrawerView;->mVertical:Z

    .line 400
    .local v14, vertical:Z
    if-eqz v14, :cond_b

    .line 401
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_a

    const/4 v11, 0x1

    .line 402
    .local v11, negative:Z
    :goto_3
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_4

    .line 403
    neg-float v15, v15

    .line 406
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-gtz v17, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_7

    .line 407
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .line 420
    :cond_7
    :goto_4
    float-to-double v0, v15

    move-wide/from16 v17, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v12, v0

    .line 421
    .local v12, velocity:F
    if-eqz v11, :cond_8

    .line 422
    neg-float v12, v12

    .line 425
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v10

    .line 426
    .local v10, handleTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 427
    .local v8, handleLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 428
    .local v7, handleBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/component/DrawerView;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v9

    .line 430
    .local v9, handleRight:I
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mMaximumTapVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_21

    .line 436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 437
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v17

    sub-int v17, v17, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTapThreshold:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    const/4 v3, 0x1

    .line 438
    .local v3, c1:Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-ge v10, v0, :cond_11

    const/4 v4, 0x1

    .line 439
    .local v4, c2:Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/component/DrawerView;->getRight()I

    move-result v17

    sub-int v17, v17, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTapThreshold:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    const/4 v5, 0x1

    .line 440
    .local v5, c3:Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTapThreshold:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v8, v0, :cond_13

    const/4 v6, 0x1

    .line 448
    .local v6, c4:Z
    :goto_8
    if-eqz v14, :cond_19

    if-nez v3, :cond_9

    if-eqz v4, :cond_1a

    .line 450
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mAllowSingleTap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1e

    .line 451
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->playSoundEffect(I)V

    .line 453
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 454
    if-eqz v14, :cond_1b

    .end local v10           #handleTop:I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/didi/common/ui/component/DrawerView;->animateClose(I)V

    goto/16 :goto_1

    .line 401
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    .end local v6           #c4:Z
    .end local v7           #handleBottom:I
    .end local v8           #handleLeft:I
    .end local v9           #handleRight:I
    .end local v11           #negative:Z
    .end local v12           #velocity:F
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 410
    :cond_b
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_f

    const/4 v11, 0x1

    .line 411
    .restart local v11       #negative:Z
    :goto_a
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_c

    .line 412
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    .line 415
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-gtz v17, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_7

    .line 416
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_4

    .line 410
    .end local v11           #negative:Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_a

    .line 437
    .restart local v7       #handleBottom:I
    .restart local v8       #handleLeft:I
    .restart local v9       #handleRight:I
    .restart local v10       #handleTop:I
    .restart local v11       #negative:Z
    .restart local v12       #velocity:F
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 438
    .restart local v3       #c1:Z
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 439
    .restart local v4       #c2:Z
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 440
    .restart local v5       #c3:Z
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 442
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTapThreshold:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v10, v0, :cond_15

    const/4 v3, 0x1

    .line 443
    .restart local v3       #c1:Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/component/DrawerView;->getBottom()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/component/DrawerView;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mHandleHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v10, v0, :cond_16

    const/4 v4, 0x1

    .line 444
    .restart local v4       #c2:Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTapThreshold:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTopOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v8, v0, :cond_17

    const/4 v5, 0x1

    .line 445
    .restart local v5       #c3:Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mBottomOffset:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/component/DrawerView;->getRight()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/component/DrawerView;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mHandleWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/ui/component/DrawerView;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v8, v0, :cond_18

    const/4 v6, 0x1

    .restart local v6       #c4:Z
    :goto_e
    goto/16 :goto_8

    .line 442
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    .end local v6           #c4:Z
    :cond_15
    const/4 v3, 0x0

    goto :goto_b

    .line 443
    .restart local v3       #c1:Z
    :cond_16
    const/4 v4, 0x0

    goto :goto_c

    .line 444
    .restart local v4       #c2:Z
    :cond_17
    const/4 v5, 0x0

    goto :goto_d

    .line 445
    .restart local v5       #c3:Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_e

    .line 448
    .restart local v6       #c4:Z
    :cond_19
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    .line 462
    :cond_1a
    if-eqz v14, :cond_20

    .end local v10           #handleTop:I
    :goto_f
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/didi/common/ui/component/DrawerView;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_1b
    move v10, v8

    .line 454
    goto/16 :goto_9

    .line 456
    :cond_1c
    if-eqz v14, :cond_1d

    .end local v10           #handleTop:I
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/didi/common/ui/component/DrawerView;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_1d
    move v10, v8

    goto :goto_10

    .line 459
    :cond_1e
    if-eqz v14, :cond_1f

    .end local v10           #handleTop:I
    :goto_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/didi/common/ui/component/DrawerView;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_1f
    move v10, v8

    goto :goto_11

    :cond_20
    move v10, v8

    .line 462
    goto :goto_f

    .line 465
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    .end local v6           #c4:Z
    :cond_21
    if-eqz v14, :cond_22

    .end local v10           #handleTop:I
    :goto_12
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/didi/common/ui/component/DrawerView;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_22
    move v10, v8

    goto :goto_12

    .line 472
    .end local v2           #action:I
    .end local v7           #handleBottom:I
    .end local v8           #handleLeft:I
    .end local v9           #handleRight:I
    .end local v10           #handleTop:I
    .end local v11           #negative:Z
    .end local v12           #velocity:F
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #vertical:Z
    .end local v15           #xVelocity:F
    .end local v16           #yVelocity:F
    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->openDrawer()V

    .line 828
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->invalidate()V

    .line 829
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->requestLayout()V

    .line 830
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/DrawerView;->sendAccessibilityEvent(I)V

    .line 831
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 939
    iput-object p1, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerCloseListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;

    .line 940
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 929
    iput-object p1, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerOpenListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;

    .line 930
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 951
    iput-object p1, p0, Lcom/didi/common/ui/component/DrawerView;->mOnDrawerScrollListener:Lcom/didi/common/ui/component/DrawerView$OnDrawerScrollListener;

    .line 952
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mExpanded:Z

    if-nez v0, :cond_0

    .line 794
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->openDrawer()V

    .line 798
    :goto_0
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->invalidate()V

    .line 799
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DrawerView;->requestLayout()V

    .line 800
    return-void

    .line 796
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/ui/component/DrawerView;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/component/DrawerView;->mLocked:Z

    .line 980
    return-void
.end method
