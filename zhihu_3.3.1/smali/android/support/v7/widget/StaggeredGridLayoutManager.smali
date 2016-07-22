.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$h;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$a;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$c;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/Runnable;

.field a:Landroid/support/v7/widget/ab;

.field b:Landroid/support/v7/widget/ab;

.field c:Z

.field d:I

.field e:I

.field f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private g:I

.field private h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

.field private i:I

.field private j:I

.field private k:Landroid/support/v7/widget/y;

.field private l:Z

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private t:Z

.field private u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private v:I

.field private final w:Landroid/graphics/Rect;

.field private final x:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    .line 105
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 125
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 130
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    .line 141
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 147
    const/high16 v2, -0x8000

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 153
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 158
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    .line 184
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:Landroid/graphics/Rect;

    .line 189
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/support/v7/widget/StaggeredGridLayoutManager$1;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    .line 197
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Z

    .line 203
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 205
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Ljava/lang/Runnable;

    .line 234
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 235
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    .line 236
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)V

    .line 237
    return-void

    :cond_0
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    .line 105
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 125
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 130
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    .line 141
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 147
    const/high16 v2, -0x8000

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 153
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 158
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    .line 184
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:Landroid/graphics/Rect;

    .line 189
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/support/v7/widget/StaggeredGridLayoutManager$1;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    .line 197
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Z

    .line 203
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 205
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Ljava/lang/Runnable;

    .line 219
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$h$a;

    move-result-object v2

    .line 220
    iget v3, v2, Landroid/support/v7/widget/RecyclerView$h$a;->a:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 221
    iget v3, v2, Landroid/support/v7/widget/RecyclerView$h$a;->b:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    .line 222
    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$h$a;->c:Z

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 223
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)V

    .line 224
    return-void

    :cond_0
    move v0, v1

    .line 223
    goto :goto_0
.end method

