.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$c;
    a = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$a;,
        Landroid/support/design/widget/AppBarLayout$b;
    }
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:Landroid/support/v4/view/bj;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/AppBarLayout$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 124
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 125
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    .line 131
    iput v2, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 145
    invoke-static {p1}, Landroid/support/design/widget/s;->a(Landroid/content/Context;)V

    .line 147
    sget-object v0, Landroid/support/design/a$i;->AppBarLayout:[I

    sget v1, Landroid/support/design/a$h;->Widget_Design_AppBarLayout:I

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    sget v1, Landroid/support/design/a$i;->AppBarLayout_elevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    .line 150
    sget v1, Landroid/support/design/a$i;->AppBarLayout_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    sget v1, Landroid/support/design/a$i;->AppBarLayout_expanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget v1, Landroid/support/design/a$i;->AppBarLayout_expanded:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-static {p0}, Landroid/support/design/widget/z;->a(Landroid/view/View;)V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->h:Ljava/util/List;

    .line 161
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 163
    new-instance v0, Landroid/support/design/widget/AppBarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/ab;)V

    .line 171
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 1
    .parameter

    .prologue
    .line 478
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 479
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout;->g:Landroid/support/v4/view/bj;

    .line 480
    return-object p1
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 223
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 224
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 225
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    .line 226
    return-void
.end method

.method static synthetic c(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    return v0
.end method

.method static synthetic d(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    .line 470
    return-void
.end method

.method static synthetic f(Landroid/support/design/widget/AppBarLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->e()V

    return-void
.end method

.method static synthetic g(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->c()Z

    move-result v0

    return v0
.end method

.method private getDownNestedPreScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 352
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 354
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 384
    :goto_0
    return v0

    .line 358
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v1, v3

    :goto_1
    if-ltz v2, :cond_4

    .line 359
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 360
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    .line 361
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 362
    iget v6, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 364
    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 366
    iget v7, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    add-int/2addr v0, v7

    add-int/2addr v0, v1

    .line 368
    and-int/lit8 v1, v6, 0x8

    if-eqz v1, :cond_1

    .line 370
    invoke-static {v4}, Landroid/support/v4/view/ah;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 371
    :cond_1
    and-int/lit8 v1, v6, 0x2

    if-eqz v1, :cond_2

    .line 373
    invoke-static {v4}, Landroid/support/v4/view/ah;->r(Landroid/view/View;)I

    move-result v1

    sub-int v1, v5, v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 376
    :cond_2
    add-int/2addr v0, v5

    goto :goto_2

    .line 378
    :cond_3
    if-lez v1, :cond_5

    .line 384
    :cond_4
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private getDownNestedScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 391
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 393
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    .line 422
    :goto_0
    return v0

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 398
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 399
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    .line 400
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 401
    iget v7, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    iget v8, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 403
    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 405
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_2

    .line 407
    add-int/2addr v1, v6

    .line 409
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 413
    invoke-static {v5}, Landroid/support/v4/view/ah;->r(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 422
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    goto :goto_0

    .line 397
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private getPendingAction()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    return v0
.end method

.method private getTopInset()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Landroid/support/v4/view/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Landroid/support/v4/view/bj;

    invoke-virtual {v0}, Landroid/support/v4/view/bj;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUpNestedPreScrollRange()I
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic h(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Landroid/support/design/widget/AppBarLayout$a;
    .locals 3

    .prologue
    .line 278
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/AppBarLayout$a;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$a;
    .locals 2
    .parameter

    .prologue
    .line 283
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$a;
    .locals 1
    .parameter

    .prologue
    .line 288
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 293
    :goto_0
    return-object v0

    .line 290
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 291
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 293
    :cond_1
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/AppBarLayout$b;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 266
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    .line 268
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 269
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Landroid/support/design/widget/AppBarLayout$b;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 273
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout$a;

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->a()Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->a()Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    .line 427
    invoke-static {p0}, Landroid/support/v4/view/ah;->r(Landroid/view/View;)I

    move-result v1

    .line 428
    if-eqz v1, :cond_0

    .line 430
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 435
    :goto_0
    return v0

    .line 434
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .line 435
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ah;->r(Landroid/view/View;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetElevation()F
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 306
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 307
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 334
    :goto_0
    return v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 312
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 313
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    .line 314
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 315
    iget v7, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 317
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    .line 319
    iget v8, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    add-int/2addr v6, v8

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    add-int/2addr v0, v6

    add-int/2addr v1, v0

    .line 321
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_1

    .line 325
    invoke-static {v5}, Landroid/support/v4/view/ah;->r(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    .line 334
    :goto_2
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    goto :goto_0

    .line 311
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 206
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->b()V

    .line 208
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    .line 209
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 210
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    .line 212
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$a;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_1

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    .line 219
    :cond_0
    return-void

    .line 209
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 200
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->b()V

    .line 201
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .parameter

    .prologue
    .line 250
    invoke-static {p0}, Landroid/support/v4/view/ah;->G(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->a(ZZ)V

    .line 251
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 235
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    .line 454
    return-void
.end method
