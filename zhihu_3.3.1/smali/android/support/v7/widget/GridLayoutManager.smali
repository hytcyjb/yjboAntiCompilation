.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$b;,
        Landroid/support/v7/widget/GridLayoutManager$a;,
        Landroid/support/v7/widget/GridLayoutManager$c;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field g:Landroid/support/v7/widget/GridLayoutManager$c;

.field final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 72
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$h$a;

    move-result-object v0

    .line 73
    iget v0, v0, Landroid/support/v7/widget/RecyclerView$h$a;->b:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 74
    return-void
.end method

.method private L()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 183
    return-void
.end method

.method private M()V
    .locals 6

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v2

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 188
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 189
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->e()I

    move-result v3

    .line 190
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method private N()V
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->C()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()I

    move-result v1

    sub-int/2addr v0, v1

    .line 277
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->m(I)V

    .line 278
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->D()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->B()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private O()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_1

    .line 352
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 354
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    .line 449
    :goto_0
    return v0

    .line 440
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$n;->b(I)I

    move-result v0

    .line 441
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 446
    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(FI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 695
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 697
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->m(I)V

    .line 698
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;IIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 740
    if-eqz p5, :cond_0

    move v1, v2

    move v0, v4

    .line 749
    :goto_0
    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v5, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->i()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 750
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    move v4, v3

    :goto_1
    move v6, v5

    move v5, v0

    .line 756
    :goto_2
    if-eq v5, p3, :cond_3

    .line 757
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v7, v0, v5

    .line 758
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 759
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v7

    invoke-static {v0, v7}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;I)I

    .line 760
    if-ne v4, v3, :cond_2

    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v7

    if-le v7, v2, :cond_2

    .line 761
    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v7, v6, v7

    invoke-static {v0, v7}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;I)I

    .line 765
    :goto_3
    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v6, v0

    .line 756
    add-int v0, v5, v1

    move v5, v0

    goto :goto_2

    .line 745
    :cond_0
    add-int/lit8 v0, p3, -0x1

    move v1, v3

    move p3, v3

    .line 747
    goto :goto_0

    :cond_1
    move v5, v4

    move v4, v2

    .line 754
    goto :goto_1

    .line 763
    :cond_2
    invoke-static {v0, v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;I)I

    goto :goto_3

    .line 767
    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;IIZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 704
    if-nez p4, :cond_0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 705
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$i;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$i;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(III)I

    move-result p2

    .line 708
    :cond_1
    if-nez p4, :cond_2

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v1, :cond_3

    .line 709
    :cond_2
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$i;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$i;->bottomMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(III)I

    move-result p3

    .line 713
    :cond_3
    if-eqz p5, :cond_5

    .line 714
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$i;)Z

    move-result v0

    .line 718
    :goto_0
    if-eqz v0, :cond_4

    .line 719
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 722
    :cond_4
    return-void

    .line 716
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$i;)Z

    move-result v0

    goto :goto_0
.end method

