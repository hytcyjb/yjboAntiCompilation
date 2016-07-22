.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$b;,
        Landroid/support/design/widget/TabLayout$g;,
        Landroid/support/design/widget/TabLayout$e;,
        Landroid/support/design/widget/TabLayout$c;,
        Landroid/support/design/widget/TabLayout$f;,
        Landroid/support/design/widget/TabLayout$d;,
        Landroid/support/design/widget/TabLayout$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/e/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/h$a",
            "<",
            "Landroid/support/design/widget/TabLayout$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Landroid/support/v4/e/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/h$a",
            "<",
            "Landroid/support/design/widget/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/design/widget/TabLayout$d;

.field private final d:Landroid/support/design/widget/TabLayout$c;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/content/res/ColorStateList;

.field private k:F

.field private l:F

.field private final m:I

.field private n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/support/design/widget/TabLayout$a;

.field private v:Landroid/support/design/widget/t;

.field private w:Landroid/support/v4/view/ViewPager;

.field private x:Landroid/support/v4/view/ac;

.field private y:Landroid/database/DataSetObserver;

.field private z:Landroid/support/design/widget/TabLayout$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/support/v4/e/h$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/e/h$c;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->a:Landroid/support/v4/e/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 265
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    .line 234
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    .line 254
    new-instance v0, Landroid/support/v4/e/h$b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/e/h$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/v4/e/h$a;

    .line 267
    invoke-static {p1}, Landroid/support/design/widget/s;->a(Landroid/content/Context;)V

    .line 270
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 273
    new-instance v0, Landroid/support/design/widget/TabLayout$c;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$c;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    .line 274
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v4, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 277
    sget-object v0, Landroid/support/design/a$i;->TabLayout:[I

    sget v1, Landroid/support/design/a$h;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    sget v2, Landroid/support/design/a$i;->TabLayout_tabIndicatorHeight:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$c;->b(I)V

    .line 282
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    sget v2, Landroid/support/design/a$i;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 284
    sget v1, Landroid/support/design/a$i;->TabLayout_tabPadding:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->h:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->g:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->f:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    .line 286
    sget v1, Landroid/support/design/a$i;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    .line 288
    sget v1, Landroid/support/design/a$i;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->f:I

    .line 290
    sget v1, Landroid/support/design/a$i;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->g:I

    .line 292
    sget v1, Landroid/support/design/a$i;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->h:I

    .line 295
    sget v1, Landroid/support/design/a$i;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/a$h;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->i:I

    .line 299
    iget v1, p0, Landroid/support/design/widget/TabLayout;->i:I

    sget-object v2, Landroid/support/design/a$i;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 302
    :try_start_0
    sget v2, Landroid/support/design/a$i;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->k:F

    .line 303
    sget v2, Landroid/support/design/a$i;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    sget v1, Landroid/support/design/a$i;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    sget v1, Landroid/support/design/a$i;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/content/res/ColorStateList;

    .line 313
    :cond_0
    sget v1, Landroid/support/design/a$i;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    sget v1, Landroid/support/design/a$i;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 318
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/design/widget/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/content/res/ColorStateList;

    .line 321
    :cond_1
    sget v1, Landroid/support/design/a$i;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->o:I

    .line 323
    sget v1, Landroid/support/design/a$i;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    .line 325
    sget v1, Landroid/support/design/a$i;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->m:I

    .line 326
    sget v1, Landroid/support/design/a$i;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->r:I

    .line 327
    sget v1, Landroid/support/design/a$i;->TabLayout_tabMode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->t:I

    .line 328
    sget v1, Landroid/support/design/a$i;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->s:I

    .line 329
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 333
    sget v1, Landroid/support/design/a$d;->design_tab_text_size_2line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->l:F

    .line 334
    sget v1, Landroid/support/design/a$d;->design_tab_scrollable_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->q:I

    .line 337
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->f()V

    .line 338
    return-void

    .line 305
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(IF)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1030
    iget v1, p0, Landroid/support/design/widget/TabLayout;->t:I

    if-nez v1, :cond_1

    .line 1031
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1032
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$c;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1035
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1036
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1038
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1043
    :cond_1
    return v0

    .line 1032
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 1035
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->m:I

    return v0
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v0

    return v0
.end method

.method private static a(II)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1867
    new-array v0, v1, [[I

    .line 1868
    new-array v1, v1, [I

    .line 1869
    const/4 v2, 0x0

    .line 1871
    sget-object v3, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v0, v2

    .line 1872
    aput p1, v1, v2

    .line 1873
    const/4 v2, 0x1

    .line 1876
    sget-object v3, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v0, v2

    .line 1877
    aput p0, v1, v2

    .line 1880
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private a(IFZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 379
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$c;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    if-eqz p4, :cond_2

    .line 385
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1, p1, p2}, Landroid/support/design/widget/TabLayout$c;->a(IF)V

    .line 389
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v1}, Landroid/support/design/widget/t;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v1}, Landroid/support/design/widget/t;->e()V

    .line 392
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 395
    if-eqz p3, :cond_0

    .line 396
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method private a(Landroid/support/design/widget/TabLayout$d;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 805
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$d;->b(I)V

    .line 806
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 808
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 809
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 810
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$d;->b(I)V

    .line 809
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 812
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;IFZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/widget/TabLayout;->a(IFZZ)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Z)V

    return-void
.end method

.method private a(Landroid/support/design/widget/r;)V
    .locals 2
    .parameter

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$d;

    move-result-object v0

    .line 464
    iget-object v1, p1, Landroid/support/design/widget/r;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p1, Landroid/support/design/widget/r;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$d;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$d;

    .line 467
    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/r;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p1, Landroid/support/design/widget/r;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$d;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$d;

    .line 470
    :cond_1
    iget v1, p1, Landroid/support/design/widget/r;->c:I

    if-eqz v1, :cond_2

    .line 471
    iget v1, p1, Landroid/support/design/widget/r;->c:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$d;->a(I)Landroid/support/design/widget/TabLayout$d;

    .line 473
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$d;)V

    .line 474
    return-void
.end method

.method private a(Landroid/support/v4/view/ac;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/v4/view/ac;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ac;->b(Landroid/database/DataSetObserver;)V

    .line 752
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/v4/view/ac;

    .line 754
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 756
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 757
    new-instance v0, Landroid/support/design/widget/TabLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$b;-><init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/database/DataSetObserver;

    .line 759
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ac;->a(Landroid/database/DataSetObserver;)V

    .line 763
    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->c()V

    .line 764
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 851
    instance-of v0, p1, Landroid/support/design/widget/r;

    if-eqz v0, :cond_0

    .line 852
    check-cast p1, Landroid/support/design/widget/r;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/r;)V

    .line 856
    return-void

    .line 854
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .parameter

    .prologue
    .line 866
    iget v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    if-nez v0, :cond_0

    .line 867
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 868
    const/high16 v0, 0x3f80

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 873
    :goto_0
    return-void

    .line 870
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 871
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1067
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1068
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1069
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1070
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1071
    if-eqz p1, :cond_0

    .line 1072
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1067
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1075
    :cond_1
    return-void
.end method

.method private b(I)I
    .locals 2
    .parameter

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->e:I

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput p1, p0, Landroid/support/design/widget/TabLayout;->s:I

    return p1
.end method

.method static synthetic c(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->f:I

    return v0
.end method

.method private c(Landroid/support/design/widget/TabLayout$d;)Landroid/support/design/widget/TabLayout$f;
    .locals 2
    .parameter

    .prologue
    .line 794
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/v4/e/h$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/v4/e/h$a;

    invoke-interface {v0}, Landroid/support/v4/e/h$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    .line 795
    :goto_0
    if-nez v0, :cond_0

    .line 796
    new-instance v0, Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$f;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 798
    :cond_0
    invoke-static {v0, p1}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/support/design/widget/TabLayout$f;Landroid/support/design/widget/TabLayout$d;)V

    .line 799
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->setFocusable(Z)V

    .line 800
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->setMinimumWidth(I)V

    .line 801
    return-object v0

    .line 794
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 767
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()V

    .line 769
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/v4/view/ac;

    invoke-virtual {v0}, Landroid/support/v4/view/ac;->b()I

    move-result v2

    move v0, v1

    .line 771
    :goto_0
    if-ge v0, v2, :cond_0

    .line 772
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$d;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/v4/view/ac;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ac;->c(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$d;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$d;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$d;Z)V

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    if-lez v2, :cond_1

    .line 777
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 778
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 779
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$d;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$d;)V

    .line 785
    :cond_1
    :goto_1
    return-void

    .line 783
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()V

    goto :goto_1
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 937
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    .line 938
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$c;->removeViewAt(I)V

    .line 939
    if-eqz v0, :cond_0

    .line 940
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/support/design/widget/TabLayout$f;)V

    .line 941
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/v4/e/h$a;

    invoke-interface {v1, v0}, Landroid/support/v4/e/h$a;->a(Ljava/lang/Object;)Z

    .line 943
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 944
    return-void
