.class public Landroid/support/design/widget/AppBarLayout$a;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 544
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 562
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 544
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 549
    sget-object v0, Landroid/support/design/a$i;->AppBarLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 550
    sget v1, Landroid/support/design/a$i;->AppBarLayout_LayoutParams_layout_scrollFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 551
    sget v1, Landroid/support/design/a$i;->AppBarLayout_LayoutParams_layout_scrollInterpolator:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    sget v1, Landroid/support/design/a$i;->AppBarLayout_LayoutParams_layout_scrollInterpolator:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 554
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$a;->b:Landroid/view/animation/Interpolator;

    .line 557
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 558
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 569
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 570
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 573
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 544
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 574
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 577
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 544
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    .line 578
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    return v0
.end method

.method public b()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$a;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method
