.class public Landroid/support/design/widget/CollapsingToolbarLayout$a;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    .line 1029
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1025
    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:I

    .line 1026
    iput v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->b:F

    .line 1031
    sget-object v0, Landroid/support/design/a$i;->CollapsingAppBarLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1033
    sget v1, Landroid/support/design/a$i;->CollapsingAppBarLayout_LayoutParams_layout_collapseMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:I

    .line 1036
    sget v1, Landroid/support/design/a$i;->CollapsingAppBarLayout_LayoutParams_layout_collapseParallaxMultiplier:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a(F)V

    .line 1039
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1040
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:I

    .line 1026
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->b:F

    .line 1052
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 1025
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:I

    .line 1026
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->b:F

    .line 1060
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->b:F

    .line 1094
    return-void
.end method
