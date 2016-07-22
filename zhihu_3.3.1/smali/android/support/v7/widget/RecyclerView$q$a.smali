.class public Landroid/support/v7/widget/RecyclerView$q$a;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9763
    const/high16 v0, -0x8000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$q$a;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 9764
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 9782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9748
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    .line 9752
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->f:Z

    .line 9756
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->g:I

    .line 9783
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->a:I

    .line 9784
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$q$a;->b:I

    .line 9785
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    .line 9786
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$q$a;->e:Landroid/view/animation/Interpolator;

    .line 9787
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$q$a;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9738
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$q$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 9813
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    if-ltz v0, :cond_0

    .line 9814
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    .line 9815
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    .line 9816
    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;I)V

    .line 9817
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$q$a;->f:Z

    .line 9842
    :goto_0
    return-void

    .line 9820
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->f:Z

    if-eqz v0, :cond_4

    .line 9821
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$q$a;->b()V

    .line 9822
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->e:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 9823
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_2

    .line 9824
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$q$a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$t;->b(II)V

    .line 9831
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->g:I

    .line 9832
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->g:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 9835
    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9838
    :cond_1
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$q$a;->f:Z

    goto :goto_0

    .line 9826
    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$q$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$t;->a(III)V

    goto :goto_1

    .line 9829
    :cond_3
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$q$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$q$a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$t;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 9840
    :cond_4
    iput v5, p0, Landroid/support/v7/widget/RecyclerView$q$a;->g:I

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9845
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->e:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    if-ge v0, v1, :cond_0

    .line 9846
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9848
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    if-ge v0, v1, :cond_1

    .line 9849
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9851
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 9805
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    .line 9806
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9904
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$q$a;->a:I

    .line 9905
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$q$a;->b:I

    .line 9906
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$q$a;->c:I

    .line 9907
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$q$a;->e:Landroid/view/animation/Interpolator;

    .line 9908
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->f:Z

    .line 9909
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 9809
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q$a;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
