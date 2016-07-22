.class Landroid/support/design/widget/BottomSheetBehavior$1;
.super Landroid/support/v4/widget/ag$a;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ag$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->g(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->h(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->f(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 599
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->i(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->f(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Landroid/view/View;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->f(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->g(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->h(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    :goto_0
    invoke-static {p2, v1, v0}, Landroid/support/design/widget/m;->a(III)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->i(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 547
    if-ne p1, v1, :cond_0

    .line 548
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 550
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x3

    const/4 v3, 0x0

    .line 556
    cmpg-float v2, p3, v3

    if-gez v2, :cond_0

    .line 557
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->f(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    .line 575
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->j(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ag;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/widget/ag;->a(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 576
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->b(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 577
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$b;

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {v1, v2, p1, v0}, Landroid/support/design/widget/BottomSheetBehavior$b;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 582
    :goto_1
    return-void

    .line 559
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->g(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v2, p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->h(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    .line 561
    const/4 v0, 0x5

    goto :goto_0

    .line 562
    :cond_1
    cmpl-float v2, p3, v3

    if-nez v2, :cond_3

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 564
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->f(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->i(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 565
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->f(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    goto :goto_0

    .line 568
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->i(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 569
    goto :goto_0

    .line 572
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->i(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 573
    goto :goto_0

    .line 580
    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(Landroid/support/design/widget/BottomSheetBehavior;I)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 543
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v2

    .line 527
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->c(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 531
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->d(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 532
    if-eqz v0, :cond_2

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->e(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->e(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public b(Landroid/view/View;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method
