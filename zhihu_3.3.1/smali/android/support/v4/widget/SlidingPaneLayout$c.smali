.class Landroid/support/v4/widget/SlidingPaneLayout$c;
.super Landroid/support/v4/widget/ag$a;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1299
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ag$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$c;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1385
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 1312
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/ag;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/support/v4/widget/SlidingPaneLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1314
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/view/View;)V

    .line 1315
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/view/View;)V

    .line 1316
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;)V

    .line 1319
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;FF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    .line 1338
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$d;

    .line 1341
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/support/v4/widget/SlidingPaneLayout;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1342
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v1

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$d;->rightMargin:I

    add-int/2addr v0, v1

    .line 1343
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/support/v4/widget/SlidingPaneLayout;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 1344
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->f(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1346
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1347
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    .line 1354
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ag;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ag;->a(II)Z

    .line 1355
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    .line 1356
    return-void

    .line 1349
    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$d;->leftMargin:I

    add-int/2addr v0, v1

    .line 1350
    cmpl-float v1, p2, v2

    if-gtz v1, :cond_4

    cmpl-float v1, p2, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/support/v4/widget/SlidingPaneLayout;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 1351
    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->f(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1332
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;I)V

    .line 1333
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    .line 1334
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1303
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    const/4 v0, 0x0

    .line 1307
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$d;

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$d;->b:Z

    goto :goto_0
.end method

.method public b(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 1360
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->f(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$d;

    .line 1368
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/support/v4/widget/SlidingPaneLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$d;->rightMargin:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 1371
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->f(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v1

    sub-int v1, v0, v1

    .line 1372
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1378
    :goto_0
    return v0

    .line 1374
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$d;->leftMargin:I

    add-int/2addr v0, v1

    .line 1375
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->f(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1376
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1390
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ag;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;I)V

    .line 1391
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1327
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$c;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()V

    .line 1328
    return-void
.end method
