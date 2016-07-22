.class public Landroid/support/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$b;,
        Landroid/support/design/widget/CollapsingToolbarLayout$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/support/v7/widget/Toolbar;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/support/design/widget/CollapsingTextHelper;

.field private l:Z

.field private m:Z

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Z

.field private r:Landroid/support/design/widget/t;

.field private s:Landroid/support/design/widget/AppBarLayout$b;

.field private t:I

.field private u:Landroid/support/v4/view/bj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    iput-boolean v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->a:Z

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/graphics/Rect;

    .line 138
    invoke-static {p1}, Landroid/support/design/widget/s;->a(Landroid/content/Context;)V

    .line 140
    new-instance v0, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    .line 141
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v1, Landroid/support/design/widget/a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->a(Landroid/view/animation/Interpolator;)V

    .line 143
    sget-object v0, Landroid/support/design/a$i;->CollapsingToolbarLayout:[I

    sget v1, Landroid/support/design/a$h;->Widget_Design_CollapsingToolbar:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v3, 0x800053

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->c(I)V

    .line 150
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/a$i;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v3, 0x800013

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->d(I)V

    .line 154
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleMargin:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:I

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->h:I

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->g:I

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->f:I

    .line 157
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->f:I

    .line 161
    :cond_0
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->h:I

    .line 165
    :cond_1
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->g:I

    .line 169
    :cond_2
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:I

    .line 174
    :cond_3
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Z

    .line 176
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/a$h;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->f(I)V

    .line 181
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/a$h;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->e(I)V

    .line 185
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/a$i;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->f(I)V

    .line 190
    :cond_4
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    sget v2, Landroid/support/design/a$i;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->e(I)V

    .line 196
    :cond_5
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 197
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget v1, Landroid/support/design/a$i;->CollapsingToolbarLayout_toolbarId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->b:I

    .line 201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    invoke-virtual {p0, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 205
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$1;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/ab;)V

    .line 213
    return-void
.end method

.method static synthetic a(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-static {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->d(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/bj;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->u:Landroid/support/v4/view/bj;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->u:Landroid/support/v4/view/bj;

    if-eq v0, p1, :cond_0

    .line 245
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->u:Landroid/support/v4/view/bj;

    .line 246
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/bj;->f()Landroid/support/v4/view/bj;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b()V

    .line 550
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:Landroid/support/design/widget/t;

    if-nez v0, :cond_2

    .line 551
    invoke-static {}, Landroid/support/design/widget/z;->a()Landroid/support/design/widget/t;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:Landroid/support/design/widget/t;

    .line 552
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:Landroid/support/design/widget/t;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/support/design/widget/t;->a(I)V

    .line 553
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:Landroid/support/design/widget/t;

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    if-le p1, v0, :cond_1

    sget-object v0, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/design/widget/t;->a(Landroid/view/animation/Interpolator;)V

    .line 557
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:Landroid/support/design/widget/t;

    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$2;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/t;->a(Landroid/support/design/widget/t$c;)V

    .line 567
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:Landroid/support/design/widget/t;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/t;->a(II)V

    .line 568
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->a()V

    .line 569
    return-void

    .line 553
    :cond_1
    sget-object v0, Landroid/support/design/widget/a;->d:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 563
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->e()V

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/CollapsingToolbarLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/CollapsingToolbarLayout;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->t:I

    return p1
.end method

.method static synthetic b(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private b(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 343
    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, p1

    :goto_0
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_1

    .line 345
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 346
    check-cast v0, Landroid/view/View;

    .line 344
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 349
    :cond_1
    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 304
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->a:Z

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 309
    :cond_0
    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    .line 310
    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    .line 312
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 314
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->b:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    .line 315
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    .line 320
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_2

    .line 324
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_4

    .line 325
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 326
    instance-of v5, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v5, :cond_3

    .line 327
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 331
    :goto_2
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    .line 334
    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c()V

    .line 335
    iput-boolean v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->a:Z

    goto :goto_0

    .line 324
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private static c(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 445
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 446
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 447
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 449
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 353
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 356
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 357
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 360
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 362
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    .line 364
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 368
    :cond_2
    return-void
.end method

.method static synthetic d(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/CollapsingTextHelper;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    return-object v0
.end method

.method private static d(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 2
    .parameter

    .prologue
    .line 453
    sget v0, Landroid/support/design/a$e;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ViewOffsetHelper;

    .line 454
    if-nez v0, :cond_0

    .line 455
    new-instance v0, Landroid/support/design/widget/ViewOffsetHelper;

    invoke-direct {v0, p0}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 456
    sget v1, Landroid/support/design/a$e;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 458
    :cond_0
    return-object v0
.end method

.method private setScrimAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 572
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    if-eq p1, v0, :cond_1

    .line 573
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 574
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 577
    :cond_0
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    .line 578
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 580
    :cond_1
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/design/widget/CollapsingToolbarLayout$a;
    .locals 2

    .prologue
    .line 982
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout$a;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 992
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 538
    iget-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->q:Z

    if-eq v2, p1, :cond_0

    .line 539
    if-eqz p2, :cond_2

    .line 540
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(I)V

    .line 544
    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->q:Z

    .line 546
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 540
    goto :goto_0

    .line 542
    :cond_2
    if-eqz p1, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 977
    instance-of v0, p1, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 257
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b()V

    .line 258
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    if-lez v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 260
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->a(Landroid/graphics/Canvas;)V

    .line 269
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    if-lez v0, :cond_2

    .line 270
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->u:Landroid/support/v4/view/bj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->u:Landroid/support/v4/view/bj;

    invoke-virtual {v0}, Landroid/support/v4/view/bj;->b()I

    move-result v0

    .line 271
    :goto_0
    if-lez v0, :cond_2

    .line 272
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->t:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->t:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 274
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 275
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 270
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b()V

    .line 286
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    if-lez v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 288
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 675
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 677
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v1

    .line 678
    const/4 v0, 0x0

    .line 680
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    .line 681
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 684
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 685
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 686
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 689
    :cond_1
    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->invalidate()V

    .line 692
    :cond_2
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a()Landroid/support/design/widget/CollapsingToolbarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a()Landroid/support/design/widget/CollapsingToolbarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 987
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->c()I

    move-result v0

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->d()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->b()I

    move-result v0

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->h:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .prologue
    .line 890
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->f:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .prologue
    .line 911
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->g:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->e()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method final getScrimTriggerOffset()I
    .locals 1

    .prologue
    .line 972
    invoke-static {p0}, Landroid/support/v4/view/ah;->r(Landroid/view/View;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->i()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 217
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 220
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 221
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/design/widget/AppBarLayout$b;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout$b;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/design/widget/AppBarLayout$b;

    .line 225
    :cond_0
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/design/widget/AppBarLayout$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$b;)V

    .line 229
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ah;->x(Landroid/view/View;)V

    .line 230
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 236
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/design/widget/AppBarLayout$b;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/design/widget/AppBarLayout$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout$b;)V

    .line 240
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 241
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 382
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->I(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Z

    .line 388
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    if-eq v0, p0, :cond_b

    .line 391
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    .line 392
    iget v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->bottomMargin:I

    .line 394
    :goto_1
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:Landroid/view/View;

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/graphics/Rect;

    invoke-static {p0, v3, v4}, Landroid/support/design/widget/w;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 395
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, p5, v5

    sub-int/2addr v5, v0

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v0, p5, v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/support/design/widget/CollapsingTextHelper;->b(IIII)V

    .line 400
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 403
    :goto_2
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v1, :cond_4

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->h:I

    :goto_3
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->g:I

    add-int/2addr v4, v5

    sub-int v5, p4, p2

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->f:I

    :goto_4
    sub-int v1, v5, v1

    sub-int v5, p5, p3

    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/support/design/widget/CollapsingTextHelper;->a(IIII)V

    .line 409
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->h()V

    .line 414
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_6

    .line 415
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 417
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->u:Landroid/support/v4/view/bj;

    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 418
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->u:Landroid/support/v4/view/bj;

    invoke-virtual {v3}, Landroid/support/v4/view/bj;->b()I

    move-result v3

    .line 419
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 422
    invoke-static {v1, v3}, Landroid/support/v4/view/ah;->e(Landroid/view/View;I)V

    .line 426
    :cond_1
    invoke-static {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->d(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/ViewOffsetHelper;->a()V

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2
    move v0, v2

    .line 385
    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 400
    goto :goto_2

    .line 403
    :cond_4
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->f:I

    goto :goto_3

    :cond_5
    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->h:I

    goto :goto_4

    .line 430
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_9

    .line 431
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 433
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->a(Ljava/lang/CharSequence;)V

    .line 435
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    if-ne v0, p0, :cond_a

    .line 436
    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 441
    :cond_9
    :goto_6
    return-void

    .line 438
    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    goto :goto_6

    :cond_b
    move v0, v2

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b()V

    .line 373
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 374
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 298
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 301
    :cond_0
    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1
    .parameter

    .prologue
    .line 776
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->d(I)V

    .line 777
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .parameter

    .prologue
    .line 756
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->e(I)V

    .line 757
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 765
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->a(I)V

    .line 766
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter

    .prologue
    .line 833
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->a(Landroid/graphics/Typeface;)V

    .line 834
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 592
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 593
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 596
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 597
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 599
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 600
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 602
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 604
    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 615
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 616
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 627
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 629
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 804
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->b(I)V

    .line 805
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1
    .parameter

    .prologue
    .line 815
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->c(I)V

    .line 816
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0
    .parameter

    .prologue
    .line 964
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:I

    .line 965
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 966
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0
    .parameter

    .prologue
    .line 943
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->h:I

    .line 944
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 945
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->f:I

    .line 902
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 903
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->g:I

    .line 923
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 924
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .parameter

    .prologue
    .line 795
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->f(I)V

    .line 796
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter

    .prologue
    .line 850
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->b(Landroid/graphics/Typeface;)V

    .line 851
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1
    .parameter

    .prologue
    .line 524
    invoke-static {p0}, Landroid/support/v4/view/ah;->G(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(ZZ)V

    .line 525
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 654
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 655
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 656
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 658
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    .line 659
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 663
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/b/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 665
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 666
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 667
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 669
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 671
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 665
    goto :goto_0
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 723
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 724
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 736
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->a(Ljava/lang/CharSequence;)V

    .line 471
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 495
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Z

    if-eq p1, v0, :cond_0

    .line 496
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Z

    .line 497
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c()V

    .line 498
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 500
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 701
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 703
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 704
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 705
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 707
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 708
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 710
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 703
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 696
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
