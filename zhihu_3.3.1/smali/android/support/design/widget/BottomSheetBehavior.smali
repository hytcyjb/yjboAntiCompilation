.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$b;,
        Landroid/support/design/widget/BottomSheetBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:Landroid/support/v4/widget/ag;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:I

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/support/design/widget/BottomSheetBehavior$a;

.field private o:Landroid/view/VelocityTracker;

.field private p:I

.field private q:I

.field private r:Z

.field private final s:Landroid/support/v4/widget/ag$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    .line 118
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    .line 520
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Landroid/support/v4/widget/ag$a;

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    .line 520
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Landroid/support/v4/widget/ag$a;

    .line 159
    sget-object v0, Landroid/support/design/a$i;->BottomSheetBehavior_Params:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    sget v1, Landroid/support/design/a$i;->BottomSheetBehavior_Params_behavior_peekHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->a(I)V

    .line 163
    sget v1, Landroid/support/design/a$i;->BottomSheetBehavior_Params_behavior_hideable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->a(Z)V

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:F

    .line 167
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    return v0
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 500
    instance-of v0, p1, Landroid/support/v4/view/y;

    if-eqz v0, :cond_0

    .line 512
    :goto_0
    return-object p1

    .line 503
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 504
    check-cast p1, Landroid/view/ViewGroup;

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 506
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 508
    goto :goto_0

    .line 505
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 512
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    .line 484
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    .line 488
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/BottomSheetBehavior;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;F)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;F)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    if-ge v1, v2, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v0

    .line 495
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 496
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()F
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 517
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    invoke-static {v0, v1}, Landroid/support/v4/view/af;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 472
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    if-ne v0, p1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    .line 476
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 477
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Landroid/support/design/widget/BottomSheetBehavior$a;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Landroid/support/design/widget/BottomSheetBehavior$a;

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$a;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/design/widget/BottomSheetBehavior;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Z

    return v0
.end method

.method static synthetic c(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    return v0
.end method

.method private c(I)V
    .locals 5
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 606
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Landroid/support/design/widget/BottomSheetBehavior$a;

    if-eqz v1, :cond_0

    .line 607
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    if-le p1, v1, :cond_1

    .line 608
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Landroid/support/design/widget/BottomSheetBehavior$a;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$a;->a(Landroid/view/View;F)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:Landroid/support/design/widget/BottomSheetBehavior$a;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$a;->a(Landroid/view/View;F)V

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic e(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic f(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    return v0
.end method

.method static synthetic g(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:Z

    return v0
.end method

.method static synthetic h(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:I

    return v0
.end method

.method static synthetic i(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    return v0
.end method

.method static synthetic j(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ag;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:Landroid/support/v4/widget/ag;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    .line 390
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    .line 391
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    check-cast p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    .line 177
    invoke-virtual {p3}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 179
    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a:I

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 336
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-ne v2, v3, :cond_1

    .line 337
    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne p3, v2, :cond_0

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:Z

    if-eqz v2, :cond_0

    .line 345
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    if-lez v2, :cond_2

    .line 346
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    .line 364
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:Landroid/support/v4/widget/ag;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, p2, v3, v1}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    .line 366
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$b;

    invoke-direct {v1, p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior$b;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 370
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:Z

    goto :goto_0

    .line 348
    :cond_2
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->b()F

    move-result v2

    invoke-direct {p0, p2, v2}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:I

    .line 350
    const/4 v0, 0x5

    goto :goto_1

    .line 351
    :cond_3
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    if-nez v2, :cond_5

    .line 352
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 353
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 354
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    goto :goto_1

    .line 357
    :cond_4
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    move v5, v1

    move v1, v0

    move v0, v5

    .line 358
    goto :goto_1

    .line 361
    :cond_5
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    move v5, v1

    move v1, v0

    move v0, v5

    .line 362
    goto :goto_1

    .line 368
    :cond_6
    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_2
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 300
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 301
    if-eq p3, v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 305
    sub-int v1, v0, p5

    .line 306
    if-lez p5, :cond_3

    .line 307
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-ge v1, v2, :cond_2

    .line 308
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v0, v1

    aput v0, p6, v3

    .line 309
    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;I)V

    .line 310
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    .line 329
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    .line 330
    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    .line 331
    iput-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:Z

    goto :goto_0

    .line 312
    :cond_2
    aput p5, p6, v3

    .line 313
    neg-int v0, p5

    invoke-static {p2, v0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;I)V

    .line 314
    invoke-direct {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_1

    .line 316
    :cond_3
    if-gez p5, :cond_1

    .line 317
    const/4 v2, -0x1

    invoke-static {p3, v2}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    if-le v1, v2, :cond_4

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:Z

    if-eqz v1, :cond_5

    .line 319
    :cond_4
    aput p5, p6, v3

    .line 320
    neg-int v0, p5

    invoke-static {p2, v0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;I)V

    .line 321
    invoke-direct {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_1

    .line 323
    :cond_5
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    sub-int/2addr v0, v1

    aput v0, p6, v3

    .line 324
    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;I)V

    .line 325
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:Z

    .line 411
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 189
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 190
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:I

    .line 194
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    .line 195
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    .line 196
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 197
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;I)V

    .line 203
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:Landroid/support/v4/widget/ag;

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Landroid/support/v4/widget/ag$a;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ag;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/ag$a;)Landroid/support/v4/widget/ag;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:Landroid/support/v4/widget/ag;

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    .line 208
    return v3

    .line 198
    :cond_3
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 199
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;I)V

    goto :goto_0

    .line 200
    :cond_4
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 201
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return v2

    .line 216
    :cond_0
    invoke-static {p3}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 218
    if-nez v3, :cond_1

    .line 219
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->a()V

    .line 221
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 222
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    .line 224
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 225
    packed-switch v3, :pswitch_data_0

    .line 248
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:Landroid/support/v4/widget/ag;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ag;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    .line 249
    goto :goto_0

    .line 228
    :pswitch_1
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Z

    .line 229
    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    .line 231
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Z

    if-eqz v0, :cond_3

    .line 232
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Z

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 238
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    .line 239
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 240
    if-eqz v0, :cond_4

    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    invoke-virtual {p1, v0, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    .line 242
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Z

    .line 244
    :cond_4
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    if-ne v0, v6, :cond_5

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    invoke-virtual {p1, p2, v4, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 254
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 255
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Z

    if-nez v3, :cond_7

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    if-eq v3, v1, :cond_7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:Landroid/support/v4/widget/ag;

    invoke-virtual {v3}, Landroid/support/v4/widget/ag;->d()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    :goto_3
    move v2, v1

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_3

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 292
    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:I

    .line 293
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:Z

    .line 294
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    const/4 v0, 0x0

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 267
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:I

    if-ne v2, v0, :cond_2

    if-eqz v1, :cond_0

    .line 270
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:Landroid/support/v4/widget/ag;

    invoke-virtual {v2, p3}, Landroid/support/v4/widget/ag;->b(Landroid/view/MotionEvent;)V

    .line 272
    if-nez v1, :cond_3

    .line 273
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->a()V

    .line 275
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    if-nez v2, :cond_4

    .line 276
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    .line 278
    :cond_4
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 281
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 282
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:Landroid/support/v4/widget/ag;

    invoke-virtual {v2}, Landroid/support/v4/widget/ag;->d()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 283
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:Landroid/support/v4/widget/ag;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;I)V

    goto :goto_0
.end method
