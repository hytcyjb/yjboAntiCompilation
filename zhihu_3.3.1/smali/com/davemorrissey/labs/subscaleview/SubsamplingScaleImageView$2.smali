.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 532
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->j(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 535
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/content/Context;)V

    .line 536
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->k(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 540
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 541
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;F)F

    .line 542
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v2, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Z)Z

    .line 543
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v2, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Z)Z

    .line 544
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->l(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 545
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/high16 v2, -0x4080

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;F)F

    .line 546
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->m(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 547
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Z)Z

    .line 556
    :goto_0
    return v0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move v0, v1

    .line 553
    goto :goto_0

    .line 556
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/high16 v5, 0x43fa

    const/high16 v3, 0x4248

    const/high16 v4, 0x3e80

    .line 497
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 498
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v3, p3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 499
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)F

    move-result v3

    div-float/2addr v2, v3

    .line 500
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v1

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)F

    move-result v3

    div-float/2addr v1, v3

    .line 501
    new-instance v3, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    invoke-direct {v3, v4, v5, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;-><init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;)V

    invoke-virtual {v3, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;->a(I)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;Z)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$b;->a()V

    .line 504
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 511
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 515
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 516
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 517
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v5}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->h(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v4}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->i(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 519
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/b;

    move-result-object v3

    invoke-interface {v3, v2, v0, v1}, Lcom/davemorrissey/labs/subscaleview/b;->b(Landroid/view/View;FF)V

    .line 525
    :goto_0
    const/4 v0, 0x1

    .line 527
    :goto_1
    return v0

    .line 523
    :cond_0
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$2;->b:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lcom/davemorrissey/labs/subscaleview/b;

    move-result-object v3

    invoke-interface {v3, v2, v0, v1}, Lcom/davemorrissey/labs/subscaleview/b;->a(Landroid/view/View;FF)V

    goto :goto_0

    .line 527
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