.method private L()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 697
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->h()I

    move-result v0

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_1

    .line 743
    :cond_0
    return-void

    .line 700
    :cond_1
    const/4 v2, 0x0

    .line 701
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v5

    move v4, v3

    .line 702
    :goto_0
    if-ge v4, v5, :cond_3

    .line 703
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 704
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    .line 705
    cmpg-float v6, v1, v2

    if-gez v6, :cond_2

    move v0, v2

    .line 702
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 709
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 710
    const/high16 v0, 0x3f80

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 712
    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 714
    :cond_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 715
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 716
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->h()I

    move-result v1

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_4

    .line 717
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 719
    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(I)V

    .line 720
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v0, v4, :cond_0

    move v1, v3

    .line 723
    :goto_3
    if-ge v1, v5, :cond_0

    .line 724
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    .line 725
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 726
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v3, :cond_5

    .line 723
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 729
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v3, v7, :cond_6

    .line 730
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    sub-int/2addr v3, v6

    neg-int v3, v3

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v3, v6

    .line 731
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v6, v6, -0x1

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    sub-int v0, v6, v0

    neg-int v0, v0

    mul-int/2addr v0, v4

    .line 732
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 734
    :cond_6
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v3, v6

    .line 735
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    mul-int/2addr v0, v4

    .line 736
    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v6, v7, :cond_7

    .line 737
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 739
    :cond_7
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method private M()I
    .locals 1

    .prologue
    .line 2085
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    .line 2086
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private N()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2090
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    .line 2091
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-boolean v2, v2, Landroid/support/v7/widget/y;->i:Z

    if-eqz v2, :cond_4

    .line 1516
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/y;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1517
    const v2, 0x7fffffff

    move v15, v2

    .line 1529
    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/y;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(II)V

    .line 1536
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->d()I

    move-result v2

    move/from16 v16, v2

    .line 1539
    :goto_1
    const/4 v2, 0x0

    .line 1541
    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-boolean v3, v3, Landroid/support/v7/widget/y;->i:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1542
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/RecyclerView$n;)Landroid/view/View;

    move-result-object v3

    .line 1543
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1544
    invoke-virtual {v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()I

    move-result v6

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)I

    move-result v5

    .line 1547
    const/4 v2, -0x1

    if-ne v5, v2, :cond_7

    const/4 v2, 0x1

    move v4, v2

    .line 1548
    :goto_3
    if-eqz v4, :cond_9

    .line 1549
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    .line 1550
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(ILandroid/support/v7/widget/StaggeredGridLayoutManager$c;)V

    move-object/from16 v17, v2

    .line 1561
    :goto_5
    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 1562
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/y;->e:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    .line 1563
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)V

    .line 1567
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Z)V

    .line 1571
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/y;->e:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 1572
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v2

    .line 1574
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v5

    add-int v7, v2, v5

    .line 1575
    if-eqz v4, :cond_1e

    iget-boolean v5, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v5, :cond_1e

    .line 1577
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1578
    const/4 v8, -0x1

    iput v8, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1579
    iput v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1580
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v5, v2

    .line 1596
    :goto_8
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/y;->d:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    .line 1597
    if-eqz v4, :cond_f

    .line 1598
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Z

    .line 1616
    :cond_1
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v14, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Landroid/support/v7/widget/y;)V

    .line 1619
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 1620
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->d()I

    move-result v2

    .line 1623
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v4

    sub-int v4, v2, v4

    move v6, v2

    .line 1631
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_17

    move-object/from16 v2, p0

    .line 1632
    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IIII)V

    .line 1637
    :goto_c
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v2, :cond_18

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget v2, v2, Landroid/support/v7/widget/y;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(II)V

    .line 1642
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-boolean v2, v2, Landroid/support/v7/widget/y;->h:Z

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1644
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v2, :cond_19

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 1650
    :cond_2
    :goto_e
    const/4 v2, 0x1

    .line 1651
    goto/16 :goto_2

    .line 1519
    :cond_3
    const/high16 v2, -0x8000

    move v15, v2

    goto/16 :goto_0

    .line 1522
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/y;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1523
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/y;->g:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/y;->b:I

    add-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1525
    :cond_5
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/y;->f:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/y;->b:I

    sub-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1536
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->c()I

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_1

    .line 1547
    :cond_7
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 1549
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/y;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    move-result-object v2

    goto/16 :goto_4

    .line 1558
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v5

    move-object/from16 v17, v2

    goto/16 :goto_5

    .line 1565
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1572
    :cond_b
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v2

    goto/16 :goto_7

    .line 1583
    :cond_c
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v2

    .line 1585
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v5

    sub-int v5, v2, v5

    .line 1586
    if-eqz v4, :cond_d

    iget-boolean v7, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v7, :cond_d

    .line 1588
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v7

    .line 1589
    const/4 v8, 0x1

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1590
    iput v6, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1591
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_d
    move v7, v2

    goto/16 :goto_8

    .line 1583
    :cond_e
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v2

    goto :goto_f

    .line 1601
    :cond_f
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/y;->e:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 1602
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    .line 1606
    :goto_10
    if-eqz v2, :cond_1

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    .line 1609
    if-eqz v2, :cond_10

    .line 1610
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->d:Z

    .line 1612
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Z

    goto/16 :goto_9

    .line 1602
    :cond_11
    const/4 v2, 0x0

    goto :goto_10

    .line 1604
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 1620
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->d()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v4, v6

    sub-int/2addr v2, v4

    goto/16 :goto_a

    .line 1625
    :cond_15
    iget-boolean v2, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->c()I

    move-result v2

    .line 1628
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v4

    add-int v6, v2, v4

    move v4, v2

    goto/16 :goto_b

    .line 1625
    :cond_16
    move-object/from16 v0, v17

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->c()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_11

    :cond_17
    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v5

    move v11, v4

    move v12, v7

    move v13, v6

    .line 1634
    invoke-direct/range {v8 .. v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1640
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget v2, v2, Landroid/support/v7/widget/y;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;II)V

    goto/16 :goto_d

    .line 1647
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1652
    :cond_1a
    if-nez v2, :cond_1b

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;)V

    .line 1656
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget v2, v2, Landroid/support/v7/widget/y;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->c()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v2

    .line 1658
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->c()I

    move-result v3

    sub-int v2, v3, v2

    .line 1663
    :goto_12
    if-lez v2, :cond_1d

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/y;->b:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_13
    return v2

    .line 1660
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->d()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v2

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->d()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_12

    .line 1663
    :cond_1d
    const/4 v2, 0x0

    goto :goto_13

    :cond_1e
    move v5, v2

    goto/16 :goto_8
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1036
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    :goto_0
    return v4

    .line 1039
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()V

    .line 1040
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/ab;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t(I)I

    move-result v0

    return v0
.end method

