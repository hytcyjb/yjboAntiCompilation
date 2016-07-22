.class public abstract Landroid/support/v7/widget/RecyclerView$h;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$h$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field p:Landroid/support/v7/widget/s;

.field q:Landroid/support/v7/widget/RecyclerView;

.field r:Landroid/support/v7/widget/RecyclerView$q;

.field s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5973
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->a:Z

    .line 5975
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->s:Z

    .line 5977
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->b:Z

    .line 5983
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Z

    .line 8545
    return-void
.end method

.method public static a(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6123
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 6124
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 6125
    sparse-switch v1, :sswitch_data_0

    .line 6133
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :sswitch_0
    return v0

    .line 6129
    :sswitch_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 6125
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIIZ)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, -0x8000

    const/high16 v2, 0x4000

    const/4 v0, 0x0

    .line 7529
    sub-int v1, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7532
    if-eqz p4, :cond_3

    .line 7533
    if-ltz p3, :cond_1

    move v0, v2

    move v1, p3

    .line 7569
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 7536
    :cond_1
    if-ne p3, v5, :cond_2

    .line 7537
    sparse-switch p1, :sswitch_data_0

    move p1, v0

    :goto_1
    move v1, v0

    move v0, p1

    .line 7546
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 7542
    goto :goto_1

    :sswitch_1
    move p1, v0

    .line 7545
    goto :goto_1

    .line 7548
    :cond_2
    if-ne p3, v4, :cond_7

    move v1, v0

    .line 7550
    goto :goto_0

    .line 7553
    :cond_3
    if-ltz p3, :cond_4

    move v0, v2

    move v1, p3

    .line 7555
    goto :goto_0

    .line 7556
    :cond_4
    if-ne p3, v5, :cond_5

    move v0, p1

    .line 7558
    goto :goto_0

    .line 7559
    :cond_5
    if-ne p3, v4, :cond_7

    .line 7561
    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_0

    :cond_6
    move v0, v3

    .line 7562
    goto :goto_0

    :cond_7
    move v1, v0

    goto :goto_0

    .line 7537
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$h$a;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8498
    new-instance v0, Landroid/support/v7/widget/RecyclerView$h$a;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$h$a;-><init>()V

    .line 8499
    sget-object v1, Landroid/support/v7/d/a$c;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8501
    sget v2, Landroid/support/v7/d/a$c;->RecyclerView_android_orientation:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$h$a;->a:I

    .line 8502
    sget v2, Landroid/support/v7/d/a$c;->RecyclerView_spanCount:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$h$a;->b:I

    .line 8503
    sget v2, Landroid/support/v7/d/a$c;->RecyclerView_reverseLayout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$h$a;->c:Z

    .line 8504
    sget v2, Landroid/support/v7/d/a$c;->RecyclerView_stackFromEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$h$a;->d:Z

    .line 8505
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8506
    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6897
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->d(I)V

    .line 6898
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$h;Landroid/support/v7/widget/RecyclerView$q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5966
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$q;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;ILandroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7283
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7284
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7299
    :goto_0
    return-void

    .line 7290
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7292
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$h;->g(I)V

    .line 7293
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 7295
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$h;->h(I)V

    .line 7296
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$n;->c(Landroid/view/View;)V

    .line 7297
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ar;->h(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 6670
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 6671
    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6673
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ar;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6682
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 6683
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6684
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6685
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l()V

    .line 6689
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/v7/widget/s;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6714
    :cond_2
    :goto_2
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$i;->d:Z

    if-eqz v2, :cond_3

    .line 6718
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 6719
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$i;->d:Z

    .line 6721
    :cond_3
    return-void

    .line 6680
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ar;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 6687
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n()V

    goto :goto_1

    .line 6693
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-ne v2, v3, :cond_9

    .line 6695
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/s;->b(Landroid/view/View;)I

    move-result v2

    .line 6696
    if-ne p2, v5, :cond_7

    .line 6697
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v3}, Landroid/support/v7/widget/s;->b()I

    move-result p2

    .line 6699
    :cond_7
    if-ne v2, v5, :cond_8

    .line 6700
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6704
    :cond_8
    if-eq v2, p2, :cond_2

    .line 6705
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v3, v2, p2}, Landroid/support/v7/widget/RecyclerView$h;->d(II)V

    goto :goto_2

    .line 6708
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v2, p1, p2, v4}, Landroid/support/v7/widget/s;->a(Landroid/view/View;IZ)V

    .line 6709
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    .line 6710
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$q;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6711
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$q;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$h;)Z
    .locals 1
    .parameter

    .prologue
    .line 5966
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->b:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5966
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->a:Z

    return p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$q;)V
    .locals 1
    .parameter

    .prologue
    .line 8176
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    if-ne v0, p1, :cond_0

    .line 8177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    .line 8179
    :cond_0
    return-void