.method static a([III)[I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 317
    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_1

    .line 319
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    .line 321
    :cond_1
    aput v2, p0, v2

    .line 322
    div-int v1, p2, p1

    .line 323
    rem-int v5, p2, p1

    .line 326
    const/4 v0, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    if-gt v3, p1, :cond_2

    .line 328
    add-int/2addr v2, v5

    .line 329
    if-lez v2, :cond_3

    sub-int v0, p1, v2

    if-ge v0, v5, :cond_3

    .line 330
    add-int/lit8 v0, v1, 0x1

    .line 331
    sub-int/2addr v2, p1

    .line 333
    :goto_1
    add-int/2addr v4, v0

    .line 334
    aput v4, p0, v3

    .line 326
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 336
    :cond_2
    return-object p0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 733
    :cond_0
    :goto_0
    return p1

    .line 728
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 729
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    .line 730
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 453
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$c;->b(II)I

    move-result v0

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 456
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 457
    if-ne v0, v1, :cond_0

    .line 460
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$n;->b(I)I

    move-result v0

    .line 461
    if-ne v0, v1, :cond_2

    .line 466
    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x0

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$c;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 374
    if-ne p4, v0, :cond_0

    .line 376
    :goto_0
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v1

    .line 377
    if-eqz v0, :cond_1

    .line 379
    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    if-lez v0, :cond_3

    .line 380
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 381
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v1

    goto :goto_1

    .line 374
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 386
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    move v2, v0

    move v0, v1

    .line 388
    :goto_2
    if-ge v2, v3, :cond_2

    .line 389
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v1

    .line 390
    if-le v1, v0, :cond_2

    .line 391
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 396
    goto :goto_2

    .line 397
    :cond_2
    iput v2, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 399
    :cond_3
    return-void
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 474
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 478
    if-ne v0, v1, :cond_0

    .line 481
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$n;->b(I)I

    move-result v0

    .line 482
    if-ne v0, v1, :cond_2

    .line 487
    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x1

    goto :goto_0

    .line 491
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private m(I)V
    .locals 2
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->a([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    .line 307
    return-void
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()V

    .line 360
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->O()V

    .line 361
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 121
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$i;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 223
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    .line 227
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$i;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 234
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$i;
    .locals 1
    .parameter

    .prologue
    .line 239
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 242
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;III)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->j()V

    .line 407
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v5

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v6

    .line 409
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 410
    :goto_1
    if-eq p3, p4, :cond_4

    .line 411
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 412
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 413
    if-ltz v0, :cond_7

    if-ge v0, p5, :cond_7

    .line 414
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v0

    .line 415
    if-eqz v0, :cond_1

    move-object v0, v2

    move-object v3, v4

    .line 410
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 409
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    if-nez v4, :cond_7

    move-object v0, v2

    .line 420
    goto :goto_2

    .line 422
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 424
    :cond_3
    if-nez v2, :cond_7

    move-object v0, v3

    move-object v3, v4

    .line 425
    goto :goto_2

    .line 432
    :cond_4
    if-eqz v2, :cond_6

    :goto_3
    move-object v3, v2

    :cond_5
    return-object v3

    :cond_6
    move-object v2, v4

    goto :goto_3

    :cond_7
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 973
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    .line 974
    if-nez v13, :cond_1

    .line 975
    const/4 v9, 0x0

    .line 1039
    :cond_0
    :goto_0
    return-object v9

    .line 977
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 978
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v14

    .line 979
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v3

    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v2

    add-int v15, v3, v2

    .line 980
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v2

    .line 981
    if-nez v2, :cond_2

    .line 982
    const/4 v9, 0x0

    goto :goto_0

    .line 986
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->f(I)I

    move-result v2

    .line 987
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/GridLayoutManager;->k:Z

    if-eq v2, v3, :cond_5

    const/4 v2, 0x1

    .line 989
    :goto_2
    if-eqz v2, :cond_6

    .line 990
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 991
    const/4 v3, -0x1

    .line 992
    const/4 v2, -0x1

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    .line 998
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->i()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    .line 999
    :goto_4
    const/4 v8, 0x0

    .line 1000
    const/4 v7, -0x1

    .line 1001
    const/4 v6, 0x0

    move v12, v2

    .line 1003
    :goto_5
    if-eq v12, v3, :cond_3

    .line 1004
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v9

    .line 1005
    if-ne v9, v13, :cond_8

    :cond_3
    move-object v9, v8

    .line 1039
    goto :goto_0

    .line 987
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 994
    :cond_6
    const/4 v4, 0x0

    .line 995
    const/4 v3, 0x1

    .line 996
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v2

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    goto :goto_3

    .line 998
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 1008
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v6

    move v6, v7

    move-object v7, v8

    .line 1003
    :goto_6
    add-int v8, v12, v4

    move v12, v8

    move-object v8, v7

    move v7, v6

    move v6, v2

    goto :goto_5

    .line 1011
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 1012
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v16

    .line 1013
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v10

    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v11

    add-int v17, v10, v11

    .line 1014
    move/from16 v0, v16

    if-ne v0, v14, :cond_a

    move/from16 v0, v17

    if-eq v0, v15, :cond_0

    .line 1017
    :cond_a
    const/4 v10, 0x0

    .line 1018
    if-nez v8, :cond_c

    .line 1019
    const/4 v10, 0x1

    .line 1032
    :cond_b
    :goto_7
    if-eqz v10, :cond_f

    .line 1034
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v6

    .line 1035
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v2, v7

    move-object v7, v9

    goto :goto_6

    .line 1021
    :cond_c
    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1022
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1023
    sub-int v11, v18, v11

    .line 1024
    if-le v11, v6, :cond_d

    .line 1025
    const/4 v10, 0x1

    goto :goto_7

    .line 1026
    :cond_d
    if-ne v11, v6, :cond_b

    move/from16 v0, v16

    if-le v0, v7, :cond_e

    const/4 v11, 0x1

    :goto_8
    if-ne v5, v11, :cond_b

    .line 1028
    const/4 v10, 0x1

    goto :goto_7

    .line 1026
    :cond_e
    const/4 v11, 0x0

    goto :goto_8

    :cond_f
    move v2, v6

    move v6, v7

    move-object v7, v8

    goto :goto_6
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 789
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne p1, v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 792
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 793
    if-ge p1, v1, :cond_1

    .line 794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    .line 283
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/graphics/Rect;II)V

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->A()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->C()I

    move-result v1

    add-int/2addr v1, v0

    .line 287
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->B()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->D()I

    move-result v2

    add-int/2addr v0, v2

    .line 288
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->H()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    .line 291
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->G()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v1

    .line 299
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->e(II)V

    .line 300
    return-void

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->G()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v1

    .line 296
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->H()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    .line 343
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()V

    .line 344
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    .line 347
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->O()V

    .line 348
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 24
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->i()I

    move-result v22

    .line 498
    const/high16 v3, 0x4000

    move/from16 v0, v22

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    move/from16 v19, v3

    .line 499
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->v()I

    move-result v3

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    aget v3, v3, v4

    move/from16 v21, v3

    .line 503
    :goto_1
    if-eqz v19, :cond_0

    .line 504
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->N()V

    .line 506
    :cond_0
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v8, 0x1

    .line 508
    :goto_2
    const/4 v6, 0x0

    .line 509
    const/4 v7, 0x0

    .line 510
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 511
    if-nez v8, :cond_1

    .line 512
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v3

    .line 513
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v4

    .line 514
    add-int/2addr v3, v4

    .line 516
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v6, v4, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v3, :cond_6

    .line 517
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v5

    .line 519
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-le v5, v9, :cond_5

    .line 520
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item at position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " requires "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spans but GridLayoutManager has only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spans."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    :cond_2
    const/4 v3, 0x0

    move/from16 v19, v3

    goto/16 :goto_0

    .line 499
    :cond_3
    const/4 v3, 0x0

    move/from16 v21, v3

    goto/16 :goto_1

    .line 506
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 524
    :cond_5
    sub-int/2addr v3, v5

    .line 525
    if-gez v3, :cond_7

    .line 537
    :cond_6
    if-nez v6, :cond_8

    .line 538
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    .line 682
    :goto_4
    return-void

    .line 528
    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$n;)Landroid/view/View;

    move-result-object v4

    .line 529
    if-eqz v4, :cond_6

    .line 532
    add-int/2addr v7, v5

    .line 533
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v4, v5, v6

    .line 534
    add-int/lit8 v6, v6, 0x1

    .line 535
    goto/16 :goto_3

    .line 542
    :cond_8
    const/4 v10, 0x0

    .line 543
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 546
    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;IIZ)V

    .line 547
    const/4 v3, 0x0

    move/from16 v20, v3

    move v7, v9

    move v5, v10

    :goto_5
    move/from16 v0, v20

    if-ge v0, v6, :cond_f

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v10, v3, v20

    .line 549
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v3, :cond_a

    .line 550
    if-eqz v8, :cond_9

    .line 551
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;)V

    .line 563
    :goto_6
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v9

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v11

    add-int/2addr v9, v11

    aget v4, v4, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v11

    aget v9, v9, v11

    sub-int v9, v4, v9

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v4, :cond_c

    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    :goto_7
    const/4 v12, 0x0

    move/from16 v0, v22

    invoke-static {v9, v0, v11, v4, v12}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v11

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->f()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->h()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v14, 0x1

    if-ne v4, v14, :cond_d

    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    :goto_8
    const/4 v14, 0x1

    invoke-static {v9, v12, v13, v4, v14}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v12

    .line 571
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_e

    .line 572
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZZ)V

    .line 576
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4, v10}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v4

    .line 577
    if-le v4, v5, :cond_22

    .line 580
    :goto_a
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ab;->d(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v5, v9

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v5, v3

    .line 582
    cmpl-float v5, v3, v7

    if-lez v5, :cond_21

    .line 547
    :goto_b
    add-int/lit8 v5, v20, 0x1

    move/from16 v20, v5

    move v7, v3

    move v5, v4

    goto/16 :goto_5

    .line 553
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 556
    :cond_a
    if-eqz v8, :cond_b

    .line 557
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;)V

    goto/16 :goto_6

    .line 559
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 564
    :cond_c
    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    goto :goto_7

    .line 568
    :cond_d
    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    goto :goto_8

    .line 574
    :cond_e
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object v14, v10

    move v15, v12

    move/from16 v16, v11

    invoke-direct/range {v13 .. v18}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZZ)V

    goto :goto_9

    .line 586
    :cond_f
    if-eqz v19, :cond_13

    .line 588
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v7, v1}, Landroid/support/v7/widget/GridLayoutManager;->a(FI)V

    .line 590
    const/4 v5, 0x0

    .line 591
    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_c
    move/from16 v0, v17

    if-ge v0, v6, :cond_13

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v8, v3, v17

    .line 593
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 594
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v7

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v9

    add-int/2addr v7, v9

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v9

    aget v7, v7, v9

    sub-int v7, v4, v7

    const/high16 v9, 0x4000

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v4, :cond_10

    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    :goto_d
    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v4, v11}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v9

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->f()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v7}, Landroid/support/v7/widget/ab;->h()I

    move-result v7

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    :goto_e
    const/4 v11, 0x1

    invoke-static {v4, v7, v10, v3, v11}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v10

    .line 600
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 601
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZZ)V

    .line 605
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v3

    .line 606
    if-le v3, v5, :cond_20

    .line 591
    :goto_10
    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    move v5, v3

    goto :goto_c

    .line 594
    :cond_10
    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    goto :goto_d

    .line 597
    :cond_11
    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    goto :goto_e

    .line 603
    :cond_12
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object v12, v8

    move v13, v10

    move v14, v9

    invoke-direct/range {v11 .. v16}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZZ)V

    goto :goto_f

    .line 613
    :cond_13
    const/high16 v3, 0x4000

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 615
    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v6, :cond_17

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v8, v3, v4

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v3

    if-eq v3, v5, :cond_14

    .line 618
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 619
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v9

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v11

    add-int/2addr v9, v11

    aget v7, v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v11

    aget v9, v9, v11

    sub-int/2addr v7, v9

    const/high16 v9, 0x4000

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v12, :cond_15

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$b;->height:I

    :goto_12
    const/4 v12, 0x0

    invoke-static {v7, v9, v11, v3, v12}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v9

    .line 622
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_16

    .line 623
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZZ)V

    .line 615
    :cond_14
    :goto_13
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_11

    .line 619
    :cond_15
    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$b;->width:I

    goto :goto_12

    .line 625
    :cond_16
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object v12, v8

    move v13, v10

    move v14, v9

    invoke-direct/range {v11 .. v16}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZZ)V

    goto :goto_13

    .line 630
    :cond_17
    move-object/from16 v0, p4

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    .line 632
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 633
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    .line 634
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    .line 635
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 636
    sub-int v4, v3, v5

    move v5, v7

    move v7, v8

    .line 650
    :goto_14
    const/4 v8, 0x0

    move v15, v8

    move v9, v7

    move v7, v5

    move v5, v4

    move v4, v3

    :goto_15
    if-ge v15, v6, :cond_1f

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v8, v3, v15

    .line 652
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 653
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1e

    .line 654
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->i()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->A()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v10

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->b(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v11

    add-int/2addr v10, v11

    aget v9, v9, v10

    add-int/2addr v7, v9

    .line 656
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/ab;->d(Landroid/view/View;)I

    move-result v9

    sub-int v9, v7, v9

    move v13, v7

    move v14, v9

    .line 667
    :goto_16
    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$b;->leftMargin:I

    add-int v9, v14, v7

    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$b;->topMargin:I

    add-int v10, v5, v7

    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$b;->rightMargin:I

    sub-int v11, v13, v7

    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$b;->bottomMargin:I

    sub-int v12, v4, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 676
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->c()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->d()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 677
    :cond_18
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    .line 679
    :cond_19
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v8}, Landroid/view/View;->isFocusable()Z

    move-result v7

    or-int/2addr v3, v7

    move-object/from16 v0, p4

    iput-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    .line 650
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    move v7, v13

    move v9, v14

    goto :goto_15

    .line 638
    :cond_1a
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 639
    add-int v3, v4, v5

    move v5, v7

    move v7, v8

    goto/16 :goto_14

    .line 642
    :cond_1b
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1c

    .line 643
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 644
    sub-int v5, v7, v5

    move/from16 v23, v7

    move v7, v5

    move/from16 v5, v23

    goto/16 :goto_14

    .line 646
    :cond_1c
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 647
    add-int/2addr v5, v7

    goto/16 :goto_14

    .line 658
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->A()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v10

    aget v9, v9, v10

    add-int/2addr v9, v7

    .line 659
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ab;->d(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v9

    move v13, v7

    move v14, v9

    goto :goto_16

    .line 662
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->B()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(Landroid/support/v7/widget/GridLayoutManager$b;)I

    move-result v10

    aget v5, v5, v10

    add-int/2addr v5, v4

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/ab;->d(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v5

    move v13, v7

    move v14, v9

    goto/16 :goto_16

    .line 681
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_20
    move v3, v5

    goto/16 :goto_10

    :cond_21
    move v3, v7

    goto/16 :goto_b

    :cond_22
    move v4, v5

    goto/16 :goto_a
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/support/v4/view/a/e;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager$b;

    if-nez v1, :cond_0

    .line 147
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;Landroid/support/v4/view/a/e;)V

    .line 163
    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    .line 150
    check-cast v6, Landroid/support/v7/widget/GridLayoutManager$b;

    .line 151
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->e()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v2

    .line 152
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/e$l;->a(IIIIZZ)Landroid/support/v4/view/a/e$l;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/e;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 158
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->a()I

    move-result v4

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v5

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$b;->b()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/a/e$l;->a(IIIIZZ)Landroid/support/v4/view/a/e$l;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/e;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 203
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 198
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 219
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 214
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 112
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$i;)Z
    .locals 1
    .parameter

    .prologue
    .line 248
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$b;

    return v0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->N()V

    .line 368
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->O()V

    .line 369
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v0, v1, :cond_0

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Landroid/support/v7/widget/GridLayoutManager$c;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    return-object v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$c;->a()V

    .line 208
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    return v0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->M()V

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 174
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->L()V

    .line 175
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 178
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