.method private a(Landroid/support/v7/widget/y;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1925
    iget v2, p1, Landroid/support/v7/widget/y;->e:I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s(I)Z

    move-result v2

    .line 1927
    if-eqz v2, :cond_0

    .line 1928
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v0

    .line 1936
    :goto_0
    iget v4, p1, Landroid/support/v7/widget/y;->e:I

    if-ne v4, v1, :cond_1

    .line 1938
    const v1, 0x7fffffff

    .line 1939
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->c()I

    move-result v7

    move v6, v3

    move v3, v1

    .line 1940
    :goto_1
    if-eq v6, v2, :cond_2

    .line 1941
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v1, v6

    .line 1942
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    .line 1943
    if-ge v1, v3, :cond_4

    move-object v3, v4

    .line 1940
    :goto_2
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_1

    .line 1932
    :cond_0
    const/4 v2, 0x0

    .line 1933
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    move v3, v2

    move v2, v0

    move v0, v1

    .line 1934
    goto :goto_0

    .line 1951
    :cond_1
    const/high16 v1, -0x8000

    .line 1952
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->d()I

    move-result v7

    move v6, v3

    move v3, v1

    .line 1953
    :goto_3
    if-eq v6, v2, :cond_2

    .line 1954
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v1, v6

    .line 1955
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    .line 1956
    if-le v1, v3, :cond_3

    move-object v3, v4

    .line 1953
    :goto_4
    add-int v4, v6, v0

    move v6, v4

    move-object v5, v3

    move v3, v1

    goto :goto_3

    .line 1961
    :cond_2
    return-object v5

    :cond_3
    move v1, v3

    move-object v3, v5

    goto :goto_4

    :cond_4
    move v1, v3

    move-object v3, v5

    goto :goto_2
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1766
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_1

    .line 1767
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1766
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1770
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;II)V

    goto :goto_1

    .line 1772
    :cond_1
    return-void
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$r;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1384
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput v1, v0, Landroid/support/v7/widget/y;->b:I

    .line 1385
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput p1, v0, Landroid/support/v7/widget/y;->c:I

    .line 1388
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1389
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->c()I

    move-result v0

    .line 1390
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 1391
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ge v0, p1, :cond_1

    move v0, v3

    :goto_0
    if-ne v2, v0, :cond_2

    .line 1392
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->f()I

    move-result v0

    move v2, v1

    .line 1400
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Z

    move-result v4

    .line 1401
    if-eqz v4, :cond_3

    .line 1402
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v5}, Landroid/support/v7/widget/ab;->c()I

    move-result v5

    sub-int v2, v5, v2

    iput v2, v4, Landroid/support/v7/widget/y;->f:I

    .line 1403
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->d()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v2, Landroid/support/v7/widget/y;->g:I

    .line 1408
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput-boolean v1, v0, Landroid/support/v7/widget/y;->h:Z

    .line 1409
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput-boolean v3, v0, Landroid/support/v7/widget/y;->a:Z

    .line 1410
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->h()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, v0, Landroid/support/v7/widget/y;->i:Z

    .line 1411
    return-void

    :cond_1
    move v0, v1

    .line 1391
    goto :goto_0

    .line 1394
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->f()I

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_1

    .line 1405
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v5}, Landroid/support/v7/widget/ab;->e()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroid/support/v7/widget/y;->g:I

    .line 1406
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    neg-int v2, v2

    iput v2, v0, Landroid/support/v7/widget/y;->f:I

    goto :goto_2

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1854
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 1855
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    .line 1856
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1857
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1859
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 1860
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v3, :cond_2

    .line 1861
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1879
    :cond_0
    return-void

    .line 1860
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1865
    :goto_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v3, :cond_4

    .line 1866
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->h()V

    .line 1865
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1869
    :cond_3
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-static {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1872
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->h()V

    .line 1874
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, -0x8000

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 596
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()V

    .line 597
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:Landroid/support/v7/widget/StaggeredGridLayoutManager$a;

    .line 598
    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a()V

    .line 600
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-eq v0, v7, :cond_2

    .line 601
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 602
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 694
    :cond_1
    :goto_0
    return-void

    .line 607
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_7

    .line 608
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V

    .line 614
    :goto_1
    invoke-virtual {p0, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V

    .line 616
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_4

    .line 617
    iget-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v0

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    if-eq v0, v4, :cond_4

    .line 619
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 620
    iput-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 624
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-ge v0, v2, :cond_9

    .line 626
    :cond_5
    iget-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    if-eqz v0, :cond_8

    move v0, v1

    .line 627
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_9

    .line 629
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e()V

    .line 630
    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    if-eq v4, v8, :cond_6

    .line 631
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    iget v5, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(I)V

    .line 627
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 610
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 611
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_1

    :cond_8
    move v0, v1

    .line 635
    :goto_3
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_9

    .line 636
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iget v6, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(ZI)V

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 640
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 641
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput-boolean v1, v0, Landroid/support/v7/widget/y;->a:Z

    .line 642
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Z

    .line 643
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(I)V

    .line 644
    iget v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$r;)V

    .line 645
    iget-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_c

    .line 647
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 648
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;Landroid/support/v7/widget/RecyclerView$r;)I

    .line 650
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 651
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget v5, v5, Landroid/support/v7/widget/y;->d:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/y;->c:I

    .line 652
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;Landroid/support/v7/widget/RecyclerView$r;)I

    .line 663
    :goto_4
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->L()V

    .line 665
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_a

    .line 666
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_d

    .line 667
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    .line 668
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    .line 675
    :cond_a
    :goto_5
    if-eqz p3, :cond_10

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 676
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_b
    move v0, v2

    .line 679
    :goto_6
    if-eqz v0, :cond_f

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 681
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    .line 685
    :goto_7
    iput v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 686
    iput v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 688
    :goto_8
    iget-boolean v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 689
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    .line 690
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 691
    if-eqz v0, :cond_1

    .line 692
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    goto/16 :goto_0

    .line 655
    :cond_c
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;Landroid/support/v7/widget/RecyclerView$r;)I

    .line 658
    invoke-direct {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 659
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget v5, v5, Landroid/support/v7/widget/y;->d:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/support/v7/widget/y;->c:I

    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;Landroid/support/v7/widget/RecyclerView$r;)I

    goto :goto_4

    .line 670
    :cond_d
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    .line 671
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    goto :goto_5

    :cond_e
    move v0, v1

    .line 676
    goto :goto_6

    :cond_f
    move v0, v1

    goto :goto_7

    :cond_10
    move v0, v1

    goto :goto_8
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1701
    iget-boolean v0, p2, Landroid/support/v7/widget/y;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/y;->i:Z

    if-eqz v0, :cond_1

    .line 1737
    :cond_0
    :goto_0
    return-void

    .line 1704
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/y;->b:I

    if-nez v0, :cond_3

    .line 1706
    iget v0, p2, Landroid/support/v7/widget/y;->e:I

    if-ne v0, v1, :cond_2

    .line 1707
    iget v0, p2, Landroid/support/v7/widget/y;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1709
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/y;->f:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1714
    :cond_3
    iget v0, p2, Landroid/support/v7/widget/y;->e:I

    if-ne v0, v1, :cond_5

    .line 1716
    iget v0, p2, Landroid/support/v7/widget/y;->f:I

    iget v1, p2, Landroid/support/v7/widget/y;->f:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1718
    if-gez v0, :cond_4

    .line 1719
    iget v0, p2, Landroid/support/v7/widget/y;->g:I

    .line 1723
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1721
    :cond_4
    iget v1, p2, Landroid/support/v7/widget/y;->g:I

    iget v2, p2, Landroid/support/v7/widget/y;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_1

    .line 1726
    :cond_5
    iget v0, p2, Landroid/support/v7/widget/y;->g:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r(I)I

    move-result v0

    iget v1, p2, Landroid/support/v7/widget/y;->g:I

    sub-int/2addr v0, v1

    .line 1728
    if-gez v0, :cond_6

    .line 1729
    iget v0, p2, Landroid/support/v7/widget/y;->f:I

    .line 1733
    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1731
    :cond_6
    iget v1, p2, Landroid/support/v7/widget/y;->f:I

    iget v2, p2, Landroid/support/v7/widget/y;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V
    .locals 3
    .parameter

    .prologue
    .line 749
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_3

    .line 750
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne v0, v1, :cond_2

    .line 751
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_3

    .line 752
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e()V

    .line 753
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aget v1, v1, v0

    .line 754
    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 755
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    if-eqz v2, :cond_1

    .line 756
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->d()I

    move-result v2

    add-int/2addr v1, v2

    .line 761
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(I)V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->c()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 764
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a()V

    .line 765
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 768
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    .line 769
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 770
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 772
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 773
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 774
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 778
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 779
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 780
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    .line 782
    :cond_4
    return-void

    .line 776
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1775
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->i()I

    move-result v0

    .line 1776
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1777
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b()I

    move-result v1

    .line 1778
    add-int/2addr v0, v1

    if-gt v0, p3, :cond_0

    .line 1779
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1787
    :cond_0
    :goto_0
    return-void

    .line 1782
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d()I

    move-result v1

    .line 1783
    sub-int v0, v1, v0

    if-lt v0, p3, :cond_0

    .line 1784
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1122
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1123
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1124
    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)I

    move-result v1

    .line 1126
    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->bottomMargin:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)I

    move-result v2

    .line 1128
    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$i;)Z

    move-result v0

    .line 1131
    :goto_0
    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1135
    :cond_0
    return-void

    .line 1128
    :cond_1
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$i;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Landroid/support/v7/widget/y;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1685
    iget v0, p3, Landroid/support/v7/widget/y;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1686
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v0, :cond_0

    .line 1687
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(Landroid/view/View;)V

    .line 1698
    :goto_0
    return-void

    .line 1689
    :cond_0
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1692
    :cond_1
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v0, :cond_2

    .line 1693
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)V

    goto :goto_0

    .line 1695
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$b;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1095
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v0, :cond_1

    .line 1096
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v5, :cond_0

    .line 1097
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 1118
    :goto_0
    return-void

    .line 1101
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1106
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v5, :cond_2

    .line 1107
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    invoke-static {v0, v1, v4, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1112
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x()I

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->height:I

    invoke-static {v1, v2, v4, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->d()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 378
    invoke-static {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 379
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 380
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 388
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 380
    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->c()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 384
    invoke-static {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 385
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 386
    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-nez v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    .line 388
    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()Z

    move-result v0

    return v0
.end method

.method private b(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1138
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return p1

    .line 1141
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1142
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    .line 1143
    :cond_2
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/StaggeredGridLayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    return v0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1882
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    .line 1884
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 1885
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 1886
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1887
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1889
    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v4, :cond_3

    move v0, v1

    .line 1890
    :goto_1
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_2

    .line 1891
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1909
    :cond_0
    return-void

    .line 1890
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1895
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_4

    .line 1896
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->g()V

    .line 1895
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1899
    :cond_3
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-static {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1902
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->g()V

    .line 1904
    :cond_4
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V

    .line 1884
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 1347
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v0

    .line 1348
    if-ne v0, v1, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 1353
    if-lez v0, :cond_0

    .line 1354
    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v1

    neg-int v1, v1

    .line 1358
    sub-int/2addr v0, v1

    .line 1359
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1360
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ab;->a(I)V

    goto :goto_0
.end method

.method private b(Landroid/view/View;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1754
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1761
    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->leftMargin:I

    add-int v2, p2, v1

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->topMargin:I

    add-int v3, p3, v1

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->rightMargin:I

    sub-int v4, p4, v1

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->bottomMargin:I

    sub-int v5, p5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1763
    return-void
.end method

.method private c(III)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1466
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()I

    move-result v0

    move v2, v0

    .line 1470
    :goto_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    .line 1471
    if-ge p1, p2, :cond_2

    .line 1472
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, p1

    .line 1483
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(I)I

    .line 1484
    sparse-switch p3, :sswitch_data_0

    .line 1498
    :goto_2
    if-gt v1, v2, :cond_4

    .line 1506
    :cond_0
    :goto_3
    return-void

    .line 1466
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1475
    :cond_2
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    move v0, p2

    .line 1476
    goto :goto_1

    .line 1480
    :cond_3
    add-int v0, p1, p2

    move v1, v0

    move v0, p1

    goto :goto_1

    .line 1486
    :sswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1489
    :sswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    goto :goto_2

    .line 1493
    :sswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    .line 1494
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1502
    :cond_4
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()I

    move-result v1

    .line 1503
    :goto_4
    if-gt v0, v1, :cond_0

    .line 1504
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    goto :goto_3

    .line 1502
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()I

    move-result v1

    goto :goto_4

    .line 1484
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7fffffff

    .line 1366
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v0

    .line 1367
    if-ne v0, v1, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1372
    if-lez v0, :cond_0

    .line 1373
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v1

    .line 1377
    sub-int/2addr v0, v1

    .line 1378
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1379
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ab;->a(I)V

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v(I)I

    move-result v0

    :goto_0
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 806
    const/high16 v0, -0x8000

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 807
    const/4 v0, 0x1

    return v0

    .line 803
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    return v0
.end method

.method private f(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1414
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput p1, v2, Landroid/support/v7/widget/y;->e:I

    .line 1415
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Landroid/support/v7/widget/y;->d:I

    .line 1417
    return-void

    .line 1415
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1057
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    :goto_0
    return v4

    .line 1060
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()V

    .line 1061
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/ab;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1078
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    :goto_0
    return v4

    .line 1081
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()V

    .line 1082
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ah;->b(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/ab;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private m(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .parameter

    .prologue
    .line 1667
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1668
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 1669
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_0

    .line 1670
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v0

    .line 1669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1672
    :cond_0
    return-object v1
.end method

.method private m()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 246
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 287
    :goto_0
    return v1

    .line 250
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_2

    .line 251
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()I

    move-result v3

    .line 252
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()I

    move-result v0

    move v4, v3

    move v3, v0

    .line 257
    :goto_1
    if-nez v4, :cond_3

    .line 258
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b()Landroid/view/View;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 261
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()V

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()I

    move-result v3

    .line 255
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()I

    move-result v0

    move v4, v3

    move v3, v0

    goto :goto_1

    .line 266
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Z

    if-nez v0, :cond_4

    move v1, v2

    .line 267
    goto :goto_0

    .line 269
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    .line 270
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v4, v6, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 272
    if-nez v5, :cond_6

    .line 273
    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Z

    .line 274
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    move v1, v2

    .line 275
    goto :goto_0

    :cond_5
    move v0, v1

    .line 269
    goto :goto_2

    .line 277
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 280
    if-nez v0, :cond_7

    .line 281
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    .line 285
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->J()V

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    goto :goto_0

    .line 283
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto :goto_3
.end method

.method private n(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .parameter

    .prologue
    .line 1676
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1677
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 1678
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_0

    .line 1679
    iget-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v0

    .line 1678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1681
    :cond_0
    return-object v1
.end method

.method private n()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    if-nez v0, :cond_0

    .line 531
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/RecyclerView$h;I)Landroid/support/v7/widget/ab;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    .line 532
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/RecyclerView$h;I)Landroid/support/v7/widget/ab;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    .line 534
    new-instance v0, Landroid/support/v7/widget/y;

    invoke-direct {v0}, Landroid/support/v7/widget/y;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    .line 536
    :cond_0
    return-void
.end method

.method private o(I)I
    .locals 3
    .parameter

    .prologue
    .line 1790
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    .line 1791
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1792
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v2

    .line 1793
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1791
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1797
    :cond_1
    return v1
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 545
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private p(I)I
    .locals 3
    .parameter

    .prologue
    .line 1801
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    .line 1802
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1803
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v2

    .line 1804
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1808
    :cond_1
    return v1
.end method

.method private p(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1741
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1742
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(Landroid/view/View;)V

    .line 1741
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1744
    :cond_0
    return-void
.end method

.method private q(I)I
    .locals 3
    .parameter

    .prologue
    .line 1832
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    .line 1833
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1834
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v2

    .line 1835
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1833
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1839
    :cond_1
    return v1
.end method

.method private q(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1748
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1749
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(Landroid/view/View;)V

    .line 1748
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1751
    :cond_0
    return-void
.end method

.method private r(I)I
    .locals 3
    .parameter

    .prologue
    .line 1843
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    .line 1844
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1845
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v2

    .line 1846
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1844
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1850
    :cond_1
    return v1
.end method

.method private s(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1915
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_3

    .line 1916
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v0, v3, :cond_2

    .line 1918
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1916
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1918
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private t(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 1988
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v2

    if-nez v2, :cond_1

    .line 1989
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v2, :cond_0

    .line 1992
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1989
    goto :goto_0

    .line 1991
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()I

    move-result v2

    .line 1992
    if-ge p1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v2, v3, :cond_3

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private u(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2100
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v3

    move v2, v1

    .line 2101
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2102
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2103
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2104
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2108
    :goto_1
    return v0

    .line 2101
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2108
    goto :goto_1
.end method

.method private v(I)I
    .locals 2
    .parameter

    .prologue
    .line 2117
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2118
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2119
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2120
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2124
    :goto_1
    return v0

    .line 2117
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2124
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private w(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x8000

    .line 2235
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2256
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    .line 2239
    goto :goto_0

    .line 2241
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2244
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 2247
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2250
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 2235
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1978
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1269
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 1270
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 1272
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$i;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2129
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 2130
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    .line 2133
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$i;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2140
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$i;
    .locals 1
    .parameter

    .prologue
    .line 2145
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2146
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2165
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 2221
    :goto_0
    return-object v0

    .line 2169
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2170
    if-nez v0, :cond_1

    move-object v0, v2

    .line 2171
    goto :goto_0

    .line 2174
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()V

    .line 2175
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()V

    .line 2176
    invoke-direct {p0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w(I)I

    move-result v4

    .line 2177
    const/high16 v0, -0x8000

    if-ne v4, v0, :cond_2

    move-object v0, v2

    .line 2178
    goto :goto_0

    .line 2180
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 2181
    iget-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    .line 2182
    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2184
    if-ne v4, v9, :cond_3

    .line 2185
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()I

    move-result v0

    .line 2189
    :goto_1
    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$r;)V

    .line 2190
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 2192
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget v7, v7, Landroid/support/v7/widget/y;->d:I

    add-int/2addr v7, v0

    iput v7, v6, Landroid/support/v7/widget/y;->c:I

    .line 2193
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    const v7, 0x3eaaaaab

    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v8}, Landroid/support/v7/widget/ab;->f()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/support/v7/widget/y;->b:I

    .line 2194
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput-boolean v9, v6, Landroid/support/v7/widget/y;->h:Z

    .line 2195
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput-boolean v1, v6, Landroid/support/v7/widget/y;->a:Z

    .line 2196
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    invoke-direct {p0, p3, v6, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;Landroid/support/v7/widget/RecyclerView$r;)I

    .line 2197
    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 2198
    if-nez v3, :cond_4

    .line 2199
    invoke-virtual {v5, v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(II)Landroid/view/View;

    move-result-object v3

    .line 2200
    if-eqz v3, :cond_4

    if-eq v3, p1, :cond_4

    move-object v0, v3

    .line 2201
    goto :goto_0

    .line 2187
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()I

    move-result v0

    goto :goto_1

    .line 2206
    :cond_4
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2207
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_2
    if-ltz v3, :cond_8

    .line 2208
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(II)Landroid/view/View;

    move-result-object v1

    .line 2209
    if-eqz v1, :cond_5

    if-eq v1, p1, :cond_5

    move-object v0, v1

    .line 2210
    goto/16 :goto_0

    .line 2207
    :cond_5
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_2

    .line 2214
    :cond_6
    add-int/lit8 v1, v1, 0x1

    :cond_7
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v1, v3, :cond_8

    .line 2215
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(II)Landroid/view/View;

    move-result-object v3

    .line 2216
    if-eqz v3, :cond_6

    if-eq v3, p1, :cond_6

    move-object v0, v3

    .line 2217
    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    .line 2221
    goto/16 :goto_0
.end method

.method a(ZZ)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 1291
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()V

    .line 1292
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v3

    .line 1293
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v4

    .line 1294
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v5

    .line 1295
    const/4 v1, 0x0

    .line 1296
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v5, :cond_4

    .line 1297
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1298
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v6

    .line 1299
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v7

    .line 1300
    if-le v7, v3, :cond_0

    if-lt v6, v4, :cond_1

    .line 1296
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1303
    :cond_1
    if-ge v6, v3, :cond_2

    if-nez p1, :cond_3

    .line 1312
    :cond_2
    :goto_2
    return-object v1

    .line 1308
    :cond_3
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1309
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1312
    goto :goto_2
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 402
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-eq p1, v0, :cond_1

    .line 403
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()V

    .line 404
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 405
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 406
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 407
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 408
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v2, p0, v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;ILandroid/support/v7/widget/StaggeredGridLayoutManager$1;)V

    aput-object v2, v1, v0

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    .line 412
    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C()I

    move-result v1

    add-int/2addr v1, v0

    .line 573
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D()I

    move-result v2

    add-int/2addr v0, v2

    .line 574
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 575
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 576
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    .line 577
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 585
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(II)V

    .line 586
    return-void

    .line 580
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 581
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 582
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 1151
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1152
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1153
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    .line 1157
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/support/v4/view/a/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1213
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1214
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    if-nez v1, :cond_0

    .line 1215
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;Landroid/support/v4/view/a/e;)V

    .line 1230
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    .line 1218
    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 1219
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_2

    .line 1220
    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v0

    iget-boolean v1, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    :goto_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/e$l;->a(IIIIZZ)Landroid/support/v4/view/a/e$l;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/e;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1225
    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v2

    iget-boolean v3, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    :goto_2
    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/e$l;->a(IIIIZZ)Landroid/support/v4/view/a/e$l;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/e;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 785
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b()V

    .line 795
    const/4 v0, 0x0

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .parameter

    .prologue
    .line 1447
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 1448
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    .line 1449
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1442
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1443
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1453
    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1454
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1459
    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1460
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 300
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 301
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e()V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1998
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/content/Context;)V

    .line 2012
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/z;->d(I)V

    .line 2013
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$q;)V

    .line 2014
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1234
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1235
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 1236
    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/o;

    move-result-object v0

    .line 1238
    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v1

    .line 1239
    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v2

    .line 1240
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    .line 1244
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    .line 1245
    if-ge v1, v2, :cond_2

    .line 1246
    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->b(I)V

    .line 1247
    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/o;->c(I)V

    goto :goto_0

    .line 1249
    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/o;->b(I)V

    .line 1250
    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->c(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 505
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    .line 507
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    if-eq v0, p1, :cond_0

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 456
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 457
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    .line 458
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$i;)Z
    .locals 1
    .parameter

    .prologue
    .line 2154
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    return v0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1984
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1278
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1279
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 1281
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method b()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 313
    new-instance v9, Ljava/util/BitSet;

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-direct {v9, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 314
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-virtual {v9, v5, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 317
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 319
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v4, :cond_1

    move v8, v0

    .line 326
    :goto_1
    if-ge v1, v8, :cond_2

    move v4, v3

    :goto_2
    move v7, v1

    .line 327
    :goto_3
    if-eq v7, v8, :cond_c

    .line 328
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v6

    .line 329
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 330
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 331
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v6

    .line 371
    :goto_4
    return-object v0

    :cond_0
    move v2, v0

    .line 317
    goto :goto_0

    .line 324
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v8, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v0

    .line 326
    goto :goto_2

    .line 334
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    .line 336
    :cond_4
    iget-boolean v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v1, :cond_6

    .line 327
    :cond_5
    add-int v0, v7, v4

    move v7, v0

    goto :goto_3

    .line 340
    :cond_6
    add-int v1, v7, v4

    if-eq v1, v8, :cond_5

    .line 341
    add-int v1, v7, v4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v10

    .line 343
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v1, :cond_8

    .line 345
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v1

    .line 346
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v11

    .line 347
    if-ge v1, v11, :cond_7

    move-object v0, v6

    .line 348
    goto :goto_4

    .line 349
    :cond_7
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 361
    :goto_5
    if-eqz v1, :cond_5

    .line 363
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 364
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_a

    move v1, v3

    :goto_6
    if-gez v2, :cond_b

    move v0, v3

    :goto_7
    if-eq v1, v0, :cond_5

    move-object v0, v6

    .line 365
    goto :goto_4

    .line 353
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v1

    .line 354
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v11

    .line 355
    if-le v1, v11, :cond_9

    move-object v0, v6

    .line 356
    goto :goto_4

    .line 357
    :cond_9
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 358
    goto :goto_5

    :cond_a
    move v1, v5

    .line 364
    goto :goto_6

    :cond_b
    move v0, v5

    goto :goto_7

    .line 371
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    move v1, v5

    goto :goto_5
.end method

.method b(ZZ)Landroid/view/View;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1322
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()V

    .line 1323
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v3

    .line 1324
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v4

    .line 1325
    const/4 v1, 0x0

    .line 1326
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 1327
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1328
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v5

    .line 1329
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v6

    .line 1330
    if-le v6, v3, :cond_0

    if-lt v5, v4, :cond_1

    .line 1326
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 1333
    :cond_1
    if-le v6, v4, :cond_2

    if-nez p1, :cond_3

    .line 1342
    :cond_2
    :goto_2
    return-object v1

    .line 1338
    :cond_3
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1339
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1342
    goto :goto_2
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 421
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 425
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne p1, v0, :cond_1

    .line 436
    :goto_0
    return-void

    .line 428
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 429
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    .line 432
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    iput-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    .line 433
    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    .line 435
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1437
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1438
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/StaggeredGridLayoutManager$a;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x8000

    const/4 v1, 0x1

    .line 812
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-ne v2, v5, :cond_1

    :cond_0
    move v1, v0

    .line 887
    :goto_0
    return v1

    .line 816
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 817
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 818
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    move v1, v0

    .line 819
    goto :goto_0

    .line 822
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-ge v2, v1, :cond_f

    .line 825
    :cond_4
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    .line 826
    if-eqz v2, :cond_c

    .line 829
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()I

    move-result v0

    :goto_1
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 832
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    if-eq v0, v4, :cond_7

    .line 833
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_6

    .line 834
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    sub-int/2addr v0, v3

    .line 836
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0

    .line 829
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()I

    move-result v0

    goto :goto_1

    .line 838
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    add-int/2addr v0, v3

    .line 840
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0

    .line 846
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v0

    .line 847
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->f()I

    move-result v3

    if-le v0, v3, :cond_9

    .line 849
    iget-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    :goto_2
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    goto :goto_2

    .line 855
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->c()I

    move-result v3

    sub-int/2addr v0, v3

    .line 857
    if-gez v0, :cond_a

    .line 858
    neg-int v0, v0

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 861
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 863
    if-gez v0, :cond_b

    .line 864
    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 868
    :cond_b
    iput v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 872
    :cond_c
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    .line 873
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    if-ne v2, v4, :cond_e

    .line 874
    iget v2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t(I)I

    move-result v2

    .line 876
    if-ne v2, v1, :cond_d

    move v0, v1

    :cond_d
    iput-boolean v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 877
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b()V

    .line 881
    :goto_3
    iput-boolean v1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->d:Z

    goto/16 :goto_0

    .line 879
    :cond_e
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a(I)V

    goto :goto_3

    .line 884
    :cond_f
    iput v4, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->b:I

    .line 885
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$a;->a:I

    goto/16 :goto_0
.end method

.method c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2049
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()V

    .line 2052
    if-lez p1, :cond_0

    .line 2054
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 2059
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput-boolean v1, v3, Landroid/support/v7/widget/y;->a:Z

    .line 2060
    invoke-direct {p0, v2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$r;)V

    .line 2061
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 2062
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iget v1, v1, Landroid/support/v7/widget/y;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/y;->c:I

    .line 2063
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2064
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    iput v1, v0, Landroid/support/v7/widget/y;->b:I

    .line 2065
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/y;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/y;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    .line 2067
    if-ge v1, v0, :cond_1

    .line 2078
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ab;->a(I)V

    .line 2080
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 2081
    return p1

    .line 2056
    :cond_0
    const/4 v0, -0x1

    .line 2057
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()I

    move-result v2

    goto :goto_0

    .line 2069
    :cond_1
    if-gez p1, :cond_2

    .line 2070
    neg-int p1, v0

    goto :goto_1

    :cond_2
    move p1, v0

    .line 2072
    goto :goto_1
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 526
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    .line 527
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 590
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)V

    .line 591
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method d(I)V
    .locals 1
    .parameter

    .prologue
    .line 891
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->h()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    .line 895
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public e()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/high16 v4, -0x8000

    .line 1161
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1162
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1207
    :goto_0
    return-object v0

    .line 1164
    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1165
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 1166
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 1167
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 1169
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 1171
    iget-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    array-length v0, v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 1172
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 1177
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_5

    .line 1178
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()V

    .line 1179
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->M()I

    move-result v0

    :goto_2
    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1181
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1182
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 1183
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    move v0, v1

    .line 1184
    :goto_3
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_6

    .line 1186
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_4

    .line 1187
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    .line 1188
    if-eq v1, v4, :cond_1

    .line 1189
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->d()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1197
    :cond_1
    :goto_4
    iget-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aput v1, v3, v0

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1174
    :cond_2
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    goto :goto_1

    .line 1179
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->N()I

    move-result v0

    goto :goto_2

    .line 1192
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    .line 1193
    if-eq v1, v4, :cond_1

    .line 1194
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->c()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_4

    .line 1200
    :cond_5
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1201
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1202
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    :cond_6
    move-object v0, v2

    .line 1207
    goto/16 :goto_0
.end method

.method public e(I)V
    .locals 1
    .parameter

    .prologue
    .line 2018
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, p1, :cond_0

    .line 2019
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b()V

    .line 2021
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 2022
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 2023
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()V

    .line 2024
    return-void
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1074
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1972
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1090
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1967
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 553
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1261
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v0

    .line 1263
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    .line 1261
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1263
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_1
.end method

.method public j(I)V
    .locals 2
    .parameter

    .prologue
    .line 1421
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->j(I)V

    .line 1422
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1423
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d(I)V

    .line 1422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1425
    :cond_0
    return-void
.end method

.method j()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x8000

    .line 1812
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v3

    move v0, v1

    .line 1813
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_0

    .line 1814
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1818
    :cond_0
    return v1

    .line 1813
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public k(I)V
    .locals 2
    .parameter

    .prologue
    .line 1429
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->k(I)V

    .line 1430
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1431
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d(I)V

    .line 1430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1433
    :cond_0
    return-void
.end method

.method k()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x8000

    .line 1822
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v3

    move v0, v1

    .line 1823
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_0

    .line 1824
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1828
    :cond_0
    return v1

    .line 1823
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public l(I)V
    .locals 0
    .parameter

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()Z

    .line 295
    :cond_0
    return-void
.end method