.end method

.method private static b(III)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7423
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 7424
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 7425
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v0, v1

    .line 7436
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 7428
    :cond_1
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 7436
    goto :goto_0

    .line 7432
    :sswitch_1
    if-ge v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 7434
    :sswitch_2
    if-eq v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 7428
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$h;)Z
    .locals 1
    .parameter

    .prologue
    .line 5966
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->a:Z

    return v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 7101
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 7110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 7119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 7128
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7175
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 7182
    :cond_0
    :goto_0
    return-object v0

    .line 7178
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 7179
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/s;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 7182
    goto :goto_0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 7196
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    .line 7197
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    :goto_1
    return v0

    .line 7196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7197
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public G()I
    .locals 1

    .prologue
    .line 8141
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->q(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public H()I
    .locals 1

    .prologue
    .line 8148
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->r(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method I()V
    .locals 1

    .prologue
    .line 8170
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    .line 8171
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$q;->f()V

    .line 8173
    :cond_0
    return-void
.end method

.method public J()V
    .locals 1

    .prologue
    .line 8339
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->a:Z

    .line 8340
    return-void
.end method

.method K()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 8531
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v2

    move v1, v0

    .line 8532
    :goto_0
    if-ge v1, v2, :cond_0

    .line 8533
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v3

    .line 8534
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 8535
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_1

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1

    .line 8536
    const/4 v0, 0x1

    .line 8539
    :cond_0
    return v0

    .line 8532
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6499
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 8374
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8377
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    goto :goto_0
.end method

.method public abstract a()Landroid/support/v7/widget/RecyclerView$i;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$i;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6482
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$i;
    .locals 1
    .parameter

    .prologue
    .line 6458
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    .line 6459
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$i;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$i;-><init>(Landroid/support/v7/widget/RecyclerView$i;)V

    .line 6463
    :goto_0
    return-object v0

    .line 6460
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 6461
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$i;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6463
    :cond_1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$i;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7787
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$n;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7017
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v0

    .line 7018
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->g(I)V

    .line 7019
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V

    .line 7020
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6083
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v1

    add-int/2addr v0, v1

    .line 6084
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v2

    add-int/2addr v1, v2

    .line 6085
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->G()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(III)I

    move-result v0

    .line 6086
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->H()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(III)I

    move-result v1

    .line 6087
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->e(II)V

    .line 6088
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 8167
    return-void
.end method

.method a(Landroid/support/v4/view/a/e;)V
    .locals 2
    .parameter

    .prologue
    .line 8212
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v4/view/a/e;)V

    .line 8213
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7913
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 2
    .parameter

    .prologue
    .line 7275
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v0

    .line 7276
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 7277
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v1

    .line 7278
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;ILandroid/view/View;)V

    .line 7276
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7280
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8123
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;II)V

    .line 8124
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v4/view/a/e;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 8242
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ah;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8244
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/e;->a(I)V

    .line 8245
    invoke-virtual {p3, v1}, Landroid/support/v4/view/a/e;->i(Z)V

    .line 8247
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8249
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/e;->a(I)V

    .line 8250
    invoke-virtual {p3, v1}, Landroid/support/v4/view/a/e;->i(Z)V

    .line 8252
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->e(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/a/e$k;->a(IIZI)Landroid/support/v4/view/a/e$k;

    move-result-object v0

    .line 8258
    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/e;->b(Ljava/lang/Object;)V

    .line 8259
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/support/v4/view/a/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 8320
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v0

    .line 8321
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    .line 8322
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/e$l;->a(IIIIZZ)Landroid/support/v4/view/a/e$l;

    move-result-object v0

    .line 8325
    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/e;->c(Ljava/lang/Object;)V

    .line 8326
    return-void

    :cond_0
    move v0, v4

    .line 8320
    goto :goto_0

    :cond_1
    move v2, v4

    .line 8321
    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 8279
    invoke-static {p3}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/o;

    move-result-object v1

    .line 8281
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 8292
    :cond_0
    :goto_0
    return-void

    .line 8284
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ah;->a(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/view/a/o;->a(Z)V

    .line 8289
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8290
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/a/o;->a(I)V

    goto :goto_0

    .line 8284
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$q;)V
    .locals 2
    .parameter

    .prologue
    .line 6571
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$q;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6573
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$q;->f()V

    .line 6575
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    .line 6576
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$h;)V

    .line 6577
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 7951
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7963
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8015
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7998
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/support/v7/widget/RecyclerView;II)V

    .line 7999
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6346
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->e(Landroid/support/v7/widget/RecyclerView;)V

    .line 6347
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6562
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6563
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 6625
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;I)V

    .line 6626
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6643
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    .line 6644
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7452
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 7454
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 7455
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 7456
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 7458
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->w()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$i;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$i;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$i;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v6

    invoke-static {v3, v4, v2, v5, v6}, Landroid/support/v7/widget/RecyclerView$h;->a(IIIIZ)I

    move-result v2

    .line 7462
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->x()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$i;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$i;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$i;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->g()Z

    move-result v6

    invoke-static {v3, v4, v1, v5, v6}, Landroid/support/v7/widget/RecyclerView$h;->a(IIIIZ)I

    move-result v1

    .line 7466
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7467
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 7469
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7628
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    .line 7629
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p5, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 7631
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$i;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6910
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6911
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6912
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ar;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6916
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/v7/widget/s;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6920
    return-void

    .line 6914
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ar;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 7699
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 7700
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7705
    :goto_0
    return-void

    .line 7703
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 7704
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;Landroid/support/v4/view/a/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8296
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8298
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/s;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8299
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/support/v4/view/a/e;)V

    .line 8302
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7006
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/view/View;)V

    .line 7007
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V

    .line 7008
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 8263
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8264
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 6145
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6146
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 6148
    :cond_0
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8415
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$i;)Z
    .locals 1
    .parameter

    .prologue
    .line 6441
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;ILandroid/os/Bundle;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8431
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 8457
    :cond_0
    :goto_0
    return v1

    .line 8435
    :cond_1
    sparse-switch p3, :sswitch_data_0

    move v0, v1

    move v3, v1

    .line 8453
    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 8456
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    .line 8457
    goto :goto_0

    .line 8437
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8438
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 8440
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4}, Landroid/support/v4/view/ah;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8441
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    .line 8445
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ah;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8446
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v3

    sub-int/2addr v0, v3

    .line 8448
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v4/view/ah;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8449
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v4

    sub-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 8435
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8483
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7897
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7827
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->A()I

    move-result v3

    .line 7828
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->B()I

    move-result v4

    .line 7829
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->C()I

    move-result v1

    sub-int v5, v0, v1

    .line 7830
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->z()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->D()I

    move-result v1

    sub-int v6, v0, v1

    .line 7831
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v7, v0, v1

    .line 7832
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v8, v0, v1

    .line 7833
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v9, v7, v0

    .line 7834
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v10, v8, v0

    .line 7836
    const/4 v0, 0x0

    sub-int v1, v7, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7837
    const/4 v0, 0x0

    sub-int v2, v8, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7838
    const/4 v0, 0x0

    sub-int v11, v9, v5

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7839
    const/4 v11, 0x0

    sub-int v6, v10, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 7845
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->t()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 7846
    if-eqz v0, :cond_1

    :goto_0
    move v1, v0

    .line 7855
    :goto_1
    if-eqz v2, :cond_4

    move v0, v2

    .line 7858
    :goto_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    .line 7859
    :cond_0
    if-eqz p4, :cond_5

    .line 7860
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 7864
    :goto_3
    const/4 v0, 0x1

    .line 7866
    :goto_4
    return v0

    .line 7846
    :cond_1
    sub-int v0, v9, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 7849
    :cond_2
    if-eqz v1, :cond_3

    move v0, v1

    :goto_5
    move v1, v0

    goto :goto_1

    :cond_3
    sub-int v1, v7, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    .line 7855
    :cond_4
    sub-int v0, v8, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 7862
    :cond_5
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_3

    .line 7866
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7875
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 7941
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$i;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7376
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$i;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$i;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8462
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$n;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter

    .prologue
    .line 6306
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6307
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 6309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6516
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 8393
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8396
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 8045
    const/4 v0, 0x0

    return v0
