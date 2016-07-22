.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/ad;
.implements Landroid/support/v4/view/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$d;,
        Landroid/support/v7/widget/RecyclerView$e;,
        Landroid/support/v7/widget/RecyclerView$f;,
        Landroid/support/v7/widget/RecyclerView$r;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$b;,
        Landroid/support/v7/widget/RecyclerView$q;,
        Landroid/support/v7/widget/RecyclerView$c;,
        Landroid/support/v7/widget/RecyclerView$i;,
        Landroid/support/v7/widget/RecyclerView$ViewHolder;,
        Landroid/support/v7/widget/RecyclerView$j;,
        Landroid/support/v7/widget/RecyclerView$o;,
        Landroid/support/v7/widget/RecyclerView$l;,
        Landroid/support/v7/widget/RecyclerView$k;,
        Landroid/support/v7/widget/RecyclerView$g;,
        Landroid/support/v7/widget/RecyclerView$h;,
        Landroid/support/v7/widget/RecyclerView$a;,
        Landroid/support/v7/widget/RecyclerView$s;,
        Landroid/support/v7/widget/RecyclerView$n;,
        Landroid/support/v7/widget/RecyclerView$m;,
        Landroid/support/v7/widget/RecyclerView$p;,
        Landroid/support/v7/widget/RecyclerView$t;
    }
.end annotation


# static fields
.field private static final ao:Landroid/view/animation/Interpolator;

.field private static final j:Z

.field private static final k:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Z

.field private final E:Z

.field private final F:Landroid/view/accessibility/AccessibilityManager;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$j;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private I:I

.field private J:Landroid/support/v4/widget/j;

.field private K:Landroid/support/v4/widget/j;

.field private L:Landroid/support/v4/widget/j;

.field private M:Landroid/support/v4/widget/j;

.field private N:I

.field private O:I

.field private P:Landroid/view/VelocityTracker;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private final V:I

.field private final W:I

.field final a:Landroid/support/v7/widget/RecyclerView$n;

.field private aa:F

.field private final ab:Landroid/support/v7/widget/RecyclerView$t;

.field private ac:Landroid/support/v7/widget/RecyclerView$l;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$l;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Landroid/support/v7/widget/RecyclerView$e$b;

.field private af:Z

.field private ag:Landroid/support/v7/widget/ad;

.field private ah:Landroid/support/v7/widget/RecyclerView$d;

