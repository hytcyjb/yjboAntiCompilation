.class Landroid/support/design/widget/TabLayout$c;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TabLayout;

.field private b:I

.field private final c:Landroid/graphics/Paint;

.field private d:I

.field private e:F

.field private f:I

.field private g:I

.field private h:Landroid/support/design/widget/t;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1635
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$c;->a:Landroid/support/design/widget/TabLayout;

    .line 1636
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1627
    iput v0, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    .line 1630
    iput v0, p0, Landroid/support/design/widget/TabLayout$c;->f:I

    .line 1631
    iput v0, p0, Landroid/support/design/widget/TabLayout$c;->g:I

    .line 1637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$c;->setWillNotDraw(Z)V

    .line 1638
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$c;->c:Landroid/graphics/Paint;

    .line 1639
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$c;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1623
    iput p1, p0, Landroid/support/design/widget/TabLayout$c;->e:F

    return p1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1623
    iput p1, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    return p1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$c;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1623
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout$c;->b(II)V

    return-void
.end method

.method private b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1777
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->f:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->g:I

    if-eq p2, v0, :cond_1

    .line 1779
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$c;->f:I

    .line 1780
    iput p2, p0, Landroid/support/design/widget/TabLayout$c;->g:I

    .line 1781
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1783
    :cond_1
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 1754
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1757
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 1758
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1759
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1761
    iget v2, p0, Landroid/support/design/widget/TabLayout$c;->e:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$c;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 1763
    iget v2, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1764
    iget v3, p0, Landroid/support/design/widget/TabLayout$c;->e:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/design/widget/TabLayout$c;->e:F

    sub-float v4, v5, v4

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 1766
    iget v3, p0, Landroid/support/design/widget/TabLayout$c;->e:F

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/support/design/widget/TabLayout$c;->e:F

    sub-float v3, v5, v3

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1773
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/support/design/widget/TabLayout$c;->b(II)V

    .line 1774
    return-void

    .line 1770
    :cond_1
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 1
    .parameter

    .prologue
    .line 1642
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1643
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1644
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1646
    :cond_0
    return-void
.end method

.method a(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1666
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->e()V

    .line 1670
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    .line 1671
    iput p2, p0, Landroid/support/design/widget/TabLayout$c;->e:F

    .line 1672
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$c;->c()V

    .line 1673
    return-void
.end method

.method a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1786
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1787
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->e()V

    .line 1790
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 1793
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1794
    if-nez v2, :cond_3

    .line 1796
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$c;->c()V

    .line 1852
    :cond_1
    :goto_1
    return-void

    .line 1790
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1800
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1801
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1805
    iget v2, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_5

    .line 1807
    iget v2, p0, Landroid/support/design/widget/TabLayout$c;->f:I

    .line 1808
    iget v4, p0, Landroid/support/design/widget/TabLayout$c;->g:I

    .line 1829
    :goto_2
    if-ne v2, v3, :cond_4

    if-eq v4, v5, :cond_1

    .line 1830
    :cond_4
    invoke-static {}, Landroid/support/design/widget/z;->a()Landroid/support/design/widget/t;

    move-result-object v6

    iput-object v6, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    .line 1831
    sget-object v0, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/support/design/widget/t;->a(Landroid/view/animation/Interpolator;)V

    .line 1832
    invoke-virtual {v6, p2}, Landroid/support/design/widget/t;->a(I)V

    .line 1833
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-virtual {v6, v0, v1}, Landroid/support/design/widget/t;->a(FF)V

    .line 1834
    new-instance v0, Landroid/support/design/widget/TabLayout$c$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/TabLayout$c$1;-><init>(Landroid/support/design/widget/TabLayout$c;IIII)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/t;->a(Landroid/support/design/widget/t$c;)V

    .line 1843
    new-instance v0, Landroid/support/design/widget/TabLayout$c$2;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$c$2;-><init>(Landroid/support/design/widget/TabLayout$c;I)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/t;->a(Landroid/support/design/widget/t$a;)V

    .line 1850
    invoke-virtual {v6}, Landroid/support/design/widget/t;->a()V

    goto :goto_1

    .line 1811
    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$c;->a:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;I)I

    move-result v1

    .line 1812
    iget v2, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    if-ge p1, v2, :cond_7

    .line 1814
    if-eqz v0, :cond_6

    .line 1815
    sub-int v4, v3, v1

    move v2, v4

    goto :goto_2

    .line 1817
    :cond_6
    add-int v4, v5, v1

    move v2, v4

    goto :goto_2

    .line 1821
    :cond_7
    if-eqz v0, :cond_8

    .line 1822
    add-int v4, v5, v1

    move v2, v4

    goto :goto_2

    .line 1824
    :cond_8
    sub-int v4, v3, v1

    move v2, v4

    goto :goto_2
.end method

.method a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1656
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$c;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1657
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1658
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1659
    const/4 v0, 0x1

    .line 1662
    :cond_0
    return v0

    .line 1656
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method b()F
    .locals 2

    .prologue
    .line 1676
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$c;->e:F

    add-float/2addr v0, v1

    return v0
.end method

.method b(I)V
    .locals 1
    .parameter

    .prologue
    .line 1649
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->b:I

    if-eq v0, p1, :cond_0

    .line 1650
    iput p1, p0, Landroid/support/design/widget/TabLayout$c;->b:I

    .line 1651
    invoke-static {p0}, Landroid/support/v4/view/ah;->d(Landroid/view/View;)V

    .line 1653
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 1856
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1859
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->g:I

    iget v1, p0, Landroid/support/design/widget/TabLayout$c;->f:I

    if-le v0, v1, :cond_0

    .line 1860
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->f:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$c;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/TabLayout$c;->b:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->g:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$c;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$c;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1863
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1738
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1740
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->e()V

    .line 1744
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    invoke-virtual {v0}, Landroid/support/design/widget/t;->g()J

    move-result-wide v0

    .line 1745
    iget v2, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    const/high16 v3, 0x3f80

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$c;->h:Landroid/support/design/widget/t;

    invoke-virtual {v4}, Landroid/support/design/widget/t;->f()F

    move-result v4

    sub-float/2addr v3, v4

    long-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/design/widget/TabLayout$c;->a(II)V

    .line 1751
    :goto_0
    return-void

    .line 1749
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$c;->c()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1681
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1683
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x4000

    if-eq v0, v1, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->j(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->m(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1690
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$c;->getChildCount()I

    move-result v5

    move v4, v2

    move v1, v2

    .line 1694
    :goto_1
    if-ge v4, v5, :cond_2

    .line 1695
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1696
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 1697
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1694
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    .line 1701
    :cond_2
    if-lez v1, :cond_0

    .line 1706
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->a:Landroid/support/design/widget/TabLayout;

    const/16 v4, 0x10

    invoke-static {v0, v4}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;I)I

    move-result v0

    .line 1709
    mul-int v4, v1, v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$c;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v6, v0

    if-gt v4, v0, :cond_4

    move v4, v2

    .line 1712
    :goto_3
    if-ge v4, v5, :cond_5

    .line 1713
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1715
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v6, v1, :cond_3

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    .line 1716
    :cond_3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1717
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v0, v3

    .line 1712
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_3

    .line 1724
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0, v2}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;I)I

    .line 1725
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;Z)V

    move v2, v3

    .line 1729
    :cond_5
    if-eqz v2, :cond_0

    .line 1731
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_2
.end method