.end method

.method b(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6011
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$h;->d:I

    .line 6012
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$h;->e:I

    .line 6013
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 7311
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$n;->c()I

    move-result v1

    .line 7313
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 7314
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->e(I)Landroid/view/View;

    move-result-object v2

    .line 7315
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 7316
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7313
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7324
    :cond_0
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Z)V

    .line 7325
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7326
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7328
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    if-eqz v4, :cond_2

    .line 7329
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$e;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7331
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Z)V

    .line 7332
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/view/View;)V

    goto :goto_1

    .line 7334
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$n;->d()V

    .line 7335
    if-lez v1, :cond_4

    .line 7336
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 7338
    :cond_4
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x4000

    .line 5995
    if-nez p1, :cond_0

    .line 5996
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    .line 5997
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    .line 5998
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->d:I

    .line 5999
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->e:I

    .line 6008
    :goto_0
    return-void

    .line 6001
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    .line 6002
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    .line 6003
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->d:I

    .line 6005
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$h;->e:I

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7973
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6260
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->s:Z

    .line 6261
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V

    .line 6262
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 6654
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/view/View;I)V

    .line 6655
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6666
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    .line 6667
    return-void
.end method

.method b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$i;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7390
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$i;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$i;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 8090
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    .line 6837
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v2

    .line 6838
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 6839
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v0

    .line 6840
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 6841
    if-nez v3, :cond_1

    .line 6838
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6844
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6849
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(II)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const v3, 0x7fffffff

    const/high16 v1, -0x8000

    .line 6029
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v9

    .line 6030
    if-nez v9, :cond_0

    .line 6031
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;II)V

    .line 6061
    :goto_0
    return-void

    .line 6039
    :cond_0
    const/4 v0, 0x0

    move v8, v0

    move v5, v1

    move v7, v3

    :goto_1
    if-ge v8, v9, :cond_1

    .line 6040
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v10

    .line 6041
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 6042
    invoke-virtual {p0, v10}, Landroid/support/v7/widget/RecyclerView$h;->h(Landroid/view/View;)I

    move-result v2

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$i;->leftMargin:I

    sub-int v6, v2, v4

    .line 6043
    invoke-virtual {p0, v10}, Landroid/support/v7/widget/RecyclerView$h;->j(Landroid/view/View;)I

    move-result v2

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$i;->rightMargin:I

    add-int/2addr v4, v2

    .line 6044
    invoke-virtual {p0, v10}, Landroid/support/v7/widget/RecyclerView$h;->i(Landroid/view/View;)I

    move-result v2

    iget v11, v0, Landroid/support/v7/widget/RecyclerView$i;->topMargin:I

    sub-int/2addr v2, v11

    .line 6045
    invoke-virtual {p0, v10}, Landroid/support/v7/widget/RecyclerView$h;->k(Landroid/view/View;)I

    move-result v10

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->bottomMargin:I

    add-int/2addr v0, v10

    .line 6046
    if-ge v6, v7, :cond_5

    .line 6049
    :goto_2
    if-le v4, v5, :cond_4

    .line 6052
    :goto_3
    if-ge v2, v3, :cond_3

    .line 6055
    :goto_4
    if-le v0, v1, :cond_2

    .line 6039
    :goto_5
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v5, v4

    move v3, v2

    move v7, v6

    move v1, v0

    goto :goto_1

    .line 6059
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v7, v3, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 6060
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/graphics/Rect;II)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_5

    :cond_3
    move v2, v3

    goto :goto_4

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    move v6, v7

    goto :goto_2
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 2
    .parameter

    .prologue
    .line 8202
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 8203
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v1

    .line 8204
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8205
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(ILandroid/support/v7/widget/RecyclerView$n;)V

    .line 8202
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8208
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6410
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6411
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .parameter

    .prologue
    .line 6255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->s:Z

    .line 6256
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 6257
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7985
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 6732
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->a(Landroid/view/View;)V

    .line 6733
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6931
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$i;)V

    .line 6932
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 6215
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->b:Z

    .line 6216
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8358
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 8030
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 6780
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->e()I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7807
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 6962
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v0

    .line 6963
    if-nez v0, :cond_0

    .line 6964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6967
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->h(I)V

    .line 6968
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$h;->c(Landroid/view/View;I)V

    .line 6969
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 6322
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 6251
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 8075
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 8161
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6810
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 6820
    :cond_0
    :goto_0
    return-object v0

    .line 6813
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 6814
    if-eqz v1, :cond_0

    .line 6817
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/s;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 6820
    goto :goto_0
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 6549
    return-void
