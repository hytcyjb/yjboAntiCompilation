.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/y;
.implements Landroid/support/v4/view/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static final v:[I


# instance fields
.field private A:Landroid/view/animation/Animation;

.field private B:Landroid/view/animation/Animation;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field private E:F

.field private F:Z

.field private G:I

.field private H:I

.field private I:Z

.field private J:Landroid/view/animation/Animation$AnimationListener;

.field private final K:Landroid/view/animation/Animation;

.field private final L:Landroid/view/animation/Animation;

.field protected a:I

.field protected b:I

.field private d:Landroid/view/View;

.field private e:Landroid/support/v4/widget/SwipeRefreshLayout$a;

.field private f:Z

.field private g:I

.field private h:F

.field private final i:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final j:[I

.field private final k:[I

.field private l:I

.field private m:I

.field private mCircleView:Landroid/support/v4/widget/a;

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/aa;

.field private mTotalUnconsumed:F

.field private n:Z

.field private o:F

.field private p:F

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Z

.field private final u:Landroid/view/animation/DecelerateInterpolator;

.field private w:I

.field private x:F

.field private y:Landroid/support/v4/widget/q;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, -0x1

    const/high16 v4, 0x4220

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 104
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 112
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:[I

    .line 113
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:[I

    .line 119
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    .line 124
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    .line 137
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    .line 168
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    .line 1081
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    .line 1105
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    .line 301
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    .line 303
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    .line 306
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 307
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Landroid/view/animation/DecelerateInterpolator;

    .line 309
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 310
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 311
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 313
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 314
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:I

    .line 315
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    .line 317
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d()V

    .line 318
    invoke-static {p0, v3}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;Z)V

    .line 320
    const/high16 v1, 0x4280

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    .line 321
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 322
    new-instance v0, Landroid/support/v4/view/aa;

    invoke-direct {v0, p0}, Landroid/support/v4/view/aa;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/aa;

    .line 324
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 325
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 326
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 723
    invoke-static {p1, p2}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 724
    if-gez v0, :cond_0

    .line 725
    const/high16 v0, -0x4080

    .line 727
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    return p1
.end method

.method private a(II)Landroid/view/animation/Animation;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 464
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    :goto_0
    return-object v0

    .line 467
    :cond_0
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 475
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 477
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 478
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->clearAnimation()V

    .line 479
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    .line 480
    goto :goto_0
.end method

.method private a(F)V
    .locals 14
    .parameter

    .prologue
    const/high16 v6, 0x4080

    const v13, 0x3f4ccccd

    const/4 v12, 0x0

    const/high16 v11, 0x4000

    const/high16 v10, 0x3f80

    .line 898
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/q;->a(Z)V

    .line 899
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v0, p1, v0

    .line 901
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 902
    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v0, v2

    const/high16 v2, 0x4040

    div-float v2, v0, v2

    .line 903
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    sub-float v3, v0, v3

    .line 904
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 906
    :goto_0
    mul-float v4, v0, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 908
    div-float v4, v3, v6

    float-to-double v4, v4

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float/2addr v3, v11

    .line 910
    mul-float v4, v0, v3

    mul-float/2addr v4, v11

    .line 912
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v5

    .line 914
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/a;->setVisibility(I)V

    .line 917
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-nez v1, :cond_1

    .line 918
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-static {v1, v10}, Landroid/support/v4/view/ah;->e(Landroid/view/View;F)V

    .line 919
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-static {v1, v10}, Landroid/support/v4/view/ah;->f(Landroid/view/View;F)V

    .line 922
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-eqz v1, :cond_2

    .line 923
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v1, p1, v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 925
    :cond_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_5

    .line 926
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v1}, Landroid/support/v4/widget/q;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    if-le v1, v4, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 929
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f()V

    .line 937
    :cond_3
    :goto_1
    mul-float v1, v2, v13

    .line 938
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v12, v1}, Landroid/support/v4/widget/q;->a(FF)V

    .line 939
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/q;->a(F)V

    .line 941
    const/high16 v1, -0x4180

    const v4, 0x3ecccccd

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    mul-float v2, v3, v11

    add-float/2addr v1, v2

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    .line 942
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/q;->b(F)V

    .line 943
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 944
    return-void

    .line 904
    :cond_4
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    goto/16 :goto_0

    .line 932
    :cond_5
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v1}, Landroid/support/v4/widget/q;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    if-ge v1, v4, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 934
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    goto :goto_1
.end method

.method private a(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1053
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1054
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1055
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1056
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1057
    if-eqz p2, :cond_0

    .line 1058
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1060
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->clearAnimation()V

    .line 1061
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1062
    return-void
.end method

.method private a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1137
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->bringToFront()V

    .line 1138
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a;->offsetTopAndBottom(I)V

    .line 1139
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    .line 1140
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1141
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    .line 1143
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 1146
    invoke-static {p1}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1147
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1148
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    if-ne v1, v2, :cond_0

    .line 1151
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1152
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    .line 1154
    :cond_0
    return-void

    .line 1151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->setVisibility(I)V

    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/q;->setAlpha(I)V

    .line 400
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    .line 406
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 407
    if-eqz p1, :cond_1

    .line 408
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 410
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->clearAnimation()V

    .line 411
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    return-void
.end method

.method private a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 428
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_0

    .line 429
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Z

    .line 430
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h()V

    .line 431
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 432
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eqz v0, :cond_1

    .line 433
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    return v0
.end method

.method private a(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter

    .prologue
    .line 894
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/q;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    return-object v0
.end method

.method private b(F)V
    .locals 3
    .parameter

    .prologue
    .line 1099
    .line 1100
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1101
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1102
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 1103
    return-void
.end method

.method private b(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1065
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-eqz v0, :cond_0

    .line 1067
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1079
    :goto_0
    return-void

    .line 1069
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1070
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1071
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1072
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1073
    if-eqz p2, :cond_1

    .line 1074
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1076
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->clearAnimation()V

    .line 1077
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    return-void
.end method

.method private b(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter

    .prologue
    .line 441
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/view/animation/Animation;

    .line 447
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 448
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 449
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->clearAnimation()V

    .line 450
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 451
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->clearAnimation()V

    .line 197
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0}, Landroid/support/v4/widget/q;->stop()V

    .line 198
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->setVisibility(I)V

    .line 199
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 201
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 207
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    .line 208
    return-void

    .line 204
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    goto :goto_0
.end method

.method private c(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1114
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1115
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0}, Landroid/support/v4/widget/q;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    .line 1120
    :goto_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    .line 1128
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1129
    if-eqz p2, :cond_0

    .line 1130
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1132
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->clearAnimation()V

    .line 1133
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1134
    return-void

    .line 1118
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-static {v0}, Landroid/support/v4/view/ah;->t(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$a;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const v3, -0x50506

    .line 344
    new-instance v0, Landroid/support/v4/widget/a;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a0

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    .line 345
    new-instance v0, Landroid/support/v4/widget/q;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/widget/q;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    .line 346
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/q;->b(I)V

    .line 347
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 350
    return-void
.end method

.method static synthetic e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/a;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0}, Landroid/support/v4/widget/q;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/view/animation/Animation;

    .line 455
    return-void
.end method

.method static synthetic f(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()V

    return-void
.end method

.method private finishSpinner(F)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 947
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 948
    invoke-direct {p0, v3, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    .line 977
    :goto_0
    return-void

    .line 951
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 952
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/q;->a(FF)V

    .line 953
    const/4 v0, 0x0

    .line 954
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-nez v1, :cond_1

    .line 955
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 974
    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 975
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/q;->a(Z)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0}, Landroid/support/v4/widget/q;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    .line 459
    return-void
.end method

.method static synthetic g(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 560
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 561
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 562
    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 567
    :cond_0
    return-void

    .line 559
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic h(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    return v0
.end method

.method static synthetic j(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    return v0
.end method

.method private setAnimationProgress(F)V
    .locals 1
    .parameter

    .prologue
    .line 419
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-static {v0, p1}, Landroid/support/v4/view/ah;->e(Landroid/view/View;F)V

    .line 423
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-static {v0, p1}, Landroid/support/v4/view/ah;->f(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/q;->setAlpha(I)V

    .line 219
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    return v0
.end method

.method public b()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 648
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_5

    .line 649
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 651
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    .line 658
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 651
    goto :goto_0

    .line 655
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    move v0, v2

    goto :goto_0

    .line 658
    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 890
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 868
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 329
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    if-gez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return p2

    .line 331
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 333
    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    goto :goto_0

    .line 334
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    if-lt p2, v0, :cond_0

    .line 336
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/aa;

    invoke-virtual {v0}, Landroid/support/v4/view/aa;->a()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->b()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->a()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 213
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()V

    .line 214
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x4080

    const/4 v0, 0x0

    .line 664
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h()V

    .line 666
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 668
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 669
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    .line 672
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v2, :cond_2

    .line 719
    :cond_1
    :goto_0
    return v0

    .line 678
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 719
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    goto :goto_0

    .line 680
    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v2}, Landroid/support/v4/widget/a;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 681
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    .line 682
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    .line 683
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 684
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    .line 687
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    goto :goto_1

    .line 691
    :pswitch_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    if-ne v1, v4, :cond_4

    .line 692
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    :cond_4
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 697
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    .line 700
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    sub-float v0, v1, v0

    .line 701
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    if-nez v0, :cond_3

    .line 702
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    .line 703
    iput-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    .line 704
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/q;->setAlpha(I)V

    goto :goto_1

    .line 709
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 714
    :pswitch_4
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    .line 715
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    goto :goto_1

    .line 678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    .line 581
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    .line 582
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v2, :cond_2

    .line 586
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h()V

    .line 588
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 592
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    .line 593
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    .line 594
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 595
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 596
    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 597
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->getMeasuredWidth()I

    move-result v1

    .line 598
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v2}, Landroid/support/v4/widget/a;->getMeasuredHeight()I

    move-result v2

    .line 599
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/support/v4/widget/a;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 605
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 606
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 607
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h()V

    .line 609
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_2

    .line 630
    :cond_1
    :goto_0
    return-void

    .line 612
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 616
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/a;->measure(II)V

    .line 618
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    if-nez v0, :cond_3

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    .line 620
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    .line 622
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    .line 624
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 625
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    if-ne v1, v2, :cond_4

    .line 626
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    goto :goto_0

    .line 624
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 874
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 765
    if-lez p3, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 766
    int-to-float v0, p3

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 767
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    .line 768
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 774
    :goto_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    .line 781
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    aget v0, p4, v4

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 783
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->setVisibility(I)V

    .line 787
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:[I

    .line 788
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 790
    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    .line 792
    :cond_2
    return-void

    .line 770
    :cond_3
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 771
    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 817
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 825
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p5

    .line 826
    if-gez v0, :cond_0

    .line 827
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 828
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    .line 830
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/aa;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/aa;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 756
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 757
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 759
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 801
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/aa;->a(Landroid/view/View;)V

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 805
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 806
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 807
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 810
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 811
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    const/4 v0, 0x0

    .line 981
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 984
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 985
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    .line 988
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v2, :cond_2

    .line 1049
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 993
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 1049
    :cond_3
    :goto_1
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 995
    :pswitch_2
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    .line 996
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    goto :goto_1

    .line 1000
    :pswitch_3
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    invoke-static {p1, v1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1001
    if-gez v1, :cond_4

    .line 1002
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1006
    :cond_4
    invoke-static {p1, v1}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1007
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 1008
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    if-eqz v2, :cond_3

    .line 1009
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 1010
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    goto :goto_1

    .line 1018
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1019
    if-gez v1, :cond_5

    .line 1020
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1023
    :cond_5
    invoke-static {p1, v1}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    goto :goto_1

    .line 1028
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1032
    :pswitch_6
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    invoke-static {p1, v1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1033
    if-gez v1, :cond_6

    .line 1034
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1038
    :cond_6
    invoke-static {p1, v1}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1039
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 1040
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    .line 1041
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1042
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:I

    goto :goto_0

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter

    .prologue
    .line 735
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->E(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 741
    :cond_1
    :goto_0
    return-void

    .line 739
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 516
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .parameter

    .prologue
    .line 543
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->h()V

    .line 544
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/q;->a([I)V

    .line 545
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .parameter

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 527
    array-length v0, p1

    new-array v2, v0, [I

    .line 528
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 529
    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 532
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .parameter

    .prologue
    .line 575
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 576
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 836
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(Z)V

    .line 837
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/widget/SwipeRefreshLayout$a;

    .line 358
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 489
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a;->setBackgroundColor(I)V

    .line 507
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/q;->b(I)V

    .line 508
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 498
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 374
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_1

    .line 376
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 378
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    if-nez v0, :cond_0

    .line 379
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 383
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 385
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Z

    .line 386
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 390
    :goto_1
    return-void

    .line 381
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    float-to-int v0, v0

    goto :goto_0

    .line 388
    :cond_1
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 2
    .parameter

    .prologue
    .line 266
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 270
    if-nez p1, :cond_1

    .line 271
    const/high16 v1, 0x4260

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    .line 278
    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/q;->a(I)V

    .line 280
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/a;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/a;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 273
    :cond_1
    const/high16 v1, 0x4220

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    goto :goto_1
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .parameter

    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->c()V

    .line 852
    return-void
.end method
