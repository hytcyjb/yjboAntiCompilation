.class Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/ag$a;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/SwipeDismissBehavior;

.field private b:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ag$a;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;F)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    cmpl-float v0, p2, v5

    if-eqz v0, :cond_6

    .line 271
    invoke-static {p1}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 274
    :goto_0
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 292
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 271
    goto :goto_0

    .line 277
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v3

    if-nez v3, :cond_4

    .line 280
    if-eqz v0, :cond_3

    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_3
    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 281
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v3

    if-ne v3, v1, :cond_7

    .line 284
    if-eqz v0, :cond_5

    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_5
    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 287
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    sub-int/2addr v0, v3

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v4}, Landroid/support/design/widget/SwipeDismissBehavior;->d(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 289
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v2

    .line 292
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->a(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_0

    .line 245
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 252
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior$1;->a(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    sub-int/2addr v0, v1

    .line 256
    :goto_0
    const/4 v1, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    .line 262
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->b(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ag;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/widget/ag;->a(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    new-instance v1, Landroid/support/design/widget/SwipeDismissBehavior$b;

    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {v1, v2, p1, v0}, Landroid/support/design/widget/SwipeDismissBehavior$b;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 267
    :cond_1
    :goto_2
    return-void

    .line 253
    :cond_2
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 259
    :cond_3
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    goto :goto_1

    .line 264
    :cond_4
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->a(Landroid/view/View;)V

    goto :goto_2
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 337
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->e(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 339
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->f(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 342
    int-to-float v2, p2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    .line 343
    invoke-static {p1, v4}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    .line 345
    invoke-static {p1, v5}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    goto :goto_0

    .line 348
    :cond_1
    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior;->a(FFF)F

    move-result v0

    .line 349
    sub-float v0, v4, v0

    invoke-static {v5, v0, v4}, Landroid/support/design/widget/SwipeDismissBehavior;->b(FFF)F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 302
    invoke-static {p1}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 306
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v2

    if-nez v2, :cond_2

    .line 307
    if-eqz v0, :cond_1

    .line 308
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 309
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 327
    :goto_1
    invoke-static {v1, p2, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(III)I

    move-result v0

    return v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :cond_1
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 312
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 314
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 315
    if-eqz v0, :cond_3

    .line 316
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 317
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 319
    :cond_3
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 320
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    goto :goto_1

    .line 323
    :cond_4
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 324
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public b(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 231
    :cond_0
    return-void
.end method
