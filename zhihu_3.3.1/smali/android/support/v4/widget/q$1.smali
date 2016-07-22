.class Landroid/support/v4/widget/q$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/q;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/q$a;

.field final synthetic b:Landroid/support/v4/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/q;Landroid/support/v4/widget/q$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Landroid/support/v4/widget/q$1;->b:Landroid/support/v4/widget/q;

    iput-object p2, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x3f4ccccd

    const/high16 v7, 0x3f00

    .line 367
    iget-object v0, p0, Landroid/support/v4/widget/q$1;->b:Landroid/support/v4/widget/q;

    iget-boolean v0, v0, Landroid/support/v4/widget/q;->a:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/support/v4/widget/q$1;->b:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-static {v0, p1, v1}, Landroid/support/v4/widget/q;->a(Landroid/support/v4/widget/q;FLandroid/support/v4/widget/q$a;)V

    .line 414
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/q$1;->b:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-static {v0, v1}, Landroid/support/v4/widget/q;->a(Landroid/support/v4/widget/q;Landroid/support/v4/widget/q$a;)F

    move-result v0

    .line 373
    iget-object v1, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-virtual {v1}, Landroid/support/v4/widget/q$a;->g()F

    move-result v1

    .line 374
    iget-object v2, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-virtual {v2}, Landroid/support/v4/widget/q$a;->f()F

    move-result v2

    .line 375
    iget-object v3, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-virtual {v3}, Landroid/support/v4/widget/q$a;->k()F

    move-result v3

    .line 377
    iget-object v4, p0, Landroid/support/v4/widget/q$1;->b:Landroid/support/v4/widget/q;

    iget-object v5, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-static {v4, p1, v5}, Landroid/support/v4/widget/q;->b(Landroid/support/v4/widget/q;FLandroid/support/v4/widget/q$a;)V

    .line 381
    cmpg-float v4, p1, v7

    if-gtz v4, :cond_1

    .line 385
    div-float v4, p1, v7

    .line 387
    sub-float v5, v8, v0

    invoke-static {}, Landroid/support/v4/widget/q;->a()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 390
    iget-object v4, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-virtual {v4, v2}, Landroid/support/v4/widget/q$a;->b(F)V

    .line 395
    :cond_1
    cmpl-float v2, p1, v7

    if-lez v2, :cond_2

    .line 399
    sub-float v0, v8, v0

    .line 400
    sub-float v2, p1, v7

    div-float/2addr v2, v7

    .line 402
    invoke-static {}, Landroid/support/v4/widget/q;->a()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 404
    iget-object v1, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/q$a;->c(F)V

    .line 407
    :cond_2
    const/high16 v0, 0x3e80

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 408
    iget-object v1, p0, Landroid/support/v4/widget/q$1;->a:Landroid/support/v4/widget/q$a;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/q$a;->d(F)V

    .line 410
    const/high16 v0, 0x4358

    mul-float/2addr v0, p1

    const/high16 v1, 0x4487

    iget-object v2, p0, Landroid/support/v4/widget/q$1;->b:Landroid/support/v4/widget/q;

    invoke-static {v2}, Landroid/support/v4/widget/q;->a(Landroid/support/v4/widget/q;)F

    move-result v2

    const/high16 v3, 0x40a0

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 412
    iget-object v1, p0, Landroid/support/v4/widget/q$1;->b:Landroid/support/v4/widget/q;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/q;->c(F)V

    goto :goto_0
.end method
