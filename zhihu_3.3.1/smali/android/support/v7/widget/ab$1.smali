.class final Landroid/support/v7/widget/ab$1;
.super Landroid/support/v7/widget/ab;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/RecyclerView$h;)Landroid/support/v7/widget/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ab;-><init>(Landroid/support/v7/widget/RecyclerView$h;Landroid/support/v7/widget/ab$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 264
    iget-object v1, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->h(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->leftMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->j(I)V

    .line 230
    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 257
    iget-object v1, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->j(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 241
    iget-object v1, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->f(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$i;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 249
    iget-object v1, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->g(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$i;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->w()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/ab$1;->a:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->x()I

    move-result v0

    return v0
.end method
