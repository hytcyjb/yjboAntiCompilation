.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/support/v4/view/ad;
.implements Landroid/support/v4/view/y;
.implements Landroid/support/v4/view/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/NestedScrollView$a;,
        Landroid/support/v4/widget/NestedScrollView$SavedState;,
        Landroid/support/v4/widget/NestedScrollView$b;
    }
.end annotation


# static fields
.field private static final v:Landroid/support/v4/widget/NestedScrollView$a;

.field private static final w:[I


# instance fields
.field private A:Landroid/support/v4/widget/NestedScrollView$b;

.field private a:J

.field private final b:Landroid/graphics/Rect;

.field private c:Landroid/support/v4/widget/x;

.field private d:Landroid/support/v4/widget/j;

.field private e:Landroid/support/v4/widget/j;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Landroid/view/VelocityTracker;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private final r:[I

.field private final s:[I

.field private t:I

.field private u:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final x:Landroid/support/v4/view/aa;

.field private final y:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$a;

    invoke-direct {v0}, Landroid/support/v4/widget/NestedScrollView$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->v:Landroid/support/v4/widget/NestedScrollView$a;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    .line 109
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    .line 110
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    .line 124
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 140
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 155
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    .line 156
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    .line 190
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->a()V

    .line 192
    sget-object v0, Landroid/support/v4/widget/NestedScrollView;->w:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    new-instance v0, Landroid/support/v4/view/aa;

    invoke-direct {v0, p0}, Landroid/support/v4/view/aa;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/aa;

    .line 200
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 203
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 205
    sget-object v0, Landroid/support/v4/widget/NestedScrollView;->v:Landroid/support/v4/widget/NestedScrollView$a;

    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 206
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/NestedScrollView;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method private a(ZII)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1033
    const/4 v3, 0x0

    .line 1042
    const/4 v2, 0x0

    .line 1044
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1045
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_7

    .line 1046
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1047
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1048
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 1050
    if-ge p2, v8, :cond_8

    if-ge v4, p3, :cond_8

    .line 1056
    if-ge p2, v4, :cond_0

    if-ge v8, p3, :cond_0

    const/4 v1, 0x1

    .line 1059
    :goto_1
    if-nez v3, :cond_1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 1045
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v2, v0

    goto :goto_0

    .line 1056
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1064
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v4, v9, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v8, v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 1069
    :goto_3
    if-eqz v2, :cond_5

    .line 1070
    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    move-object v1, v0

    move v0, v2

    .line 1076
    goto :goto_2

    .line 1064
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 1079
    :cond_5
    if-eqz v1, :cond_6

    .line 1082
    const/4 v1, 0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    .line 1083
    :cond_6
    if-eqz v4, :cond_8

    move-object v1, v0

    move v0, v2

    .line 1088
    goto :goto_2

    .line 1095
    :cond_7
    return-object v3

    :cond_8
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private a()V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/x;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    .line 358
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 359
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 361
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->n:I

    .line 363
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->o:I

    .line 364
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->p:I

    .line 365
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 884
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 885
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    if-ne v1, v2, :cond_0

    .line 889
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 890
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 891
    invoke-static {p1, v0}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 892
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 896
    :cond_0
    return-void

    .line 889
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(III)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1178
    .line 1180
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1181
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1182
    add-int v5, v4, v0

    .line 1183
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 1185
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->a(ZII)Landroid/view/View;

    move-result-object v3

    .line 1186
    if-nez v3, :cond_0

    move-object v3, p0

    .line 1190
    :cond_0
    if-lt p2, v4, :cond_3

    if-gt p3, v5, :cond_3

    .line 1197
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v3, v0, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1199
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 1183
    goto :goto_0

    .line 1193
    :cond_3
    if-eqz v0, :cond_4

    sub-int v0, p2, v4

    .line 1194
    :goto_2
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->e(I)V

    move v2, v1

    goto :goto_1

    .line 1193
    :cond_4
    sub-int v0, p3, v5

    goto :goto_2
.end method

.method private a(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1475
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v2

    .line 1476
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1477
    :goto_0
    if-eqz v0, :cond_0

    .line 1478
    if-eqz p2, :cond_2

    .line 1479
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1484
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 1476
    goto :goto_0

    .line 1481
    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->a(II)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1265
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private a(Landroid/view/View;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1274
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1276
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1677
    if-ne p0, p1, :cond_0

    .line 1682
    :goto_0
    return v1

    .line 1681
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1682
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1793
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 1809
    :cond_0
    const/4 p0, 0x0

    .line 1819
    :cond_1
    :goto_0
    return p0

    .line 1811
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1817
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1457
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1459
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    .line 1461
    if-eqz v0, :cond_0

    .line 1462
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1464
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 421
    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 423
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    .line 425
    :cond_0
    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 580
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private c(II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 568
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 569
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 570
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v1, v3, v1

    if-ge p2, v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 575
    :cond_0
    return v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 588
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 590
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 597
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1286
    if-eqz p1, :cond_0

    .line 1287
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    if-eqz v0, :cond_1

    .line 1288
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->a(II)V

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 1717
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 1719
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->e()V

    .line 1720
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    .line 1722
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->c()Z

    .line 1724
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->c()Z

    .line 1726
    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1705
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1706
    if-gtz v0, :cond_0

    if-lez p1, :cond_3

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1708
    :goto_0
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1709
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1710
    if-eqz v0, :cond_2

    .line 1711
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->d(I)V

    .line 1714
    :cond_2
    return-void

    .line 1706
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1747
    invoke-static {p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1748
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    if-nez v0, :cond_0

    .line 1749
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1750
    new-instance v1, Landroid/support/v4/widget/j;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    .line 1751
    new-instance v1, Landroid/support/v4/widget/j;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    .line 1757
    :cond_0
    :goto_0
    return-void

    .line 1754
    :cond_1
    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    .line 1755
    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1006
    .line 1007
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1008
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1009
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1012
    :cond_0
    return v0
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .prologue
    .line 928
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 929
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 930
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    .line 939
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    return v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Rect;)I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1496
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1550
    :goto_0
    return v2

    .line 1498
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1499
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1500
    add-int v1, v0, v3

    .line 1502
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1505
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    .line 1506
    add-int/2addr v0, v4

    .line 1510
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1511
    sub-int/2addr v1, v4

    .line 1516
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v0, :cond_4

    .line 1521
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 1523
    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    add-int/2addr v0, v2

    .line 1530
    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1531
    sub-int v1, v2, v1

    .line 1532
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    move v2, v0

    .line 1550
    goto :goto_0

    .line 1526
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_1

    .line 1534
    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v0, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_6

    .line 1539
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_5

    .line 1541
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    sub-int v0, v2, v0

    .line 1548
    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 1544
    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int v0, v2, v0

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public final a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1302
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    :goto_0
    return-void

    .line 1306
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/NestedScrollView;->a:J

    sub-long/2addr v0, v2

    .line 1307
    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1308
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1309
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1310
    sub-int v0, v1, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1311
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 1312
    add-int v2, v1, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1314
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/support/v4/widget/x;->a(IIII)V

    .line 1315
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1322
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/NestedScrollView;->a:J

    goto :goto_0

    .line 1317
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1318
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->h()V

    .line 1320
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public a(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1111
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 1112
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1114
    if-eqz v0, :cond_2

    .line 1115
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1116
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1117
    if-lez v0, :cond_0

    .line 1118
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 1120
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1129
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1131
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 1111
    goto :goto_0

    .line 1124
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1125
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_0

    .line 1126
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method a(IIIIIIIIZ)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 952
    invoke-static {p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;)I

    move-result v4

    .line 953
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v2

    if-le v1, v2, :cond_6

    const/4 v1, 0x1

    .line 955
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v3

    if-le v2, v3, :cond_7

    const/4 v2, 0x1

    move v3, v2

    .line 957
    :goto_1
    if-eqz v4, :cond_0

    const/4 v2, 0x1

    if-ne v4, v2, :cond_8

    if-eqz v1, :cond_8

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    .line 959
    :goto_2
    if-eqz v4, :cond_1

    const/4 v1, 0x1

    if-ne v4, v1, :cond_9

    if-eqz v3, :cond_9

    :cond_1
    const/4 v1, 0x1

    .line 962
    :goto_3
    add-int v7, p3, p1

    .line 963
    if-nez v2, :cond_2

    .line 964
    const/16 p7, 0x0

    .line 967
    :cond_2
    add-int v5, p4, p2

    .line 968
    if-nez v1, :cond_3

    .line 969
    const/16 p8, 0x0

    .line 973
    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .line 974
    add-int v2, p7, p5

    .line 975
    move/from16 v0, p8

    neg-int v4, v0

    .line 976
    add-int v3, p8, p6

    .line 978
    const/4 v1, 0x0

    .line 979
    if-le v7, v2, :cond_a

    .line 981
    const/4 v1, 0x1

    move v9, v1

    .line 987
    :goto_4
    const/4 v1, 0x0

    .line 988
    if-le v5, v3, :cond_b

    .line 990
    const/4 v1, 0x1

    move v8, v1

    .line 996
    :goto_5
    if-eqz v8, :cond_4

    .line 997
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/widget/x;->a(IIIIII)Z

    .line 1000
    :cond_4
    invoke-virtual {p0, v2, v3, v9, v8}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 1002
    if-nez v9, :cond_5

    if-eqz v8, :cond_c

    :cond_5
    const/4 v1, 0x1

    :goto_6
    return v1

    .line 953
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 955
    :cond_7
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 957
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    goto :goto_2

    .line 959
    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    .line 982
    :cond_a
    if-ge v7, v6, :cond_e

    .line 984
    const/4 v1, 0x1

    move v9, v1

    move v2, v6

    goto :goto_4

    .line 991
    :cond_b
    if-ge v5, v4, :cond_d

    .line 993
    const/4 v1, 0x1

    move v8, v1

    move v3, v4

    goto :goto_5

    .line 1002
    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    :cond_d
    move v8, v1

    move v3, v5

    goto :goto_5

    :cond_e
    move v9, v1

    move v2, v7

    goto :goto_4
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/16 v0, 0x21

    const/4 v1, 0x0

    const/16 v2, 0x82

    .line 525
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 527
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 528
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 530
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 531
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 563
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 533
    goto :goto_0

    .line 541
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 542
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 544
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 545
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->c(I)Z

    move-result v1

    goto :goto_1

    .line 547
    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->b(I)Z

    move-result v1

    goto :goto_1

    .line 551
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 552
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->c(I)Z

    move-result v1

    goto :goto_1

    .line 554
    :cond_5
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->b(I)Z

    move-result v1

    goto :goto_1

    .line 558
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(I)Z

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 374
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 383
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 401
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    return-void
.end method

.method public final b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(II)V

    .line 1333
    return-void
.end method

.method public b(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1147
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 1148
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1150
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 1151
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1153
    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1155
    if-lez v0, :cond_0

    .line 1156
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1157
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1158
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1162
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 1147
    goto :goto_0
.end method

.method public c(I)Z
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x82

    const/4 v2, 0x0

    .line 1211
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1212
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1214
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 1216
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v1

    .line 1218
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1219
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1220
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1221
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v1

    .line 1222
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->e(I)V

    .line 1223
    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1245
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v0

    .line 1253
    const/high16 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1254
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestFocus()Z

    .line 1255
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1257
    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1228
    :cond_2
    const/16 v3, 0x21

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-ge v3, v1, :cond_4

    .line 1229
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 1239
    :cond_3
    :goto_2
    if-nez v1, :cond_5

    move v0, v2

    .line 1240
    goto :goto_1

    .line 1230
    :cond_4
    if-ne p1, v6, :cond_3

    .line 1231
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 1232
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1233
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1234
    sub-int v5, v3, v4

    if-ge v5, v1, :cond_3

    .line 1235
    sub-int v1, v3, v4

    goto :goto_2

    .line 1242
    :cond_5
    if-ne p1, v6, :cond_6

    :goto_3
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->e(I)V

    goto :goto_0

    :cond_6
    neg-int v1, v1

    goto :goto_3
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 1387
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 1381
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 1375
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1421
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v1}, Landroid/support/v4/widget/x;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1422
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    .line 1423
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1424
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v1}, Landroid/support/v4/widget/x;->b()I

    move-result v1

    .line 1425
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->c()I

    move-result v11

    .line 1427
    if-ne v3, v1, :cond_0

    if-eq v4, v11, :cond_2

    .line 1428
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    .line 1429
    invoke-static {p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;)I

    move-result v2

    .line 1430
    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_3

    if-lez v6, :cond_3

    :cond_1
    move v10, v0

    .line 1433
    :goto_0
    sub-int/2addr v1, v3

    sub-int v2, v11, v4

    move-object v0, p0

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIIIZ)Z

    .line 1436
    if-eqz v10, :cond_2

    .line 1437
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->g()V

    .line 1438
    if-gtz v11, :cond_4

    if-lez v4, :cond_4

    .line 1439
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v1}, Landroid/support/v4/widget/x;->f()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/j;->a(I)Z

    .line 1446
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v10, v5

    .line 1430
    goto :goto_0

    .line 1440
    :cond_4
    if-lt v11, v6, :cond_2

    if-ge v4, v6, :cond_2

    .line 1441
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v1}, Landroid/support/v4/widget/x;->f()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/j;->a(I)Z

    goto :goto_1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1369
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1363
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1342
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1343
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1344
    if-nez v0, :cond_1

    move v0, v1

    .line 1357
    :cond_0
    :goto_0
    return v0

    .line 1348
    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1349
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1350
    sub-int v1, v0, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1351
    if-gez v2, :cond_2

    .line 1352
    sub-int/2addr v0, v2

    goto :goto_0

    .line 1353
    :cond_2
    if-le v2, v1, :cond_0

    .line 1354
    sub-int v1, v2, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public d(I)V
    .locals 11
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1693
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1694
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int v4, v0, v1

    .line 1695
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1697
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v4, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/x;->a(IIIIIIIIII)V

    .line 1700
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1702
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

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

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

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
    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

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
    .line 238
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 1761
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1762
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_3

    .line 1763
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1764
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1765
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1766
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1768
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1769
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/widget/j;->a(II)V

    .line 1770
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1771
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1773
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1775
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1776
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1777
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1778
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1780
    neg-int v4, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1782
    const/high16 v0, 0x4334

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1783
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/j;->a(II)V

    .line 1784
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1785
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1787
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1790
    :cond_3
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 339
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 340
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    .line 341
    if-ge v1, v0, :cond_1

    .line 342
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 345
    :cond_1
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 353
    const/high16 v0, 0x3f00

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/aa;

    invoke-virtual {v0}, Landroid/support/v4/view/aa;->a()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 324
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 325
    if-ge v1, v0, :cond_1

    .line 326
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 329
    :cond_1
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->b()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->a()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1392
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1397
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1400
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1402
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1403
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1410
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1413
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1416
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1417
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1651
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    .line 1652
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 899
    invoke-static {p1}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 900
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 924
    :cond_0
    :goto_0
    return v0

    .line 902
    :pswitch_0
    iget-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-nez v1, :cond_0

    .line 903
    const/16 v1, 0x9

    invoke-static {p1, v1}, Landroid/support/v4/view/u;->e(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 905
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 906
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 907
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    .line 908
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    .line 909
    sub-int v2, v3, v2

    .line 910
    if-gez v2, :cond_2

    move v1, v0

    .line 915
    :cond_1
    :goto_1
    if-eq v1, v3, :cond_0

    .line 916
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 917
    const/4 v0, 0x1

    goto :goto_0

    .line 912
    :cond_2
    if-gt v2, v1, :cond_1

    move v1, v2

    goto :goto_1

    .line 900
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 622
    if-ne v1, v5, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_0

    .line 716
    :goto_0
    return v0

    .line 626
    :cond_0
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 716
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    goto :goto_0

    .line 637
    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 638
    if-eq v1, v4, :cond_1

    .line 643
    invoke-static {p1, v1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 644
    if-ne v2, v4, :cond_2

    .line 645
    const-string v0, "NestedScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 650
    :cond_2
    invoke-static {p1, v2}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    .line 651
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 652
    iget v4, p0, Landroid/support/v4/widget/NestedScrollView;->n:I

    if-le v2, v4, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 654
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 655
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 656
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->d()V

    .line 657
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 658
    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->t:I

    .line 659
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 660
    if-eqz v1, :cond_1

    .line 661
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 668
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->c(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 670
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 671
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->e()V

    goto :goto_1

    .line 679
    :cond_3
    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 680
    invoke-static {p1, v3}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 682
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->c()V

    .line 683
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 690
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v1}, Landroid/support/v4/widget/x;->g()Z

    .line 691
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v1}, Landroid/support/v4/widget/x;->a()Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 692
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto/16 :goto_1

    .line 699
    :pswitch_3
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 700
    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 701
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->e()V

    .line 702
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/x;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 703
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 705
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 708
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 626
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1618
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1619
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    .line 1621
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->b(Landroid/view/View;)V

    .line 1624
    :cond_0
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    .line 1626
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    if-nez v0, :cond_2

    .line 1627
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-eqz v0, :cond_1

    .line 1628
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    iget v2, v2, Landroid/support/v4/widget/NestedScrollView$SavedState;->a:I

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1629
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1632
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1633
    :goto_0
    sub-int v2, p5, p3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1637
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-le v2, v0, :cond_4

    .line 1638
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1645
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1646
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    .line 1647
    return-void

    :cond_3
    move v0, v1

    .line 1632
    goto :goto_0

    .line 1639
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_2

    .line 1640
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 481
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 483
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 488
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 494
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v2

    .line 495
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 496
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 498
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v3, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 500
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 501
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 502
    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 505
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    if-nez p4, :cond_0

    .line 294
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->f(I)V

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 280
    invoke-virtual {p0, v1, p5}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 281
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v0

    .line 282
    sub-int v4, p5, v2

    .line 283
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 284
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/aa;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/aa;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 267
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    .line 268
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 944
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 945
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1578
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1579
    const/16 p1, 0x82

    .line 1584
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1589
    :goto_1
    if-nez v1, :cond_4

    .line 1597
    :cond_1
    :goto_2
    return v0

    .line 1580
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1581
    const/16 p1, 0x21

    goto :goto_0

    .line 1584
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 1593
    :cond_4
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1597
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 1824
    check-cast p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1825
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1826
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1827
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    .line 1828
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1832
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1833
    new-instance v1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1834
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Landroid/support/v4/widget/NestedScrollView$SavedState;->a:I

    .line 1835
    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 474
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/widget/NestedScrollView$b;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/widget/NestedScrollView$b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView$b;->a(Landroid/support/v4/widget/NestedScrollView;IIII)V

    .line 477
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1656
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1658
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1659
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1671
    :cond_0
    :goto_0
    return-void

    .line 1665
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1666
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1667
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1668
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    .line 1669
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->e(I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
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
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/aa;->a(Landroid/view/View;)V

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    .line 274
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter

    .prologue
    .line 721
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->d()V

    .line 723
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    .line 725
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 727
    if-nez v2, :cond_0

    .line 728
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    .line 730
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 732
    packed-switch v2, :pswitch_data_0

    .line 874
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 877
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 878
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 734
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 735
    const/4 v2, 0x0

    goto :goto_1

    .line 737
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->a()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_4

    .line 738
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 739
    if-eqz v2, :cond_4

    .line 740
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 748
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->h()V

    .line 753
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 754
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 755
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 737
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 759
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;I)I

    move-result v17

    .line 761
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 762
    const-string v2, "NestedScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 766
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v3, v2

    .line 767
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    sub-int/2addr v2, v3

    .line 768
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v2, v4

    .line 770
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 771
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    .line 773
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-nez v4, :cond_15

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/widget/NestedScrollView;->n:I

    if-le v4, v5, :cond_15

    .line 774
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 775
    if-eqz v4, :cond_9

    .line 776
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 778
    :cond_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    .line 779
    if-lez v2, :cond_c

    .line 780
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->n:I

    sub-int/2addr v2, v4

    move v4, v2

    .line 785
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_1

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 789
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v18

    .line 790
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 791
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;)I

    move-result v2

    .line 792
    if-eqz v2, :cond_a

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    if-lez v8, :cond_d

    :cond_a
    const/4 v2, 0x1

    move v15, v2

    .line 798
    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_b

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 804
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v18

    .line 805
    sub-int v13, v4, v11

    .line 806
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 807
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 808
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 809
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    goto/16 :goto_0

    .line 782
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->n:I

    add-int/2addr v2, v4

    move v4, v2

    goto/16 :goto_3

    .line 792
    :cond_d
    const/4 v2, 0x0

    move v15, v2

    goto :goto_4

    .line 810
    :cond_e
    if-eqz v15, :cond_1

    .line 811
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->g()V

    .line 812
    add-int v2, v18, v4

    .line 813
    if-gez v2, :cond_11

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/u;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/j;->a(FF)Z

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v2}, Landroid/support/v4/widget/j;->a()Z

    move-result v2

    if-nez v2, :cond_f

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v2}, Landroid/support/v4/widget/j;->c()Z

    .line 827
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v2}, Landroid/support/v4/widget/j;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v2}, Landroid/support/v4/widget/j;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 829
    :cond_10
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    goto/16 :goto_0

    .line 819
    :cond_11
    if-le v2, v8, :cond_f

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/j;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/u;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/j;->a(FF)Z

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v2}, Landroid/support/v4/widget/j;->a()Z

    move-result v2

    if-nez v2, :cond_f

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v2}, Landroid/support/v4/widget/j;->c()Z

    goto :goto_5

    .line 835
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_12

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 837
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->p:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 838
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    invoke-static {v2, v3}, Landroid/support/v4/view/af;->b(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v2, v2

    .line 841
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->o:I

    if-le v3, v4, :cond_13

    .line 842
    neg-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->f(I)V

    .line 848
    :cond_12
    :goto_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 849
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->f()V

    goto/16 :goto_0

    .line 843
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/widget/x;->a(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 845
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    goto :goto_6

    .line 852
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_14

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/x;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/widget/x;->a(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 855
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 858
    :cond_14
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    .line 859
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->f()V

    goto/16 :goto_0

    .line 862
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 863
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    .line 864
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/u;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    goto/16 :goto_0

    .line 868
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    .line 869
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/u;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/u;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    goto/16 :goto_0

    :cond_15
    move v4, v2

    goto/16 :goto_3

    .line 732
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1555
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    if-nez v0, :cond_0

    .line 1556
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->b(Landroid/view/View;)V

    .line 1561
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1562
    return-void

    .line 1559
    :cond_0
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1604
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1607
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 601
    if-eqz p1, :cond_0

    .line 602
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->e()V

    .line 604
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 605
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1612
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    .line 1613
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1614
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1736
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1737
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1738
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->b(III)I

    move-result v1

    .line 1739
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->b(III)I

    move-result v0

    .line 1740
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1741
    :cond_0
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1744
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter

    .prologue
    .line 449
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    if-eq p1, v0, :cond_0

    .line 450
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    .line 451
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    .line 453
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(Z)V

    .line 213
    return-void
.end method

.method public setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$b;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/widget/NestedScrollView$b;

    .line 414
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    .line 468
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->c()V

    .line 228
    return-void
.end method