.end method

.method private c(Landroid/support/design/widget/TabLayout$d;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 815
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$d;->d(Landroid/support/design/widget/TabLayout$d;)Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    .line 816
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/TabLayout$c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    if-eqz p2, :cond_0

    .line 818
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->setSelected(Z)V

    .line 820
    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->g:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 788
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 789
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$d;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout$d;->c(Landroid/support/design/widget/TabLayout$d;)V

    .line 788
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 791
    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x12c

    const/4 v1, 0x0

    .line 947
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 981
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ah;->G(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    goto :goto_0

    .line 959
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 960
    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    .line 962
    if-eq v0, v1, :cond_4

    .line 963
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    if-nez v2, :cond_3

    .line 964
    invoke-static {}, Landroid/support/design/widget/z;->a()Landroid/support/design/widget/t;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    .line 965
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    sget-object v3, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/t;->a(Landroid/view/animation/Interpolator;)V

    .line 966
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/t;->a(I)V

    .line 967
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    new-instance v3, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/t;->a(Landroid/support/design/widget/t$c;)V

    .line 975
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/t;->a(II)V

    .line 976
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->a()V

    .line 980
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, p1, v4}, Landroid/support/design/widget/TabLayout$c;->a(II)V

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->h:I

    return v0
.end method

.method private e()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 859
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 861
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 862
    return-object v0
.end method

.method static synthetic f(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v0

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1047
    .line 1048
    iget v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    if-nez v0, :cond_0

    .line 1050
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->e:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1052
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ah;->b(Landroid/view/View;IIII)V

    .line 1054
    iget v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    packed-switch v0, :pswitch_data_0

    .line 1063
    :goto_1
    invoke-direct {p0, v3}, Landroid/support/design/widget/TabLayout;->a(Z)V

    .line 1064
    return-void

    .line 1056
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$c;->setGravity(I)V

    goto :goto_1

    .line 1059
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$c;->setGravity(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1054
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic g(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    return v0
.end method

.method private getDefaultHeight()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1884
    .line 1885
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 1886
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$d;

    .line 1887
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1888
    const/4 v0, 0x1

    .line 1892
    :goto_1
    if-eqz v0, :cond_1

    const/16 v0, 0x48

    :goto_2
    return v0

    .line 1885
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1892
    :cond_1
    const/16 v0, 0x30

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getScrollPosition()F
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->b()F

    move-result v0

    return v0
.end method

.method private getTabMaxWidth()I
    .locals 1

    .prologue
    .line 1914
    iget v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .prologue
    .line 1896
    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1898
    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    .line 1901
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->q:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabScrollRange()I
    .locals 3

    .prologue
    .line 742
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$c;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic h(Landroid/support/design/widget/TabLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->k:F

    return v0
.end method

.method static synthetic i(Landroid/support/design/widget/TabLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:F

    return v0
.end method

.method static synthetic j(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    return v0
.end method

.method static synthetic k(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->i:I

    return v0
.end method

.method static synthetic l(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic m(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    return v0
.end method

.method static synthetic n(Landroid/support/design/widget/TabLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->c()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 984
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->getChildCount()I

    move-result v3

    .line 985
    if-ge p1, v3, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    .line 986
    :goto_0
    if-ge v2, v3, :cond_1

    .line 987
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 988
    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 986
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 988
    goto :goto_1

    .line 991
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/support/design/widget/TabLayout$d;
    .locals 2

    .prologue
    .line 495
    sget-object v0, Landroid/support/design/widget/TabLayout;->a:Landroid/support/v4/e/h$a;

    invoke-interface {v0}, Landroid/support/v4/e/h$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$d;

    .line 496
    if-nez v0, :cond_0

    .line 497
    new-instance v0, Landroid/support/design/widget/TabLayout$d;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$d;-><init>(Landroid/support/design/widget/TabLayout;)V

    .line 499
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$d;)Landroid/support/design/widget/TabLayout$f;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$d;->a(Landroid/support/design/widget/TabLayout$d;Landroid/support/design/widget/TabLayout$f;)Landroid/support/design/widget/TabLayout$f;

    .line 500
    return-object v0
.end method

.method public a(I)Landroid/support/design/widget/TabLayout$d;
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$d;

    return-object v0
.end method

.method public a(IFZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->a(IFZZ)V

    .line 374
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$d;)V
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$d;Z)V

    .line 412
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$d;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$d;->a(Landroid/support/design/widget/TabLayout$d;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$d;Z)V

    .line 437
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$d;I)V

    .line 438
    if-eqz p2, :cond_1

    .line 439
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$d;->e()V

    .line 441
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 833
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 837
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 838
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 847
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 848
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 842
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 843
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 575
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(I)V

    .line 574
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 578
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$d;

    .line 580
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 581
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$d;->b(Landroid/support/design/widget/TabLayout$d;)V

    .line 582
    sget-object v2, Landroid/support/design/widget/TabLayout;->a:Landroid/support/v4/e/h$a;

    invoke-interface {v2, v0}, Landroid/support/v4/e/h$a;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 585
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    .line 586
    return-void
.end method

.method b(Landroid/support/design/widget/TabLayout$d;)V
    .locals 1
    .parameter

    .prologue
    .line 994
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$d;Z)V

    .line 995
    return-void
.end method

.method b(Landroid/support/design/widget/TabLayout$d;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 998
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    if-ne v0, p1, :cond_2

    .line 999
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/support/design/widget/TabLayout$a;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$a;->c(Landroid/support/design/widget/TabLayout$d;)V

    .line 1003
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$d;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    .line 1027
    :cond_1
    :goto_0
    return-void

    .line 1006
    :cond_2
    if-eqz p2, :cond_5

    .line 1007
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$d;->c()I

    move-result v0

    .line 1008
    :goto_1
    if-eq v0, v1, :cond_3

    .line 1009
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 1011
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$d;->c()I

    move-result v2

    if-ne v2, v1, :cond_8

    :cond_4
    if-eq v0, v1, :cond_8

    .line 1014
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    .line 1019
    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_6

    .line 1020
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/support/design/widget/TabLayout$a;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$a;->b(Landroid/support/design/widget/TabLayout$d;)V

    .line 1022
    :cond_6
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    .line 1023
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/support/design/widget/TabLayout$a;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$a;->a(Landroid/support/design/widget/TabLayout$d;)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 1007
    goto :goto_1

    .line 1016
    :cond_8
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    goto :goto_2
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 1910
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 883
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 884
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 895
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 896
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 899
    iget v3, p0, Landroid/support/design/widget/TabLayout;->p:I

    if-lez v3, :cond_2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    :goto_1
    iput v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    .line 905
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 907
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 910
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 913
    iget v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 925
    :goto_2
    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v0, v1}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 929
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 931
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 934
    :cond_1
    return-void

    .line 886
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 891
    :sswitch_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 899
    :cond_2
    const/16 v3, 0x38

    invoke-direct {p0, v3}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    .line 917
    :pswitch_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v0, v4, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    .line 921
    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v0, v4, :cond_4

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 884
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$a;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->u:Landroid/support/design/widget/TabLayout$a;

    .line 484
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$c;->a(I)V

    .line 349
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$c;->b(I)V

    .line 360
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1
    .parameter

    .prologue
    .line 628
    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    if-eq v0, p1, :cond_0

    .line 629
    iput p1, p0, Landroid/support/design/widget/TabLayout;->s:I

    .line 630
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->f()V

    .line 632
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 604
    iget v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    if-eq p1, v0, :cond_0

    .line 605
    iput p1, p0, Landroid/support/design/widget/TabLayout;->t:I

    .line 606
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->f()V

    .line 608
    :cond_0
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 651
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/content/res/ColorStateList;

    .line 652
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->d()V

    .line 654
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/ac;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ac;Z)V

    .line 733
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 691
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/design/widget/TabLayout$e;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager$f;)V

    .line 696
    :cond_0
    if-eqz p1, :cond_3

    .line 697
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/ac;

    move-result-object v0

    .line 698
    if-nez v0, :cond_1

    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/view/ViewPager;

    .line 705
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/design/widget/TabLayout$e;

    if-nez v1, :cond_2

    .line 706
    new-instance v1, Landroid/support/design/widget/TabLayout$e;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$e;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/design/widget/TabLayout$e;

    .line 708
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/design/widget/TabLayout$e;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$e;)V

    .line 709
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    .line 712
    new-instance v1, Landroid/support/design/widget/TabLayout$g;

    invoke-direct {v1, p1}, Landroid/support/design/widget/TabLayout$g;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$a;)V

    .line 715
    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ac;Z)V

    .line 723
    :goto_0
    return-void

    .line 719
    :cond_3
    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/view/ViewPager;

    .line 720
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$a;)V

    .line 721
    invoke-direct {p0, v2, v3}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ac;Z)V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