.end method

.method public e(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8134
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;II)V

    .line 8135
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6331
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8410
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 8060
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 7582
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    .line 7583
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 8510
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->b(II)V

    .line 8514
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 6526
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 8105
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 7596
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    .line 7597
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .locals 1
    .parameter

    .prologue
    .line 6744
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v0

    .line 6745
    if-eqz v0, :cond_0

    .line 6746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->a(I)V

    .line 6748
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 6536
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 7642
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->n(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h(I)V
    .locals 1
    .parameter

    .prologue
    .line 6890
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$h;->a(ILandroid/view/View;)V

    .line 6891
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 7654
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->l(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public i(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 7038
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 7666
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->o(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j(I)V
    .locals 1
    .parameter

    .prologue
    .line 7207
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7208
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 7210
    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 7678
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->m(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k(I)V
    .locals 1
    .parameter

    .prologue
    .line 7219
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7220
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 7222
    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 7719
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public l(I)V
    .locals 0
    .parameter

    .prologue
    .line 8187
    return-void
.end method

.method l()Z
    .locals 1

    .prologue
    .line 8527
    const/4 v0, 0x0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 7734
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 7749
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public o(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 7764
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$i;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 6094
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6095
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 6097
    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 6272
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$h;->s:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 6355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->t(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 6583
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->r:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$q;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 6596
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 6769
    const/4 v0, -0x1

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 7029
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->p:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 7056
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->d:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 7074
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->e:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 7083
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->d:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 7092
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$h;->e:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0
.end method
