.class Landroid/support/v4/view/ah$a;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ah$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/bc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ah$a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/support/v4/view/ad;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 937
    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeHorizontalScrollOffset()I

    move-result v2

    .line 938
    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeHorizontalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 940
    if-nez v3, :cond_1

    move v0, v1

    .line 944
    :cond_0
    :goto_0
    return v0

    .line 941
    :cond_1
    if-gez p2, :cond_2

    .line 942
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 944
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/view/ad;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 949
    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeVerticalScrollOffset()I

    move-result v2

    .line 950
    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeVerticalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 952
    if-nez v3, :cond_1

    move v0, v1

    .line 956
    :cond_0
    :goto_0
    return v0

    .line 953
    :cond_1
    if-gez p2, :cond_2

    .line 954
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 956
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public B(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    return-void
.end method

.method public C(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public D(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 910
    instance-of v0, p1, Landroid/support/v4/view/y;

    if-eqz v0, :cond_0

    .line 911
    check-cast p1, Landroid/support/v4/view/y;

    invoke-interface {p1}, Landroid/support/v4/view/y;->isNestedScrollingEnabled()Z

    move-result v0

    .line 913
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter

    .prologue
    .line 918
    invoke-static {p1}, Landroid/support/v4/view/ai;->a(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public F(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .parameter

    .prologue
    .line 933
    invoke-static {p1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public G(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 969
    instance-of v0, p1, Landroid/support/v4/view/y;

    if-eqz v0, :cond_0

    .line 970
    check-cast p1, Landroid/support/v4/view/y;

    invoke-interface {p1}, Landroid/support/v4/view/y;->stopNestedScroll()V

    .line 972
    :cond_0
    return-void
.end method

.method public H(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 1022
    invoke-static {p1}, Landroid/support/v4/view/ai;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public I(Landroid/view/View;)F
    .locals 2
    .parameter

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ah$a;->z(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ah$a;->y(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public J(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 1037
    invoke-static {p1}, Landroid/support/v4/view/ai;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public K(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 1042
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1027
    or-int v0, p1, p2

    return v0
.end method

.method public a(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 582
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 478
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 521
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 879
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 744
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1058
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    .line 513
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 923
    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 924
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 555
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 929
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 500
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/ab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 875
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 497
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/support/v4/view/ah$a;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/support/v4/view/ah$a;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 864
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 854
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 470
    instance-of v0, p1, Landroid/support/v4/view/ad;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ad;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ah$a;->a(Landroid/support/v4/view/ad;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 884
    return-object p2
.end method

.method public b(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 749
    return-void
.end method

.method public b(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 622
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 623
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 890
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 474
    instance-of v0, p1, Landroid/support/v4/view/ad;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ad;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ah$a;->b(Landroid/support/v4/view/ad;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 754
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 528
    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 895
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 510
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 769
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 774
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1062
    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->b(Landroid/view/View;I)V

    .line 1063
    return-void
.end method

.method public f(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 539
    const/high16 v0, 0x3f80

    return v0
.end method

.method public f(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 784
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1067
    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;I)V

    .line 1068
    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 826
    return-void
.end method

.method public h(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .parameter

    .prologue
    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 575
    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 578
    :cond_0
    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public o(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public p(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public r(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public s(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public t(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 723
    invoke-static {p1}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public u(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 728
    invoke-static {p1}, Landroid/support/v4/view/ai;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public v(Landroid/view/View;)Landroid/support/v4/view/bc;
    .locals 1
    .parameter

    .prologue
    .line 733
    new-instance v0, Landroid/support/v4/view/bc;

    invoke-direct {v0, p1}, Landroid/support/v4/view/bc;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public w(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public x(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 822
    return-void
.end method

.method public y(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method public z(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method
