.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private b:Landroid/support/design/widget/t;

.field private c:F

.field private d:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/FloatingActionButton$Behavior;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)F
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 548
    const/4 v1, 0x0

    .line 549
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 550
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 551
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 552
    instance-of v5, v0, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v5, :cond_1

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 553
    invoke-static {v0}, Landroid/support/v4/view/ah;->p(Landroid/view/View;)F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v5, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 550
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 558
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 473
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 475
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$e;->a()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getId()I

    move-result v2

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 501
    :goto_0
    return v0

    .line 481
    :cond_0
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->getUserSetVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 483
    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 487
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->d:Landroid/graphics/Rect;

    .line 491
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->d:Landroid/graphics/Rect;

    .line 492
    invoke-static {p1, p2, v0}, Landroid/support/design/widget/w;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 494
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 496
    invoke-static {p3, v3, v1}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;Z)V

    .line 501
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 499
    :cond_3
    invoke-static {p3, v3, v1}, Landroid/support/design/widget/FloatingActionButton;->b(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;Z)V

    goto :goto_1
.end method

.method private b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 586
    invoke-static {p2}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v3

    .line 588
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_1

    .line 589
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    .line 594
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v4, v5

    if-lt v1, v4, :cond_2

    .line 596
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 601
    :goto_0
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getBottom()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    .line 603
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 609
    :cond_0
    :goto_1
    invoke-virtual {p2, v2}, Landroid/support/design/widget/FloatingActionButton;->offsetTopAndBottom(I)V

    .line 610
    invoke-virtual {p2, v1}, Landroid/support/design/widget/FloatingActionButton;->offsetLeftAndRight(I)V

    .line 612
    :cond_1
    return-void

    .line 597
    :cond_2
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    if-gt v1, v4, :cond_4

    .line 599
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_0

    .line 604
    :cond_3
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v4

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    if-gt v4, v0, :cond_0

    .line 606
    iget v0, v3, Landroid/graphics/Rect;->top:I

    neg-int v2, v0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)F

    move-result v0

    .line 507
    iget v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->c:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-static {p2}, Landroid/support/v4/view/ah;->p(Landroid/view/View;)F

    move-result v1

    .line 515
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/t;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/t;

    invoke-virtual {v2}, Landroid/support/design/widget/t;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/t;

    invoke-virtual {v2}, Landroid/support/design/widget/t;->e()V

    .line 519
    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f2ac083

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 523
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/t;

    if-nez v2, :cond_2

    .line 524
    invoke-static {}, Landroid/support/design/widget/z;->a()Landroid/support/design/widget/t;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/t;

    .line 525
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/t;

    sget-object v3, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/t;->a(Landroid/view/animation/Interpolator;)V

    .line 527
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/t;

    new-instance v3, Landroid/support/design/widget/FloatingActionButton$Behavior$1;

    invoke-direct {v3, p0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior$1;-><init>(Landroid/support/design/widget/FloatingActionButton$Behavior;Landroid/support/design/widget/FloatingActionButton;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/t;->a(Landroid/support/design/widget/t$c;)V

    .line 536
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/t;

    invoke-virtual {v2, v1, v0}, Landroid/support/design/widget/t;->a(FF)V

    .line 537
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/t;

    invoke-virtual {v1}, Landroid/support/design/widget/t;->a()V

    .line 543
    :goto_1
    iput v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->c:F

    goto :goto_0

    .line 540
    :cond_3
    invoke-static {p2, v0}, Landroid/support/v4/view/ah;->b(Landroid/view/View;F)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 566
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 567
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 568
    instance-of v4, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 576
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V

    .line 577
    const/4 v0, 0x1

    return v0

    .line 566
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    sget-boolean v0, Landroid/support/design/widget/FloatingActionButton$Behavior;->a:Z

    if-eqz v0, :cond_0

    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_1

    .line 462
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V

    .line 468
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 463
    :cond_1
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 466
    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    goto :goto_0
.end method

.method public synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public synthetic c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
