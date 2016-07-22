.class public Lcom/flipboard/bottomsheet/BottomSheetLayout;
.super Landroid/widget/FrameLayout;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/BottomSheetLayout$c;,
        Lcom/flipboard/bottomsheet/BottomSheetLayout$State;,
        Lcom/flipboard/bottomsheet/BottomSheetLayout$b;,
        Lcom/flipboard/bottomsheet/BottomSheetLayout$a;
    }
.end annotation


# static fields
.field private static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/flipboard/bottomsheet/BottomSheetLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Z

.field private final B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field public a:Z

.field private c:Ljava/lang/Runnable;

.field private d:Landroid/graphics/Rect;

.field private e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field private f:Z

.field private g:Landroid/animation/TimeInterpolator;

.field private h:Z

.field private i:F

.field private j:Landroid/view/VelocityTracker;

.field private k:F

.field private l:F

.field private m:Lcom/flipboard/bottomsheet/c;

.field private n:Lcom/flipboard/bottomsheet/c;

.field private o:Lcom/flipboard/bottomsheet/b;

.field private p:Z

.field private q:Z

.field private r:Landroid/animation/Animator;

.field private s:Lcom/flipboard/bottomsheet/BottomSheetLayout$c;

.field private t:Landroid/view/View$OnLayoutChangeListener;

.field private u:Landroid/view/View;

.field private v:Z

.field private w:I

.field private x:Z

