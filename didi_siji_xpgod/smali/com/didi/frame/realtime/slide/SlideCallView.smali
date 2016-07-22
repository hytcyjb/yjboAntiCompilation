.class public Lcom/didi/frame/realtime/slide/SlideCallView;
.super Landroid/widget/RelativeLayout;
.source "SlideCallView.java"


# static fields
.field public static final REALTIME_SLIDE_CALL_HOME_SELECT:I = 0x1

.field public static final REALTIME_SLIDE_CALL_UN_SELECT:I = 0x0

.field public static final REALTIME_SLIDE_CALL_WORK_SELECT:I = 0x2

.field public static final SCALE_ANIMATION_DURATION:I = 0x14


# instance fields
.field private isAnimating:Z

.field private mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

.field private mHomeSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

.field private mItem:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

.field private mWorkSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/realtime/slide/SlideCallView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->homeSelect()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/realtime/slide/SlideCallView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->workSelect()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/realtime/slide/SlideCallView;)Lcom/didi/frame/realtime/slide/SlideItemNormalView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/realtime/slide/SlideCallView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/didi/frame/realtime/slide/SlideCallView;->setVisible(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/frame/realtime/slide/SlideCallView;)Lcom/didi/frame/realtime/slide/SlideItemNormalView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/didi/frame/realtime/slide/SlideCallView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->isAnimating:Z

    return p1
.end method

.method private getStateHeight()I
    .locals 4

    .prologue
    .line 235
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 236
    .local v0, contentViewTop:I
    const-string v1, "VoiceCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusBarHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v0
.end method

.method private homeSelect()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 161
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setGone(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setVisible(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setVisible(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setGone(Landroid/view/View;)V

    .line 165
    iget v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mItem:I

    if-eq v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->scaleToSelectAnimation(Landroid/view/View;)V

    .line 167
    :cond_0
    iput v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mItem:I

    .line 168
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e6

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0804ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    iput-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    .line 55
    iget-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-virtual {v1}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->setItemHome()V

    .line 56
    const v1, 0x7f0804ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    iput-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    .line 57
    iget-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-virtual {v1}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->setItemWork()V

    .line 58
    const v1, 0x7f0804ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    iput-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    .line 59
    iget-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-virtual {v1}, Lcom/didi/frame/realtime/slide/SlideItemSelectView;->setItemHome()V

    .line 60
    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    iput-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    .line 61
    iget-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-virtual {v1}, Lcom/didi/frame/realtime/slide/SlideItemSelectView;->setItemWork()V

    .line 62
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setListener()V

    .line 63
    return-void
.end method

.method private scaleToNormalAnimation(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/high16 v1, 0x3f80

    const v2, 0x3f5eb852

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    .line 201
    iput-boolean v5, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->isAnimating:Z

    .line 202
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 204
    .local v0, mScaleAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 205
    new-instance v1, Lcom/didi/frame/realtime/slide/SlideCallView$3;

    invoke-direct {v1, p0}, Lcom/didi/frame/realtime/slide/SlideCallView$3;-><init>(Lcom/didi/frame/realtime/slide/SlideCallView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    return-void
.end method

.method private scaleToSelectAnimation(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    const v1, 0x3f5eb852

    const/high16 v6, 0x3f00

    .line 193
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 195
    .local v0, mScaleAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    return-void
.end method

.method private select(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->homeSelect()V

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->workSelect()V

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->unSelect()V

    goto :goto_0
.end method

.method private selectOnVelocity(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->getSelectItem()I

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->homeSelect()V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->workSelect()V

    goto :goto_0
.end method

.method private setGone(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_0
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    new-instance v1, Lcom/didi/frame/realtime/slide/SlideCallView$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/realtime/slide/SlideCallView$1;-><init>(Lcom/didi/frame/realtime/slide/SlideCallView;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    new-instance v1, Lcom/didi/frame/realtime/slide/SlideCallView$2;

    invoke-direct {v1, p0}, Lcom/didi/frame/realtime/slide/SlideCallView$2;-><init>(Lcom/didi/frame/realtime/slide/SlideCallView;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method private setVisible(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    return-void
.end method

.method private unSelect()V
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->scaleToNormalAnimation(Landroid/view/View;)V

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setGone(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setGone(Landroid/view/View;)V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mItem:I

    .line 157
    return-void

    .line 148
    :cond_1
    iget v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mItem:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->scaleToNormalAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-boolean v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->isAnimating:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setVisible(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setVisible(Landroid/view/View;)V

    goto :goto_0
.end method

.method private workSelect()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 172
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setVisible(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setGone(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setGone(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->setVisible(Landroid/view/View;)V

    .line 176
    iget v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mItem:I

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkSelect:Lcom/didi/frame/realtime/slide/SlideItemSelectView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->scaleToSelectAnimation(Landroid/view/View;)V

    .line 178
    :cond_0
    iput v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mItem:I

    .line 179
    return-void
.end method


# virtual methods
.method public getSelectItem()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mItem:I

    return v0
.end method

.method public onMove(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 88
    iget-object v2, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 89
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 92
    iget-object v2, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 94
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 95
    .local v1, y:F
    invoke-virtual {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->getBottom()I

    move-result v2

    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->getStateHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 96
    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->select(F)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->unSelect()V

    goto :goto_0
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    .line 108
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 111
    .local v0, vt:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vtitem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/frame/realtime/slide/SlideCallView;->mItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42c8

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/realtime/slide/SlideCallView;->getSelectItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/didi/frame/realtime/slide/SlideCallView;->selectOnVelocity(F)V

    goto :goto_0
.end method