.field private final ai:[I

.field private final aj:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final ak:[I

.field private final al:[I

.field private final am:[I

.field private an:Ljava/lang/Runnable;

.field private final ap:Landroid/support/v7/widget/ar$b;

.field b:Landroid/support/v7/widget/e;

.field c:Landroid/support/v7/widget/s;

.field final d:Landroid/support/v7/widget/ar;

.field e:Landroid/support/v7/widget/RecyclerView$h;

.field f:Landroid/support/v7/widget/RecyclerView$e;

.field final g:Landroid/support/v7/widget/RecyclerView$r;

.field h:Z

.field i:Z

.field private final l:Landroid/support/v7/widget/RecyclerView$p;

.field private m:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private n:Z

.field private final o:Ljava/lang/Runnable;

.field private final p:Landroid/graphics/Rect;

.field private q:Landroid/support/v7/widget/RecyclerView$a;

.field private r:Landroid/support/v7/widget/RecyclerView$o;

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$g;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$k;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/support/v7/widget/RecyclerView$k;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->j:Z

    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->k:[Ljava/lang/Class;

    .line 406
    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->ao:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 453
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 457
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 460
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    new-instance v0, Landroid/support/v7/widget/RecyclerView$p;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$p;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$p;

    .line 244
    new-instance v0, Landroid/support/v7/widget/RecyclerView$n;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    .line 261
    new-instance v0, Landroid/support/v7/widget/ar;

    invoke-direct {v0}, Landroid/support/v7/widget/ar;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    .line 275
    new-instance v0, Landroid/support/v7/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Ljava/lang/Runnable;

    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    .line 302
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    .line 319
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    .line 329
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 333
    new-instance v0, Landroid/support/v7/widget/v;

    invoke-direct {v0}, Landroid/support/v7/widget/v;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    .line 358
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:F

    .line 371
    new-instance v0, Landroid/support/v7/widget/RecyclerView$t;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/support/v7/widget/RecyclerView$t;

    .line 373
    new-instance v0, Landroid/support/v7/widget/RecyclerView$r;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$r;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    .line 379
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 380
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    .line 381
    new-instance v0, Landroid/support/v7/widget/RecyclerView$f;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$f;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/support/v7/widget/RecyclerView$e$b;

    .line 383
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    .line 389
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    .line 392
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    .line 393
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->al:[I

    .line 394
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    .line 396
    new-instance v0, Landroid/support/v7/widget/RecyclerView$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Ljava/lang/Runnable;

    .line 416
    new-instance v0, Landroid/support/v7/widget/RecyclerView$4;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$4;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:Landroid/support/v7/widget/ar$b;

    .line 461
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 462
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 464
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Z

    .line 466
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    .line 468
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 469
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    .line 470
    invoke-static {p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v6

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/support/v7/widget/RecyclerView$e$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$e$b;)V

    .line 473
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 474
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 476
    invoke-static {p0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-static {p0, v6}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 481
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/view/accessibility/AccessibilityManager;

    .line 483
    new-instance v0, Landroid/support/v7/widget/ad;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ad;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/ad;)V

    .line 485
    if-eqz p2, :cond_1

    .line 487
    sget-object v0, Landroid/support/v7/d/a$c;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 489
    sget v1, Landroid/support/v7/d/a$c;->RecyclerView_layoutManager:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 491
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 494
    :cond_1
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 495
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 496
    return-void

    :cond_2
    move v0, v5

    .line 464
    goto :goto_0

    :cond_3
    move v0, v5

    .line 470
    goto :goto_1
.end method

.method private A()V
    .locals 1

    .prologue
    .line 2718
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2719
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 2722
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2723
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2728
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2729
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->C()V

    .line 2731
    :cond_0
    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    .line 2738
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    .line 2739
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    .line 2740
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2741
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2742
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2743
    invoke-static {v1, v0}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2744
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2746
    :cond_0
    return-void
.end method

.method private D()V
    .locals 1

    .prologue
    .line 2820
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    .line 2821
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2822
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    .line 2824
    :cond_0
    return-void
.end method

.method private E()Z
    .locals 1

    .prologue
    .line 2827
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private F()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2837
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->a()V

    .line 2841
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 2842
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 2847
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2848
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->b()V

    .line 2852
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    .line 2853
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$h;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v3, v2

    :goto_2
    invoke-static {v4, v3}, Landroid/support/v7/widget/RecyclerView$r;->d(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2857
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->E()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView$r;->e(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2860
    return-void

    .line 2850
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->e()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2852
    goto :goto_1

    :cond_6
    move v3, v1

    .line 2853
    goto :goto_2

    :cond_7
    move v2, v1

    .line 2857
    goto :goto_3
.end method

.method private G()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2926
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$r;->a(I)V

    .line 2927
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v2, v1}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2928
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2929
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v2}, Landroid/support/v7/widget/ar;->a()V

    .line 2930
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    .line 2932
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->F()V

    .line 2933
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Landroid/support/v7/widget/RecyclerView$r;->f(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2934
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 2935
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2936
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$r;->a:I

    .line 2937
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a([I)V

    .line 2939
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2941
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->b()I

    move-result v2

    move v0, v1

    .line 2942
    :goto_1
    if-ge v0, v2, :cond_3

    .line 2943
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 2944
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2942
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 2933
    goto :goto_0

    .line 2947
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$e;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v6

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->w()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v4

    .line 2951
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V

    .line 2952
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$r;->d(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->z()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2954
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 2962
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v6, v4, v5, v3}, Landroid/support/v7/widget/ar;->a(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 2966
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2973
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 2974
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$r;->e(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v0

    .line 2975
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v2, v1}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2977
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 2978
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v2, v0}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    move v0, v1

    .line 2980
    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2}, Landroid/support/v7/widget/s;->b()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 2981
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v2

    .line 2982
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 2983
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2980
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2986
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ar;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2987
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$e;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 2988
    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b(I)Z

    move-result v4

    .line 2990
    if-nez v4, :cond_6

    .line 2991
    or-int/lit16 v2, v2, 0x1000

    .line 2993
    :cond_6
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->w()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v2, v7}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v2

    .line 2995
    if-eqz v4, :cond_7

    .line 2996
    invoke-direct {p0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V

    goto :goto_4

    .line 2998
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v4, v3, v2}, Landroid/support/v7/widget/ar;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V

    goto :goto_4

    .line 3003
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 3007
    :goto_5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 3008
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 3009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;I)I

    .line 3010
    return-void

    .line 3005
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    goto :goto_5
.end method

.method private H()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3017
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 3018
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    .line 3019
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$r;->a(I)V

    .line 3020
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->e()V

    .line 3021
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$r;->a:I

    .line 3022
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;I)I

    .line 3025
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 3026
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 3028
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 3029
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3032
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Landroid/support/v7/widget/RecyclerView$r;->d(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 3033
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;I)I

    .line 3034
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 3035
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 3036
    return-void

    :cond_0
    move v0, v1

    .line 3032
    goto :goto_0
.end method

.method private I()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 3043
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->a(I)V

    .line 3044
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 3045
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0, v12}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;I)I

    .line 3046
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3048
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->b()I

    move-result v9

    move v7, v8

    .line 3049
    :goto_0
    if-ge v7, v9, :cond_3

    .line 3050
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3051
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3049
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 3054
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v10

    .line 3055
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    .line 3057
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v1, v10, v11}, Landroid/support/v7/widget/ar;->a(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3058
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3066
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    .line 3068
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    .line 3069
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ar;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v3

    .line 3072
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v4, v2, v0}, Landroid/support/v7/widget/ar;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V

    .line 3073
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ar;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v4

    .line 3074
    if-nez v3, :cond_1

    .line 3075
    invoke-direct {p0, v10, v11, v2, v1}, Landroid/support/v7/widget/RecyclerView;->a(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 3077
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;ZZ)V

    goto :goto_1

    .line 3081
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/ar;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V

    goto :goto_1

    .line 3086
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ap:Landroid/support/v7/widget/ar$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/ar$b;)V

    .line 3089
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 3090
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$r;->a:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->d(Landroid/support/v7/widget/RecyclerView$r;I)I

    .line 3091
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    .line 3092
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0, v8}, Landroid/support/v7/widget/RecyclerView$r;->d(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 3094
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0, v8}, Landroid/support/v7/widget/RecyclerView$r;->e(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 3095
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {v0, v8}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$h;Z)Z

    .line 3096
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$n;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3097
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3099
    :cond_5
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 3100
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v0}, Landroid/support/v7/widget/ar;->a()V

    .line 3101
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    aget v0, v0, v8

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    aget v1, v1, v12

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->j(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3102
    invoke-virtual {p0, v8, v8}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    .line 3104
    :cond_6
    return-void
.end method

.method private J()V
    .locals 4

    .prologue
    .line 3552
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-eqz v0, :cond_0

    .line 3564
    :goto_0
    return-void

    .line 3555
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    .line 3556
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v1

    .line 3557
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 3558
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3559
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3560
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 3557
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3563
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->f()V

    goto :goto_0
.end method

.method private K()V
    .locals 7

    .prologue
    .line 4228
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->b()I

    move-result v1

    .line 4229
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 4230
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v2

    .line 4231
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4232
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_1

    .line 4233
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4234
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 4235
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 4236
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 4238
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 4229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4244
    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x2e

    .line 573
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 579
    :cond_0
    :goto_0
    return-object p2

    .line 576
    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private a(FFFF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x3f80

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1898
    const/4 v1, 0x0

    .line 1899
    cmpg-float v2, p2, v5

    if-gez v2, :cond_4

    .line 1900
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 1901
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    neg-float v3, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p3, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/j;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 1911
    :cond_0
    :goto_0
    cmpg-float v2, p4, v5

    if-gez v2, :cond_5

    .line 1912
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 1913
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    neg-float v3, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/j;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1923
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v0, p2, v5

    if-nez v0, :cond_2

    cmpl-float v0, p4, v5

    if-eqz v0, :cond_3

    .line 1924
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1926
    :cond_3
    return-void

    .line 1904
    :cond_4
    cmpl-float v2, p2, v5

    if-lez v2, :cond_0

    .line 1905
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 1906
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p3, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/j;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 1907
    goto :goto_0

    .line 1916
    :cond_5
    cmpl-float v2, p4, v5

    if-lez v2, :cond_6

    .line 1917
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1918
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p4, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/j;->a(FF)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private a(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3124
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->b()I

    move-result v1

    .line 3125
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 3126
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v2

    .line 3127
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3128
    if-ne v2, p3, :cond_1

    .line 3125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3131
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3132
    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 3133
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3134
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3138
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3146
    :cond_3
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be found but it is necessary for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 521
    if-eqz p2, :cond_0

    .line 522
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 527
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 533
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v4

    .line 536
    const/4 v1, 0x0

    .line 538
    :try_start_1
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->k:[Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 540
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p3, v0, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v1, v2

    .line 550
    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 551
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 570
    :cond_0
    return-void

    .line 531
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 543
    const/4 v2, 0x0

    :try_start_3
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 548
    goto :goto_1

    .line 544
    :catch_1
    move-exception v1

    .line 545
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Error creating LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 552
    :catch_2
    move-exception v0

    .line 553
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 555
    :catch_3
    move-exception v0

    .line 556
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 558
    :catch_4
    move-exception v0

    .line 559
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 561
    :catch_5
    move-exception v0

    .line 562
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 564
    :catch_6
    move-exception v0

    .line 565
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3254
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Z)V

    .line 3255
    if-eqz p5, :cond_0

    .line 3256
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3258
    :cond_0
    if-eq p1, p2, :cond_2

    .line 3259
    if-eqz p6, :cond_1

    .line 3260
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3262
    :cond_1
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3264
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3265
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$n;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3266
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Z)V

    .line 3267
    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3269
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3270
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->D()V

    .line 3272
    :cond_3
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3158
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(II)V

    .line 3159
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$r;->d(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3161
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3162
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/ar;->a(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3164
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V

    .line 3165
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3236
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Z)V

    .line 3237
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$e;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3238
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->D()V

    .line 3240
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$a;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 876
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 878
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$e;->c()V

    .line 885
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_3

    .line 886
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 887
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 890
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->clear()V

    .line 892
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->a()V

    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    .line 894
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    .line 895
    if-eqz p1, :cond_5

    .line 896
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 897
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 899
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v1, :cond_6

    .line 900
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;)V

    .line 902
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V

    .line 903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 904
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 905
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->h(II)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a([I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 3168
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->b()I

    move-result v5

    .line 3169
    if-nez v5, :cond_0

    .line 3170
    aput v4, p1, v4

    .line 3171
    aput v4, p1, v7

    .line 3191
    :goto_0
    return-void

    .line 3174
    :cond_0
    const v2, 0x7fffffff

    .line 3175
    const/high16 v0, -0x8000

    move v3, v4

    .line 3176
    :goto_1
    if-ge v3, v5, :cond_3

    .line 3177
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3178
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v2

    .line 3176
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 3181
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v1

    .line 3182
    if-ge v1, v2, :cond_2

    move v2, v1

    .line 3185
    :cond_2
    if-le v1, v0, :cond_4

    move v0, v1

    move v1, v2

    .line 3186
    goto :goto_2

    .line 3189
    :cond_3
    aput v2, p1, v4

    .line 3190
    aput v0, p1, v7

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    return p1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 2198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 2199
    if-eq v3, v6, :cond_0

    if-nez v3, :cond_1

    .line 2200
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$k;

    .line 2203
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 2204
    :goto_0
    if-ge v2, v4, :cond_3

    .line 2205
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$k;

    .line 2206
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$k;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v3, v6, :cond_2

    .line 2207
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$k;

    .line 2208
    const/4 v0, 0x1

    .line 2211
    :goto_1
    return v0

    .line 2204
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2211
    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1077
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 1078
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 1079
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$n;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1080
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1082
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/s;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1088
    :goto_1
    return-void

    .line 1078
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1083
    :cond_1
    if-nez v0, :cond_2

    .line 1084
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/s;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 1086
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/s;->d(Landroid/view/View;)V

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3244
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3245
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Z)V

    .line 3246
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3247
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->D()V

    .line 3249
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    return p1
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2216
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$k;

    if-eqz v3, :cond_0

    .line 2217
    if-nez v0, :cond_1

    .line 2219
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$k;

    .line 2232
    :cond_0
    if-eqz v0, :cond_5

    .line 2233
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 2234
    :goto_0
    if-ge v3, v4, :cond_5

    .line 2235
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$k;

    .line 2236
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$k;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2237
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$k;

    move v0, v1

    .line 2242
    :goto_1
    return v0

    .line 2221
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$k;

    invoke-interface {v2, p0, p1}, Landroid/support/v7/widget/RecyclerView$k;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2222
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 2224
    :cond_2
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$k;

    :cond_3
    move v0, v1

    .line 2226
    goto :goto_1

    .line 2234
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 2242
    goto :goto_1
.end method

.method static c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .parameter

    .prologue
    .line 3652
    if-nez p0, :cond_0

    .line 3653
    const/4 v0, 0x0

    .line 3655
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->g(I)V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    .line 2515
    invoke-static {p1}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2516
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    if-ne v1, v2, :cond_0

    .line 2518
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2519
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2520
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2521
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 2523
    :cond_0
    return-void

    .line 2518
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .parameter

    .prologue
    .line 3547
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->w()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

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

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    return p1
.end method

.method private d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .parameter

    .prologue
    .line 9303
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9306
    :cond_0
    const/4 v0, -0x1

    .line 9308
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    iget v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/e;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    return v0
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->D()V

    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    return-object v0
.end method

.method private g(I)V
    .locals 1
    .parameter

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    .line 1363
    :goto_0
    return-void

    .line 1361
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->e(I)V

    .line 1362
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method static synthetic g(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    return-void
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2565
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2566
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2567
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2569
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:F

    .line 2575
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:F

    :goto_0
    return v0

    .line 2572
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1940
    const/4 v0, 0x0

    .line 1941
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1942
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->c()Z

    move-result v0

    .line 1944
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->a()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1945
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1947
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->a()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1948
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1950
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->a()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1951
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1953
    :cond_3
    if-eqz v0, :cond_4

    .line 1954
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1956
    :cond_4
    return-void
.end method

.method static synthetic h(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->K()V

    return-void
.end method

.method private i(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2653
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2654
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2655
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2656
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2661
    sparse-switch v2, :sswitch_data_0

    .line 2668
    invoke-static {p0}, Landroid/support/v4/view/ah;->q(Landroid/view/View;)I

    move-result v1

    .line 2672
    :sswitch_0
    sparse-switch v3, :sswitch_data_1

    .line 2679
    invoke-static {p0}, Landroid/support/v4/view/ah;->r(Landroid/view/View;)I

    move-result v0

    .line 2683
    :sswitch_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2684
    return-void

    .line 2661
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 2672
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic i(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method private j(II)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3194
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2}, Landroid/support/v7/widget/s;->b()I

    move-result v3

    .line 3195
    if-nez v3, :cond_2

    .line 3196
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v0, v1

    .line 3208
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 3198
    :goto_1
    if-ge v2, v3, :cond_1

    .line 3199
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 3200
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3198
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3203
    :cond_4
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v4

    .line 3204
    if-lt v4, p1, :cond_5

    if-le v4, p2, :cond_3

    :cond_5
    move v0, v1

    .line 3205
    goto :goto_0
.end method

.method private j(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 1097
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1098
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->f(Landroid/view/View;)Z

    move-result v1

    .line 1099
    if-eqz v1, :cond_0

    .line 1100
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1101
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$n;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1102
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1108
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1109
    return v1

    .line 1108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 5923
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5924
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    .line 5925
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5926
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$a;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5928
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5929
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5930
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 5931
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$j;->b(Landroid/view/View;)V

    .line 5930
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5934
    :cond_1
    return-void
.end method

.method static synthetic k(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->J()V

    return-void
.end method

.method private l(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 5937
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5938
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)V

    .line 5939
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5940
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$a;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5942
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5943
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5944
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 5945
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$j;->a(Landroid/view/View;)V

    .line 5944
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5948
    :cond_1
    return-void
.end method

.method static synthetic m(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Z

    return v0
.end method

.method static synthetic n(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    return v0
.end method

.method static synthetic o(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    return v0
.end method

.method static synthetic p(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic q(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ad;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Landroid/support/v7/widget/ad;

    return-object v0
.end method

.method static synthetic r(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$o;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$o;

    return-object v0
.end method

.method static synthetic r()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ao:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic s(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->j:Z

    return v0
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter

    .prologue
    .line 1183
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-ne p1, v0, :cond_0

    .line 1195
    :goto_0
    return-void

    .line 1190
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 1191
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1192
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 1194
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->f(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 583
    new-instance v0, Landroid/support/v7/widget/s;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/s;-><init>(Landroid/support/v7/widget/s$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    .line 680
    return-void
.end method

.method static synthetic t(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    return v0
.end method

.method static synthetic u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$t;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/support/v7/widget/RecyclerView$t;

    return-object v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1424
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-nez v0, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-eqz v0, :cond_2

    .line 1429
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/g;->a(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1431
    invoke-static {}, Landroid/support/v4/os/g;->a()V

    goto :goto_0

    .line 1434
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1442
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/g;->a(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1444
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->b()V

    .line 1445
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-nez v0, :cond_3

    .line 1446
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1447
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1453
    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1454
    invoke-static {}, Landroid/support/v4/os/g;->a()V

    goto :goto_0

    .line 1450
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->c()V

    goto :goto_1

    .line 1455
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/g;->a(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1458
    invoke-static {}, Landroid/support/v4/os/g;->a()V

    goto :goto_0
.end method

.method private v()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1466
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v1}, Landroid/support/v7/widget/s;->b()I

    move-result v2

    move v1, v0

    .line 1467
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1468
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1469
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1467
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1472
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1473
    const/4 v0, 0x1

    .line 1476
    :cond_2
    return v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->b()V

    .line 1870
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->I()V

    .line 1873
    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1929
    const/4 v0, 0x0

    .line 1930
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->c()Z

    move-result v0

    .line 1931
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1932
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1933
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1934
    :cond_3
    if-eqz v0, :cond_4

    .line 1935
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1937
    :cond_4
    return-void
.end method

.method private y()V
    .locals 1

    .prologue
    .line 2502
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2503
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2505
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2506
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 2507
    return-void
.end method

.method private z()V
    .locals 1

    .prologue
    .line 2510
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 2511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2512
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 2
    .parameter

    .prologue
    .line 3231
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method a(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3764
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v2

    .line 3765
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 3766
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3767
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3768
    if-eqz p2, :cond_1

    .line 3769
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-ne v3, p1, :cond_2

    .line 3780
    :cond_0
    :goto_1
    return-object v0

    .line 3772
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 3765
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3780
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .parameter

    .prologue
    .line 3605
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3606
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 3607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3610
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(FF)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3815
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->b()I

    move-result v0

    .line 3816
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3817
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v0

    .line 3818
    invoke-static {v0}, Landroid/support/v4/view/ah;->o(Landroid/view/View;)F

    move-result v2

    .line 3819
    invoke-static {v0}, Landroid/support/v4/view/ah;->p(Landroid/view/View;)F

    move-result v3

    .line 3820
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 3827
    :goto_1
    return-object v0

    .line 3816
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3827
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 2

    .prologue
    .line 683
    new-instance v0, Landroid/support/v7/widget/e;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$6;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/e;-><init>(Landroid/support/v7/widget/e$a;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    .line 761
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 1344
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_0

    .line 1355
    :goto_0
    return-void

    .line 1347
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 1348
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_1

    .line 1349
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1353
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->e(I)V

    .line 1354
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1786
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_1

    .line 1787
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1791
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v1, :cond_0

    .line 1794
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v1

    if-nez v1, :cond_2

    move p1, v0

    .line 1797
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1800
    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_0

    .line 1801
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/RecyclerView$t;->b(II)V

    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1
.end method

.method a(IILjava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3525
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v2

    .line 3526
    add-int v3, p1, p2

    .line 3528
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 3529
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v0

    .line 3530
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 3531
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3528
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3534
    :cond_1
    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v5, p1, :cond_0

    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-ge v5, v3, :cond_0

    .line 3537
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 3538
    invoke-virtual {v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Ljava/lang/Object;)V

    .line 3540
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    goto :goto_1

    .line 3543
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->c(II)V

    .line 3544
    return-void
.end method

.method a(IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 3490
    add-int v1, p1, p2

    .line 3491
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v2

    .line 3492
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 3493
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3494
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3495
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v4, v1, :cond_1

    .line 3501
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    .line 3502
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v3, v6}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 3492
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3503
    :cond_1
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v4, p1, :cond_0

    .line 3508
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v4, v5, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IIZ)V

    .line 3510
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v3, v6}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    goto :goto_1

    .line 3514
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$n;->b(IIZ)V

    .line 3515
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3516
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$g;)V
    .locals 1
    .parameter

    .prologue
    .line 1241
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;I)V

    .line 1242
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$g;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1212
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    .line 1216
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1219
    :cond_1
    if-gez p2, :cond_2

    .line 1220
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 1225
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1226
    return-void

    .line 1222
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$j;)V
    .locals 1
    .parameter

    .prologue
    .line 960
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    .line 963
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$k;)V
    .locals 1
    .parameter

    .prologue
    .line 2182
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$l;)V
    .locals 1
    .parameter

    .prologue
    .line 1309
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    .line 1312
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 2159
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2160
    if-nez p1, :cond_0

    .line 2161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2166
    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1695
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    if-ge v0, v1, :cond_0

    .line 1700
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    .line 1702
    :cond_0
    if-nez p1, :cond_1

    .line 1711
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1713
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    if-ne v0, v1, :cond_3

    .line 1715
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    .line 1717
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1719
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_3

    .line 1720
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1723
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    .line 1724
    return-void
.end method

.method a(IILandroid/view/MotionEvent;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1491
    .line 1494
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 1495
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_c

    .line 1496
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1497
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    .line 1498
    const-string v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/g;->a(Ljava/lang/String;)V

    .line 1499
    if-eqz p1, :cond_b

    .line 1500
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v2

    .line 1501
    sub-int v3, p1, v2

    .line 1503
    :goto_0
    if-eqz p2, :cond_a

    .line 1504
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p2, v1, v4}, Landroid/support/v7/widget/RecyclerView$h;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    .line 1505
    sub-int v1, p2, v0

    .line 1507
    :goto_1
    invoke-static {}, Landroid/support/v4/os/g;->a()V

    .line 1508
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->K()V

    .line 1509
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 1510
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    move v4, v1

    move v1, v2

    move v2, v0

    .line 1512
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1516
    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1518
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 1519
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v3, v3, v7

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    .line 1520
    if-eqz p3, :cond_1

    .line 1521
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v3, v3, v7

    int-to-float v3, v3

    invoke-virtual {p3, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1523
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v3, v0, v6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 1524
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v3, v0, v7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    .line 1531
    :cond_2
    :goto_3
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 1532
    :cond_3
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    .line 1534
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1535
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1537
    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    move v6, v7

    :cond_7
    return v6

    .line 1525
    :cond_8
    invoke-static {p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    .line 1526
    if-eqz p3, :cond_9

    .line 1527
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v3, v5, v4}, Landroid/support/v7/widget/RecyclerView;->a(FFFF)V

    .line 1529
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->h(II)V

    goto :goto_3

    :cond_a
    move v0, v6

    move v1, v6

    goto/16 :goto_1

    :cond_b
    move v2, v6

    move v3, v6

    goto/16 :goto_0

    :cond_c
    move v2, v6

    move v1, v6

    move v4, v6

    move v3, v6

    goto/16 :goto_2
.end method

.method a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2780
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2782
    if-eqz p1, :cond_2

    .line 2783
    invoke-static {p1}, Landroid/support/v4/view/a/a;->b(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v1

    .line 2785
    :goto_0
    if-nez v1, :cond_1

    .line 2788
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    .line 2789
    const/4 v0, 0x1

    .line 2791
    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2091
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2092
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2094
    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 3628
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, p1

    .line 3629
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3630
    check-cast v0, Landroid/view/View;

    .line 3631
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 3633
    :cond_0
    if-ne v0, p0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b()V
    .locals 2

    .prologue
    .line 1688
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    .line 1689
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    .line 1690
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1692
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 1381
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_0

    .line 1390
    :goto_0
    return-void

    .line 1384
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_1

    .line 1385
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1389
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p0, v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;I)V

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$g;)V
    .locals 2
    .parameter

    .prologue
    .line 1254
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    .line 1258
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1259
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1260
    invoke-static {p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1262
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 1263
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1264
    return-void

    .line 1260
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$j;)V
    .locals 1
    .parameter

    .prologue
    .line 972
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    if-nez v0, :cond_0

    .line 976
    :goto_0
    return-void

    .line 975
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$k;)V
    .locals 1
    .parameter

    .prologue
    .line 2191
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2192
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$k;

    if-ne v0, p1, :cond_0

    .line 2193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/RecyclerView$k;

    .line 2195
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$l;)V
    .locals 1
    .parameter

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1324
    :cond_0
    return-void
.end method

.method public b(II)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1819
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_1

    .line 1820
    const-string v0, "RecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    :cond_0
    :goto_0
    return v1

    .line 1824
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    .line 1828
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v0

    .line 1829
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v3

    .line 1831
    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    if-ge v4, v5, :cond_3

    :cond_2
    move p1, v1

    .line 1834
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    if-ge v4, v5, :cond_5

    :cond_4
    move p2, v1

    .line 1837
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    .line 1842
    :cond_6
    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1843
    if-nez v0, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    move v0, v2

    .line 1844
    :goto_1
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 1846
    if-eqz v0, :cond_0

    .line 1847
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1848
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    neg-int v1, v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1849
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/RecyclerView$t;->a(II)V

    move v1, v2

    .line 1850
    goto :goto_0

    :cond_8
    move v0, v1

    .line 1843
    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1861
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1862
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 1863
    return-void
.end method

.method public c(I)V
    .locals 3
    .parameter

    .prologue
    .line 3842
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->b()I

    move-result v1

    .line 3843
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3844
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3843
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3846
    :cond_0
    return-void
.end method

.method c(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1959
    if-gez p1, :cond_4

    .line 1960
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 1961
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/j;->a(I)Z

    .line 1967
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1968
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 1969
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/j;->a(I)Z

    .line 1975
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1976
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1978
    :cond_3
    return-void

    .line 1962
    :cond_4
    if-lez p1, :cond_0

    .line 1963
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 1964
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/j;->a(I)Z

    goto :goto_0

    .line 1970
    :cond_5
    if-lez p2, :cond_1

    .line 1971
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1972
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/j;->a(I)Z

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 3373
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1585
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1560
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_1

    .line 1563
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1608
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->f(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1657
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->e(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1633
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_1

    .line 1636
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1680
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_1

    .line 1683
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->g(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/view/View;)I
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3664
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method d()V
    .locals 4

    .prologue
    .line 1981
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_0

    .line 1991
    :goto_0
    return-void

    .line 1984
    :cond_0
    new-instance v0, Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    .line 1985
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eqz v0, :cond_1

    .line 1986
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(II)V

    goto :goto_0

    .line 1989
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(II)V

    goto :goto_0
.end method

.method public d(I)V
    .locals 3
    .parameter

    .prologue
    .line 3880
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->b()I

    move-result v1

    .line 3881
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3882
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3881
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3884
    :cond_0
    return-void
.end method

.method d(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 3438
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v6

    .line 3440
    if-ge p1, p2, :cond_1

    .line 3443
    const/4 v0, -0x1

    move v2, p2

    move v3, p1

    :goto_0
    move v4, v5

    .line 3450
    :goto_1
    if-ge v4, v6, :cond_4

    .line 3451
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 3452
    if-eqz v7, :cond_0

    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v8, v3, :cond_0

    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-le v8, v2, :cond_2

    .line 3450
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, p1

    move v3, p2

    .line 3447
    goto :goto_0

    .line 3459
    :cond_2
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-ne v8, p1, :cond_3

    .line 3460
    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    .line 3465
    :goto_3
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v7, v1}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    goto :goto_2

    .line 3462
    :cond_3
    invoke-virtual {v7, v0, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    goto :goto_3

    .line 3467
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->a(II)V

    .line 3468
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3469
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9352
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9357
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

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
    .line 9347
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

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
    .line 9341
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1065
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1066
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1057
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1058
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3302
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 3305
    :goto_0
    if-ge v3, v4, :cond_0

    .line 3306
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$g;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p0, v5}, Landroid/support/v7/widget/RecyclerView$g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 3305
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3311
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3312
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3313
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 3314
    :goto_1
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3315
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3316
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 3317
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3319
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    invoke-virtual {v3}, Landroid/support/v4/widget/j;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3321
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eqz v3, :cond_1

    .line 3322
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3324
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    .line 3325
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3327
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    invoke-virtual {v3}, Landroid/support/v4/widget/j;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3328
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3329
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3330
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3331
    :goto_5
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3332
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3333
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    .line 3334
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3336
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    invoke-virtual {v3}, Landroid/support/v4/widget/j;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3338
    const/high16 v4, 0x4334

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3339
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eqz v4, :cond_c

    .line 3340
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3344
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    .line 3345
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3351
    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$e;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3356
    :goto_8
    if-eqz v2, :cond_6

    .line 3357
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 3359
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 3313
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 3316
    goto/16 :goto_2

    :cond_9
    move v3, v1

    .line 3324
    goto/16 :goto_4

    :cond_a
    move v3, v1

    .line 3330
    goto/16 :goto_5

    :cond_b
    move v3, v1

    .line 3333
    goto :goto_6

    .line 3342
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3832
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 3674
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3675
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method e()V
    .locals 4

    .prologue
    .line 1994
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_0

    .line 2004
    :goto_0
    return-void

    .line 1997
    :cond_0
    new-instance v0, Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    .line 1998
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eqz v0, :cond_1

    .line 1999
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(II)V

    goto :goto_0

    .line 2002
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(II)V

    goto :goto_0
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 3965
    return-void
.end method

.method e(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v2

    move v0, v1

    .line 3473
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3474
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3475
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v4, p1, :cond_0

    .line 3480
    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    .line 3481
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 3473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3484
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->b(II)V

    .line 3485
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3486
    return-void
.end method

.method public f(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 3689
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3690
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method f()V
    .locals 4

    .prologue
    .line 2007
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_0

    .line 2018
    :goto_0
    return-void

    .line 2010
    :cond_0
    new-instance v0, Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    .line 2011
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eqz v0, :cond_1

    .line 2012
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(II)V

    goto :goto_0

    .line 2015
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(II)V

    goto :goto_0
.end method

.method f(I)V
    .locals 2
    .parameter

    .prologue
    .line 3970
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    .line 3971
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->l(I)V

    .line 3976
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(I)V

    .line 3979
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Landroid/support/v7/widget/RecyclerView$l;

    if-eqz v0, :cond_1

    .line 3980
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3982
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3983
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 3984
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3983
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3987
    :cond_2
    return-void
.end method

.method public f(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3929
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2041
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2042
    if-eqz v0, :cond_1

    .line 2053
    :cond_0
    :goto_0
    return-object v0

    .line 2045
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 2046
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2047
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v1, :cond_2

    .line 2049
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2050
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    .line 2051
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2053
    :cond_2
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method g()V
    .locals 4

    .prologue
    .line 2021
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_0

    .line 2031
    :goto_0
    return-void

    .line 2024
    :cond_0
    new-instance v0, Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    .line 2025
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eqz v0, :cond_1

    .line 2026
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(II)V

    goto :goto_0

    .line 2029
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(II)V

    goto :goto_0
.end method

.method g(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3934
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 3935
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 3936
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3939
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->f(II)V

    .line 3943
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Landroid/support/v7/widget/RecyclerView$l;

    if-eqz v0, :cond_0

    .line 3944
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3946
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3947
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3948
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3947
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3951
    :cond_1
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 3859
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3378
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    .line 3379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3381
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->a()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 3386
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    .line 3387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3389
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 3394
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_0

    .line 3395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3397
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$a;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->u()I

    move-result v0

    .line 944
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$d;

    if-nez v0, :cond_0

    .line 11010
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 11012
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$d;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$d;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/ad;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Landroid/support/v7/widget/ad;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$e;
    .locals 1

    .prologue
    .line 2812
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    return-object v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 1891
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 1881
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$m;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->e()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1179
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    return v0
.end method

.method h()V
    .locals 1

    .prologue
    .line 2034
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v4/widget/j;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/support/v4/widget/j;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v4/widget/j;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Landroid/support/v4/widget/j;

    .line 2035
    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 3871
    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 9335
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->b()Z

    move-result v0

    return v0
.end method

.method i(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3887
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 3888
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    if-nez v1, :cond_0

    .line 3889
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    .line 3904
    :goto_0
    return-object v0

    .line 3892
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    .line 3893
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3894
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 3895
    :goto_1
    if-ge v3, v5, :cond_1

    .line 3896
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3897
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$g;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/support/v7/widget/RecyclerView$g;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 3898
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 3899
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 3900
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 3901
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 3895
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 3903
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    move-object v0, v2

    .line 3904
    goto :goto_0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 2734
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2130
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 9320
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->a()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 2768
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()V
    .locals 2

    .prologue
    .line 2888
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v0, :cond_0

    .line 2889
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :goto_0
    return-void

    .line 2893
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_1

    .line 2894
    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2898
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2899
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    .line 2900
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2901
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->G()V

    .line 2902
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->f(Landroid/support/v7/widget/RecyclerView;)V

    .line 2903
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->H()V

    .line 2914
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->I()V

    .line 2915
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    goto :goto_0

    .line 2904
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->f()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 2908
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->f(Landroid/support/v7/widget/RecyclerView;)V

    .line 2909
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->H()V

    goto :goto_1

    .line 2912
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->f(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1
.end method

.method l()V
    .locals 4

    .prologue
    .line 3292
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v2

    .line 3293
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 3294
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v0

    .line 3295
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    .line 3293
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3297
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->i()V

    .line 3298
    return-void
.end method

.method m()V
    .locals 4

    .prologue
    .line 3413
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v1

    .line 3414
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3415
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3420
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3421
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d()V

    .line 3414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3424
    :cond_1
    return-void
.end method

.method n()V
    .locals 4

    .prologue
    .line 3427
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v1

    .line 3428
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3429
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3430
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3431
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()V

    .line 3428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3434
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->h()V

    .line 3435
    return-void
.end method

.method o()V
    .locals 4

    .prologue
    .line 3571
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->c()I

    move-result v1

    .line 3572
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3573
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/s;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3574
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3575
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 3572
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3578
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 3579
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->g()V

    .line 3580
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2098
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2099
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 2101
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 2102
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    .line 2103
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 2105
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    .line 2106
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2110
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2111
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v0, :cond_0

    .line 2112
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$e;->c()V

    .line 2114
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 2116
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 2117
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 2118
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_1

    .line 2119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V

    .line 2121
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2122
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v0}, Landroid/support/v7/widget/ar;->b()V

    .line 2123
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 3363
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3365
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3366
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 3367
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$g;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p0, v3}, Landroid/support/v7/widget/RecyclerView$g;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 3366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3369
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2527
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v0, :cond_1

    .line 2558
    :cond_0
    :goto_0
    return v4

    .line 2530
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    .line 2533
    invoke-static {p1}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 2536
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2539
    const/16 v0, 0x9

    invoke-static {p1, v0}, Landroid/support/v4/view/u;->e(Landroid/view/MotionEvent;I)F

    move-result v0

    neg-float v0, v0

    .line 2544
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2545
    const/16 v2, 0xa

    invoke-static {p1, v2}, Landroid/support/v4/view/u;->e(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 2551
    :goto_2
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    .line 2552
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2553
    mul-float/2addr v2, v1

    float-to-int v2, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2542
    goto :goto_1

    :cond_4
    move v2, v1

    .line 2548
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, -0x1

    const/high16 v7, 0x3f00

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2247
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_1

    .line 2346
    :cond_0
    :goto_0
    return v3

    .line 2252
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2253
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    move v3, v2

    .line 2254
    goto :goto_0

    .line 2257
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    .line 2261
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v0

    .line 2262
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v4

    .line 2264
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    if-nez v5, :cond_3

    .line 2265
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    .line 2267
    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2269
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v5

    .line 2270
    invoke-static {p1}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;)I

    move-result v6

    .line 2272
    packed-switch v5, :pswitch_data_0

    .line 2346
    :cond_4
    :goto_1
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-ne v0, v2, :cond_c

    :goto_2
    move v3, v2

    goto :goto_0

    .line 2274
    :pswitch_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    if-eqz v1, :cond_5

    .line 2275
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 2277
    :cond_5
    invoke-static {p1, v3}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 2281
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    .line 2282
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2283
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2287
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aput v3, v5, v2

    aput v3, v1, v3

    .line 2290
    if-eqz v0, :cond_e

    move v0, v2

    .line 2293
    :goto_3
    if-eqz v4, :cond_7

    .line 2294
    or-int/lit8 v0, v0, 0x2

    .line 2296
    :cond_7
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2300
    :pswitch_2
    invoke-static {p1, v6}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2301
    invoke-static {p1, v6}, Landroid/support/v4/view/u;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2302
    invoke-static {p1, v6}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    goto :goto_1

    .line 2306
    :pswitch_3
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-static {p1, v5}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 2307
    if-gez v5, :cond_8

    .line 2308
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2313
    :cond_8
    invoke-static {p1, v5}, Landroid/support/v4/view/u;->c(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 2314
    invoke-static {p1, v5}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 2315
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-eq v7, v2, :cond_4

    .line 2316
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    sub-int/2addr v6, v7

    .line 2317
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    sub-int/2addr v5, v7

    .line 2319
    if-eqz v0, :cond_d

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-le v0, v7, :cond_d

    .line 2320
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-gez v6, :cond_a

    move v0, v1

    :goto_4
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    move v0, v2

    .line 2323
    :goto_5
    if-eqz v4, :cond_9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-le v4, v6, :cond_9

    .line 2324
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-gez v5, :cond_b

    :goto_6
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    move v0, v2

    .line 2327
    :cond_9
    if-eqz v0, :cond_4

    .line 2328
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 2320
    goto :goto_4

    :cond_b
    move v1, v2

    .line 2324
    goto :goto_6

    .line 2334
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2338
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2339
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 2343
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    goto/16 :goto_1

    :cond_c
    move v2, v3

    .line 2346
    goto/16 :goto_2

    :cond_d
    move v0, v3

    goto :goto_5

    :cond_e
    move v0, v3

    goto/16 :goto_3

    .line 2272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3276
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/g;->a(Ljava/lang/String;)V

    .line 3277
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 3278
    invoke-static {}, Landroid/support/v4/os/g;->a()V

    .line 3279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 3280
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2580
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v2, :cond_1

    .line 2581
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    .line 2647
    :cond_0
    :goto_0
    return-void

    .line 2584
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$h;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2585
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2586
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2587
    if-ne v2, v5, :cond_2

    if-ne v3, v5, :cond_2

    move v0, v1

    .line 2589
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V

    .line 2590
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 2593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 2594
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->G()V

    .line 2598
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->b(II)V

    .line 2599
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2600
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->H()V

    .line 2603
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->c(II)V

    .line 2607
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2608
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$h;->b(II)V

    .line 2611
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2612
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->H()V

    .line 2614
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->c(II)V

    goto :goto_0

    .line 2617
    :cond_4
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v2, :cond_5

    .line 2618
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V

    goto :goto_0

    .line 2622
    :cond_5
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    if-eqz v2, :cond_6

    .line 2623
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2624
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->F()V

    .line 2626
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2627
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v2, v1}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    .line 2633
    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 2634
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2637
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v1, :cond_8

    .line 2638
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$r;->a:I

    .line 2642
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2643
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V

    .line 2644
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2645
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    goto/16 :goto_0

    .line 2630
    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v1}, Landroid/support/v7/widget/e;->e()V

    .line 2631
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;Z)Z

    goto :goto_1

    .line 2640
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$r;->a:I

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 1045
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1046
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1047
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/os/Parcelable;)V

    .line 1050
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1031
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1032
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1033
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->a(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 1040
    :goto_0
    return-object v0

    .line 1034
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v1, :cond_1

    .line 1035
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->e()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0

    .line 1037
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2688
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2689
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2690
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 2693
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x3f00

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2361
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    if-eqz v0, :cond_1

    .line 2498
    :cond_0
    :goto_0
    return v2

    .line 2364
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2365
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    move v2, v3

    .line 2366
    goto :goto_0

    .line 2369
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v5

    .line 2374
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v6

    .line 2376
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 2377
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    .line 2381
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 2382
    invoke-static {p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2383
    invoke-static {p1}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2385
    if-nez v0, :cond_4

    .line 2386
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aput v2, v9, v3

    aput v2, v8, v2

    .line 2388
    :cond_4
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v8, v8, v2

    int-to-float v8, v8

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2390
    packed-switch v0, :pswitch_data_0

    .line 2493
    :cond_5
    :goto_1
    :pswitch_0
    if-nez v2, :cond_6

    .line 2494
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2496
    :cond_6
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    move v2, v3

    .line 2498
    goto :goto_0

    .line 2392
    :pswitch_1
    invoke-static {p1, v2}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 2397
    if-eqz v5, :cond_16

    move v0, v3

    .line 2400
    :goto_2
    if-eqz v6, :cond_7

    .line 2401
    or-int/lit8 v0, v0, 0x2

    .line 2403
    :cond_7
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2407
    :pswitch_2
    invoke-static {p1, v4}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2408
    invoke-static {p1, v4}, Landroid/support/v4/view/u;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2409
    invoke-static {p1, v4}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    goto :goto_1

    .line 2413
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-static {p1, v0}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2414
    if-gez v0, :cond_8

    .line 2415
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2420
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v8, v1

    .line 2421
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v9, v0

    .line 2422
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    sub-int v1, v0, v8

    .line 2423
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    sub-int/2addr v0, v9

    .line 2425
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->al:[I

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    invoke-virtual {p0, v1, v0, v4, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2426
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->al:[I

    aget v4, v4, v2

    sub-int/2addr v1, v4

    .line 2427
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->al:[I

    aget v4, v4, v3

    sub-int/2addr v0, v4

    .line 2428
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v2

    int-to-float v4, v4

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v10, v10, v3

    int-to-float v10, v10

    invoke-virtual {v7, v4, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2430
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v10, v4, v2

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v11, v11, v2

    add-int/2addr v10, v11

    aput v10, v4, v2

    .line 2431
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v10, v4, v3

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v11, v11, v3

    add-int/2addr v10, v11

    aput v10, v4, v3

    .line 2434
    :cond_9
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-eq v4, v3, :cond_b

    .line 2436
    if-eqz v5, :cond_15

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-le v4, v10, :cond_15

    .line 2437
    if-lez v1, :cond_c

    .line 2438
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    sub-int/2addr v1, v4

    :goto_3
    move v4, v3

    .line 2444
    :goto_4
    if-eqz v6, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-le v10, v11, :cond_a

    .line 2445
    if-lez v0, :cond_d

    .line 2446
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    sub-int/2addr v0, v4

    :goto_5
    move v4, v3

    .line 2452
    :cond_a
    if-eqz v4, :cond_b

    .line 2453
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2457
    :cond_b
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-ne v4, v3, :cond_5

    .line 2458
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v2

    sub-int v4, v8, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 2459
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v3

    sub-int v4, v9, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    .line 2461
    if-eqz v5, :cond_e

    :goto_6
    if-eqz v6, :cond_f

    :goto_7
    invoke-virtual {p0, v1, v0, v7}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2465
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 2440
    :cond_c
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    add-int/2addr v1, v4

    goto :goto_3

    .line 2448
    :cond_d
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    add-int/2addr v0, v4

    goto :goto_5

    :cond_e
    move v1, v2

    .line 2461
    goto :goto_6

    :cond_f
    move v0, v2

    goto :goto_7

    .line 2471
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2475
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2477
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    int-to-float v8, v8

    invoke-virtual {v0, v4, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2478
    if-eqz v5, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-static {v0, v4}, Landroid/support/v4/view/af;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v4, v0

    .line 2480
    :goto_8
    if-eqz v6, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-static {v0, v5}, Landroid/support/v4/view/af;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    .line 2482
    :goto_9
    cmpl-float v5, v4, v1

    if-nez v5, :cond_10

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_11

    :cond_10
    float-to-int v1, v4

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(II)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2483
    :cond_11
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2485
    :cond_12
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    move v2, v3

    .line 2486
    goto/16 :goto_1

    :cond_13
    move v4, v1

    .line 2478
    goto :goto_8

    :cond_14
    move v0, v1

    .line 2480
    goto :goto_9

    .line 2489
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    goto/16 :goto_1

    :cond_15
    move v4, v2

    goto/16 :goto_4

    :cond_16
    move v0, v2

    goto/16 :goto_2

    .line 2390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public p()V
    .locals 2

    .prologue
    .line 3587
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3596
    :goto_0
    return-void

    .line 3590
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_1

    .line 3591
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    .line 3594
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 3595
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 4003
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->d()Z

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

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3213
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3214
    if-eqz v0, :cond_0

    .line 3215
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3216
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->o()V

    .line 3222
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/view/View;)V

    .line 3223
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3224
    return-void

    .line 3217
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2058
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p0, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2059
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2064
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2065
    instance-of v2, v0, Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v2, :cond_0

    .line 2067
    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 2068
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    if-nez v2, :cond_0

    .line 2069
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    .line 2070
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2071
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2072
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2073
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 2077
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2078
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2079
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2081
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2082
    return-void

    :cond_2
    move v0, v1

    .line 2079
    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2086
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2351
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2352
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2353
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$k;

    .line 2354
    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$k;->a(Z)V

    .line 2352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2356
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2357
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3284
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    .line 3285
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3289
    :goto_0
    return-void

    .line 3287
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1400
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_1

    .line 1401
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v1, :cond_0

    .line 1408
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v1

    .line 1409
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v2

    .line 1410
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    .line 1411
    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    if-eqz v2, :cond_4

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_2
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1394
    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 2796
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2800
    :goto_0
    return-void

    .line 2799
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ag:Landroid/support/v7/widget/ad;

    .line 513
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Landroid/support/v7/widget/ad;

    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 514
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 856
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 857
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$a;ZZ)V

    .line 858
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 859
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$d;)V
    .locals 1
    .parameter

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$d;

    if-ne p1, v0, :cond_0

    .line 1284
    :goto_0
    return-void

    .line 1282
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$d;

    .line 1283
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter

    .prologue
    .line 788
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    if-eq p1, v0, :cond_0

    .line 789
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 791
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Z

    .line 792
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 793
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 796
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 776
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V
    .locals 2
    .parameter

    .prologue
    .line 2707
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v0, :cond_0

    .line 2708
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$e;->c()V

    .line 2709
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$e$b;)V

    .line 2711
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    .line 2712
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v0, :cond_1

    .line 2713
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/support/v7/widget/RecyclerView$e$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$e$b;)V

    .line 2715
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .parameter

    .prologue
    .line 1169
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$n;->a(I)V

    .line 1170
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1749
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eq p1, v0, :cond_1

    .line 1750
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 1751
    if-nez p1, :cond_2

    .line 1752
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 1753
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 1754
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1756
    :cond_0
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1767
    :cond_1
    :goto_0
    return-void

    .line 1758
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1759
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1761
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1762
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 1763
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 1764
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    goto :goto_0
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 3
    .parameter

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-ne p1, v0, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 1004
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 1007
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    if-eqz v0, :cond_2

    .line 1008
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V

    .line 1011
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 1013
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->clear()V

    .line 1014
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->a()V

    .line 1015
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    .line 1016
    if-eqz p1, :cond_4

    .line 1017
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 1018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 1022
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_4

    .line 1023
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 1026
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 9315
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(Z)V

    .line 9316
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1296
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ac:Landroid/support/v7/widget/RecyclerView$l;

    .line 1297
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$m;)V
    .locals 1
    .parameter

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 1144
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$o;)V
    .locals 0
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/RecyclerView$o;

    .line 929
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .parameter

    .prologue
    .line 808
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 809
    packed-switch p1, :pswitch_data_0

    .line 811
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    .line 822
    :goto_0
    return-void

    .line 819
    :pswitch_1
    invoke-static {v0}, Landroid/support/v4/view/at;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    goto :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 1
    .parameter

    .prologue
    .line 1154
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 1155
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .parameter

    .prologue
    .line 9325
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 9330
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->c()V

    .line 9331
    return-void
.end method