.field private y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "sheetTranslation"

    invoke-direct {v0, v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Landroid/graphics/Rect;

    .line 80
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 81
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    .line 82
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fcccccd

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Landroid/animation/TimeInterpolator;

    .line 89
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    .line 92
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Z

    .line 93
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Z

    .line 98
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:Z

    .line 104
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    .line 105
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, La/a/a$a;->bottomsheet_is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    .line 106
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, La/a/a$b;->bottomsheet_default_sheet_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B:I

    .line 107
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    .line 108
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 124
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Landroid/graphics/Rect;

    .line 80
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 81
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    .line 82
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fcccccd

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Landroid/animation/TimeInterpolator;

    .line 89
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    .line 92
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Z

    .line 93
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Z

    .line 98
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:Z

    .line 104
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    .line 105
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, La/a/a$a;->bottomsheet_is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    .line 106
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, La/a/a$b;->bottomsheet_default_sheet_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B:I

    .line 107
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    .line 108
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 133
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e()V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Landroid/graphics/Rect;

    .line 80
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 81
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    .line 82
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fcccccd

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Landroid/animation/TimeInterpolator;

    .line 89
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    .line 92
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Z

    .line 93
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Z

    .line 98
    iput-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:Z

    .line 104
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    .line 105
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, La/a/a$a;->bottomsheet_is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    .line 106
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, La/a/a$b;->bottomsheet_default_sheet_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B:I

    .line 107
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    .line 108
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 139
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e()V

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/BottomSheetLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    return v0
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->w:I

    return p1
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/b;)Lcom/flipboard/bottomsheet/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o:Lcom/flipboard/bottomsheet/b;

    return-object p1
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/c;)Lcom/flipboard/bottomsheet/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Lcom/flipboard/bottomsheet/c;

    return-object p1
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(F)V
    .locals 6
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Lcom/flipboard/bottomsheet/c;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Lcom/flipboard/bottomsheet/c;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/c;->b(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/c;->b(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetTranslation(F)V

    return-void
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 701
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v0, v1, :cond_0

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Ljava/lang/Runnable;

    .line 741
    :goto_0
    return-void

    .line 707
    :cond_0
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Ljava/lang/Runnable;

    .line 708
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    .line 709
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 710
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g()V

    .line 711
    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 712
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 713
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 714
    new-instance v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;

    invoke-direct {v2, p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 737
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 738
    iput-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Landroid/animation/Animator;

    .line 739
    iput v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    .line 740
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    goto :goto_0
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 447
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 448
    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    .line 449
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 450
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 451
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 452
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 453
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    .line 454
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 455
    int-to-float v9, v6

    cmpl-float v9, p2, v9

    if-lez v9, :cond_0

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    int-to-float v4, v7

    cmpl-float v4, p3, v4

    if-lez v4, :cond_0

    int-to-float v4, v8

    cmpg-float v4, p3, v4

    if-gez v4, :cond_0

    move v4, v3

    .line 456
    :goto_1
    if-eqz v4, :cond_1

    int-to-float v4, v6

    sub-float v4, p2, v4

    int-to-float v6, v7

    sub-float v6, p3, v6

    invoke-direct {p0, v5, v4, v6}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 461
    :goto_2
    return v0

    :cond_0
    move v4, v2

    .line 455
    goto :goto_1

    .line 449
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    goto :goto_2
.end method

.method private b(F)F
    .locals 6
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Lcom/flipboard/bottomsheet/c;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Lcom/flipboard/bottomsheet/c;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/c;->a(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)F

    move-result v0

    .line 267
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/c;->a(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)F

    move-result v0

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    return-object v0
.end method

.method static synthetic b(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    return-void
.end method

.method static synthetic c(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->w:I

    return v0
.end method

.method private c(F)Z
    .locals 1
    .parameter

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/b;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o:Lcom/flipboard/bottomsheet/b;

    return-object v0
.end method

.method static synthetic e(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->k:F

    .line 145
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->l:F

    .line 147
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 150
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->y:F

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setFocusableInTouchMode(Z)V

    .line 156
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 157
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 158
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    .line 159
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 160
    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 444
    :cond_0
    return-void
.end method

.method private getDefaultPeekTranslation()F
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 485
    iput v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    .line 486
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 487
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 488
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 489
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    return-void
.end method

.method private setSheetLayerTypeIfEnabled(I)V
    .locals 2
    .parameter

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 468
    :cond_0
    return-void
.end method

.method private setSheetTranslation(F)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 241
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    .line 242
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v1

    int-to-double v2, v1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-int v1, v2

    .line 243
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 244
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 245
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(F)V

    .line 246
    iget-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Z

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b(F)F

    move-result v1

    .line 248
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 249
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Landroid/view/View;

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_0
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V
    .locals 1
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 472
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->s:Lcom/flipboard/bottomsheet/BottomSheetLayout$c;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->s:Lcom/flipboard/bottomsheet/BottomSheetLayout$c;

    invoke-interface {v0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$c;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 475
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 496
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g()V

    .line 497
    invoke-direct {p0, v3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 498
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 499
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 500
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 501
    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 509
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 510
    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Landroid/animation/Animator;

    .line 511
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 512
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V

    .line 595
    return-void
.end method

.method public a(Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Landroid/view/View;Lcom/flipboard/bottomsheet/c;Lcom/flipboard/bottomsheet/b;)V

    .line 605
    return-void
.end method

.method public a(Landroid/view/View;Lcom/flipboard/bottomsheet/c;Lcom/flipboard/bottomsheet/b;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 616
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq v0, v3, :cond_0

    .line 617
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;Lcom/flipboard/bottomsheet/c;Lcom/flipboard/bottomsheet/b;)V

    .line 624
    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Ljava/lang/Runnable;)V

    .line 691
    :goto_0
    return-void

    .line 627
    :cond_0
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PREPARING:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 629
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 630
    if-nez v0, :cond_1

    .line 631
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {v3, v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v0, v3

    .line 634
    :cond_1
    iget-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_3

    .line 637
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v1, v2, :cond_2

    .line 638
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 641
    :cond_2
    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 644
    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    iget v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B:I

    sub-int/2addr v1, v3

    .line 645
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    .line 646
    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    iget v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 649
    :cond_3
    invoke-super {p0, p1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 650
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i()V

    .line 651
    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Lcom/flipboard/bottomsheet/c;

    .line 652
    iput-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o:Lcom/flipboard/bottomsheet/b;

    .line 656
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 675
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->w:I

    .line 676
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;

    invoke-direct {v0, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View$OnLayoutChangeListener;

    .line 690
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 631
    goto :goto_1
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You may not declare more then one child of bottom sheet. The sheet view must be added dynamically with showWithSheetView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setContentView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g()V

    .line 519
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 520
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 521
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 522
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 523
    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$3;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$3;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 532
    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Landroid/animation/Animator;

    .line 533
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 534
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterceptContentTouch()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:Z

    return v0
.end method

.method public getMaxSheetTranslation()F
    .locals 2

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getPeekOnDismiss()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    return v0
.end method

.method public getPeekSheetTranslation()F
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getDefaultPeekTranslation()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->y:F

    goto :goto_0
.end method

.method public getSheetView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 574
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/flipboard/bottomsheet/BottomSheetLayout$State;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 196
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j:Landroid/view/VelocityTracker;

    .line 197
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 202
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 203
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g()V

    .line 204
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 272
    :goto_0
    if-eqz v2, :cond_0

    .line 273
    iput-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x:Z

    .line 275
    :cond_0
    iget-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c(F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 276
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x:Z

    .line 280
    :goto_2
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x:Z

    return v0

    :cond_2
    move v2, v1

    .line 271
    goto :goto_0

    :cond_3
    move v0, v1

    .line 276
    goto :goto_1

    .line 278
    :cond_4
    iput-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x:Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 215
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 223
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 228
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b()V

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c()V

    goto :goto_0

    .line 237
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 208
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 209
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    .line 210
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v2

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x:Z

    if-nez v0, :cond_2

    .line 292
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 297
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a:Z

    .line 298
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:Z

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->E:F

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->F:F

    .line 301
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->G:F

    .line 302
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->H:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 303
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 308
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v5

    .line 309
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v6

    .line 311
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->E:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v4, v0, v4

    .line 312
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v7, v0, v7

    .line 314
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:Z

    if-nez v0, :cond_18

    .line 315
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v8, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->l:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a:Z

    .line 316
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->l:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:Z

    .line 318
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a:Z

    if-eqz v0, :cond_18

    .line 319
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v0, v4, :cond_4

    .line 320
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 321
    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 322
    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 323
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 324
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 327
    :cond_4
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:Z

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->E:F

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->F:F

    move v0, v3

    .line 336
    :goto_3
    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->G:F

    add-float/2addr v4, v0

    .line 338
    iget-boolean v7, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a:Z

    if-eqz v7, :cond_12

    .line 340
    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    move v0, v1

    .line 341
    :goto_4
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-direct {p0, v7, v8, v9}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Landroid/view/View;FF)Z

    move-result v7

    .line 342
    iget-object v8, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v9, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v8, v9, :cond_17

    if-eqz v0, :cond_17

    if-nez v7, :cond_17

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->E:F

    .line 345
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->G:F

    .line 346
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 347
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 348
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 349
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    .line 352
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 353
    invoke-virtual {v4, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 354
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 355
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 359
    :goto_5
    iget-object v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v7, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v4, v7, :cond_5

    cmpl-float v4, v0, v5

    if-lez v4, :cond_5

    .line 360
    invoke-direct {p0, v5}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetTranslation(F)V

    .line 363
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 364
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 365
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 366
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 367
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 368
    sget-object v4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v4}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 369
    invoke-direct {p0, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 372
    :cond_5
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v2, v4, :cond_a

    .line 374
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 375
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    :goto_6
    move v2, v1

    .line 429
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 315
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 316
    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 340
    goto/16 :goto_4

    .line 379
    :cond_a
    cmpg-float v2, v0, v6

    if-gez v2, :cond_b

    .line 380
    sub-float v0, v6, v0

    const/high16 v2, 0x4080

    div-float/2addr v0, v2

    sub-float v0, v6, v0

    .line 383
    :cond_b
    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetTranslation(F)V

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v12, :cond_c

    .line 387
    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->H:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v2, v4, :cond_d

    .line 388
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a()V

    .line 394
    :cond_c
    :goto_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 395
    cmpg-float v0, v0, v6

    if-gez v0, :cond_e

    .line 396
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c()V

    goto :goto_6

    .line 390
    :cond_d
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b()V

    goto :goto_7

    .line 400
    :cond_e
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 401
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 402
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->k:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_10

    .line 403
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_f

    .line 404
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a()V

    goto :goto_6

    .line 406
    :cond_f
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b()V

    goto :goto_6

    .line 409
    :cond_10
    cmpg-float v0, v0, v3

    if-gez v0, :cond_11

    .line 410
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a()V

    goto :goto_6

    .line 412
    :cond_11
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b()V

    goto :goto_6

    .line 420
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    sub-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c(F)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    move v2, v1

    .line 421
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_15

    if-eqz v2, :cond_15

    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:Z

    if-eqz v0, :cond_15

    .line 422
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c()V

    move v2, v1

    .line 423
    goto/16 :goto_0

    .line 426
    :cond_15
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getX()F

    move-result v0

    iget v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    int-to-float v2, v2

    sub-float v3, v0, v2

    :cond_16
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 427
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_6

    :cond_17
    move v0, v4

    goto/16 :goto_5

    :cond_18
    move v0, v4

    goto/16 :goto_3
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 584
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-super {p0, p1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Landroid/view/View;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 586
    return-void
.end method

.method public setDefaultViewTransformer(Lcom/flipboard/bottomsheet/c;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    .line 805
    return-void
.end method

.method public setInterceptContentTouch(Z)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:Z

    .line 771
    return-void
.end method

.method public setOnSheetStateChangeListener(Lcom/flipboard/bottomsheet/BottomSheetLayout$c;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->s:Lcom/flipboard/bottomsheet/BottomSheetLayout$c;

    .line 845
    return-void
.end method

.method public setPeekOnDismiss(Z)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    .line 751
    return-void
.end method

.method public setPeekSheetTranslation(F)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->y:F

    .line 554
    return-void
.end method

.method public setShouldDimContentView(Z)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Z

    .line 817
    return-void
.end method

.method public setUseHardwareLayerWhileAnimating(Z)V
    .locals 0
    .parameter

    .prologue
    .line 835
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Z

    .line 836
    return-void
.end method
