.class Landroid/support/v4/widget/DrawerLayout$h;
.super Landroid/support/v4/widget/ag$a;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final b:I

.field private c:Landroid/support/v4/widget/ag;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1997
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ag$a;-><init>()V

    .line 1991
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$h$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$h$1;-><init>(Landroid/support/v4/widget/DrawerLayout$h;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->d:Ljava/lang/Runnable;

    .line 1998
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$h;->b:I

    .line 1999
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$h;)V
    .locals 0
    .parameter

    .prologue
    .line 1987
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$h;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 2048
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->b:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    .line 2049
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2050
    if-eqz v0, :cond_1

    .line 2051
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 2053
    :cond_1
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2082
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->c:Landroid/support/v4/widget/ag;

    invoke-virtual {v1}, Landroid/support/v4/widget/ag;->b()I

    move-result v2

    .line 2083
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->b:I

    if-ne v1, v5, :cond_4

    move v3, v4

    .line 2084
    :goto_0
    if-eqz v3, :cond_5

    .line 2085
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v1

    .line 2086
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :cond_0
    add-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    .line 2092
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v1, :cond_2

    :cond_1
    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2095
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 2096
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$h;->c:Landroid/support/v4/widget/ag;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3, v2, v1, v5}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;II)Z

    .line 2097
    invoke-static {v0, v4}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;Z)Z

    .line 2098
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2100
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$h;->b()V

    .line 2102
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->c()V

    .line 2104
    :cond_3
    return-void

    :cond_4
    move v3, v0

    .line 2083
    goto :goto_0

    .line 2088
    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v1

    .line 2089
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2149
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 2006
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2007
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 2019
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$h;->c:Landroid/support/v4/widget/ag;

    invoke-virtual {v2}, Landroid/support/v4/widget/ag;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 2020
    return-void
.end method

.method public a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2076
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2077
    return-void
.end method

.method public a(Landroid/support/v4/widget/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 2002
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$h;->c:Landroid/support/v4/widget/ag;

    .line 2003
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 2059
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)F

    move-result v1

    .line 2060
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2063
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2064
    cmpl-float v0, p2, v4

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v4

    if-nez v0, :cond_2

    cmpl-float v0, v1, v5

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2070
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->c:Landroid/support/v4/widget/ag;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ag;->a(II)Z

    .line 2071
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2072
    return-void

    .line 2064
    :cond_2
    neg-int v0, v2

    goto :goto_0

    .line 2066
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 2067
    cmpg-float v3, p2, v4

    if-ltz v3, :cond_4

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    :cond_4
    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2025
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2028
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2029
    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 2034
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 2035
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2036
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2037
    return-void

    .line 2031
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 2032
    sub-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 2035
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2013
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 2134
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2139
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2140
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2143
    :goto_0
    return v0

    .line 2142
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 2143
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2121
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2122
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2127
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2128
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$h;->c:Landroid/support/v4/widget/ag;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;I)V

    .line 2130
    :cond_0
    return-void

    .line 2124
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$h;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2041
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$g;

    .line 2042
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$g;->a(Landroid/support/v4/widget/DrawerLayout$g;Z)Z

    .line 2044
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$h;->b()V

    .line 2045
    return-void
.end method

.method public b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2115
    const/4 v0, 0x0

    return v0
.end method
