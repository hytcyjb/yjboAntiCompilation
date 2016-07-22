.class public abstract Landroid/support/v7/widget/RecyclerView$q;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$q$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/RecyclerView$h;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroid/support/v7/widget/RecyclerView$q$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9507
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$q;->a:I

    .line 9522
    new-instance v0, Landroid/support/v7/widget/RecyclerView$q$a;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$q$a;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->g:Landroid/support/v7/widget/RecyclerView$q$a;

    .line 9523
    return-void
.end method

.method private a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 9617
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/support/v7/widget/RecyclerView;

    .line 9618
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$q;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$q;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 9619
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$q;->f()V

    .line 9621
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$q;->d:Z

    .line 9622
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 9624
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$q;->a:I

    if-ne v1, v2, :cond_4

    .line 9625
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->f:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$q;->g:Landroid/support/v7/widget/RecyclerView$q$a;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$q$a;)V

    .line 9626
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->g:Landroid/support/v7/widget/RecyclerView$q$a;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView$q$a;->a(Landroid/support/v7/widget/RecyclerView$q$a;Landroid/support/v7/widget/RecyclerView;)V

    .line 9627
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$q;->f()V

    .line 9633
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$q;->e:Z

    if-eqz v1, :cond_3

    .line 9634
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$q;->g:Landroid/support/v7/widget/RecyclerView$q$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$q;->a(IILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$q$a;)V

    .line 9635
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->g:Landroid/support/v7/widget/RecyclerView$q$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$q$a;->a()Z

    move-result v1

    .line 9636
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$q;->g:Landroid/support/v7/widget/RecyclerView$q$a;

    invoke-static {v2, v0}, Landroid/support/v7/widget/RecyclerView$q$a;->a(Landroid/support/v7/widget/RecyclerView$q$a;Landroid/support/v7/widget/RecyclerView;)V

    .line 9637
    if-eqz v1, :cond_3

    .line 9639
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$q;->e:Z

    if-eqz v1, :cond_5

    .line 9640
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$q;->d:Z

    .line 9641
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 9647
    :cond_3
    :goto_1
    return-void

    .line 9629
    :cond_4
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9630
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->f:Landroid/view/View;

    goto :goto_0

    .line 9643
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$q;->f()V

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$q;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9505
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$q;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 9653
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected abstract a()V
.end method

.method protected abstract a(IILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$q$a;)V
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 4
    .parameter

    .prologue
    .line 9693
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 9695
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 9696
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double v0, v2, v0

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 9697
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 9538
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/support/v7/widget/RecyclerView;

    .line 9539
    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView$q;->c:Landroid/support/v7/widget/RecyclerView$h;

    .line 9540
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9543
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$q;->a:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$r;->e(Landroid/support/v7/widget/RecyclerView$r;I)I

    .line 9544
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$q;->e:Z

    .line 9545
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$q;->d:Z

    .line 9546
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$q;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$q;->e(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->f:Landroid/view/View;

    .line 9547
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$q;->a()V

    .line 9548
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 9549
    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$q$a;)V
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 9680
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$q;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 9681
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$q;->f:Landroid/view/View;

    .line 9686
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 9552
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$q;->a:I

    .line 9553
    return-void
.end method

.method public e()Landroid/support/v7/widget/RecyclerView$h;
    .locals 1

    .prologue
    .line 9561
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->c:Landroid/support/v7/widget/RecyclerView$h;

    return-object v0
.end method

.method public e(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 9667
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$h;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 9571
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$q;->e:Z

    if-nez v0, :cond_0

    .line 9585
    :goto_0
    return-void

    .line 9574
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$q;->b()V

    .line 9575
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$r;->e(Landroid/support/v7/widget/RecyclerView$r;I)I

    .line 9576
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->f:Landroid/view/View;

    .line 9577
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$q;->a:I

    .line 9578
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$q;->d:Z

    .line 9579
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$q;->e:Z

    .line 9581
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->c:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$h;Landroid/support/v7/widget/RecyclerView$q;)V

    .line 9583
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->c:Landroid/support/v7/widget/RecyclerView$h;

    .line 9584
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 9595
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$q;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 9603
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$q;->e:Z

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 9613
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$q;->a:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 9660
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$q;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->v()I

    move-result v0

    return v0
.end method
