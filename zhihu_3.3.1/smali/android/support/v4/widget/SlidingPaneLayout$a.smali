.class Landroid/support/v4/widget/SlidingPaneLayout$a;
.super Landroid/support/v4/view/a;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SlidingPaneLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 1541
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 1542
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/support/v4/view/a/e;Landroid/support/v4/view/a/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1600
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->c:Landroid/graphics/Rect;

    .line 1602
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->a(Landroid/graphics/Rect;)V

    .line 1603
    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->b(Landroid/graphics/Rect;)V

    .line 1605
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->c(Landroid/graphics/Rect;)V

    .line 1606
    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->d(Landroid/graphics/Rect;)V

    .line 1608
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->c(Z)V

    .line 1609
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->q()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->a(Ljava/lang/CharSequence;)V

    .line 1610
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->b(Ljava/lang/CharSequence;)V

    .line 1611
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->t()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->d(Ljava/lang/CharSequence;)V

    .line 1613
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->h(Z)V

    .line 1614
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->f(Z)V

    .line 1615
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->a(Z)V

    .line 1616
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->b(Z)V

    .line 1617
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->d(Z)V

    .line 1618
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->e(Z)V

    .line 1619
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->g(Z)V

    .line 1621
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->a(I)V

    .line 1623
    invoke-virtual {p2}, Landroid/support/v4/view/a/e;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/e;->b(I)V

    .line 1624
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/e;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1546
    invoke-static {p2}, Landroid/support/v4/view/a/e;->a(Landroid/support/v4/view/a/e;)Landroid/support/v4/view/a/e;

    move-result-object v0

    .line 1547
    invoke-super {p0, p1, v0}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/e;)V

    .line 1548
    invoke-direct {p0, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout$a;->a(Landroid/support/v4/view/a/e;Landroid/support/v4/view/a/e;)V

    .line 1549
    invoke-virtual {v0}, Landroid/support/v4/view/a/e;->u()V

    .line 1551
    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->b(Ljava/lang/CharSequence;)V

    .line 1552
    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/e;->b(Landroid/view/View;)V

    .line 1554
    invoke-static {p1}, Landroid/support/v4/view/ah;->i(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 1555
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1556
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->d(Landroid/view/View;)V

    .line 1561
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .line 1562
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1563
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1564
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout$a;->b(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1566
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 1568
    invoke-virtual {p2, v2}, Landroid/support/v4/view/a/e;->c(Landroid/view/View;)V

    .line 1562
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1571
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1575
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1577
    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1578
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1583
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/SlidingPaneLayout$a;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 1590
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
