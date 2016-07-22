.class Landroid/support/v7/widget/a/a$c;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/a/g;

.field private final b:I

.field private c:Z

.field final d:F

.field final e:F

.field final f:F

.field final g:F

.field final h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final i:I

.field public j:Z

.field k:F

.field l:F

.field m:Z

.field final synthetic n:Landroid/support/v7/widget/a/a;

.field private o:F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2330
    iput-object p1, p0, Landroid/support/v7/widget/a/a$c;->n:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2323
    iput-boolean v0, p0, Landroid/support/v7/widget/a/a$c;->m:Z

    .line 2325
    iput-boolean v0, p0, Landroid/support/v7/widget/a/a$c;->c:Z

    .line 2331
    iput p4, p0, Landroid/support/v7/widget/a/a$c;->i:I

    .line 2332
    iput p3, p0, Landroid/support/v7/widget/a/a$c;->b:I

    .line 2333
    iput-object p2, p0, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2334
    iput p5, p0, Landroid/support/v7/widget/a/a$c;->d:F

    .line 2335
    iput p6, p0, Landroid/support/v7/widget/a/a$c;->e:F

    .line 2336
    iput p7, p0, Landroid/support/v7/widget/a/a$c;->f:F

    .line 2337
    iput p8, p0, Landroid/support/v7/widget/a/a$c;->g:F

    .line 2338
    invoke-static {}, Landroid/support/v4/a/a;->a()Landroid/support/v4/a/g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/a/a$c;->a:Landroid/support/v4/a/g;

    .line 2339
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->a:Landroid/support/v4/a/g;

    new-instance v1, Landroid/support/v7/widget/a/a$c$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/a/a$c$1;-><init>(Landroid/support/v7/widget/a/a$c;Landroid/support/v7/widget/a/a;)V

    invoke-interface {v0, v1}, Landroid/support/v4/a/g;->a(Landroid/support/v4/a/d;)V

    .line 2346
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->a:Landroid/support/v4/a/g;

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/a/g;->a(Landroid/view/View;)V

    .line 2347
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->a:Landroid/support/v4/a/g;

    invoke-interface {v0, p0}, Landroid/support/v4/a/g;->a(Landroid/support/v4/a/b;)V

    .line 2348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a/a$c;->a(F)V

    .line 2349
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a$c;)Z
    .locals 1
    .parameter

    .prologue
    .line 2297
    iget-boolean v0, p0, Landroid/support/v7/widget/a/a$c;->c:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/a/a$c;)I
    .locals 1
    .parameter

    .prologue
    .line 2297
    iget v0, p0, Landroid/support/v7/widget/a/a$c;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2356
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Z)V

    .line 2357
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->a:Landroid/support/v4/a/g;

    invoke-interface {v0}, Landroid/support/v4/a/g;->a()V

    .line 2358
    return-void
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 2365
    iput p1, p0, Landroid/support/v7/widget/a/a$c;->o:F

    .line 2366
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 2352
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->a:Landroid/support/v4/a/g;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/a/g;->a(J)V

    .line 2353
    return-void
.end method

.method public a(Landroid/support/v4/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 2388
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->a:Landroid/support/v4/a/g;

    invoke-interface {v0}, Landroid/support/v4/a/g;->b()V

    .line 2362
    return-void
.end method

.method public b(Landroid/support/v4/a/g;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2392
    iget-boolean v0, p0, Landroid/support/v7/widget/a/a$c;->c:Z

    if-nez v0, :cond_0

    .line 2393
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Z)V

    .line 2395
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/a/a$c;->c:Z

    .line 2396
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 2373
    iget v0, p0, Landroid/support/v7/widget/a/a$c;->d:F

    iget v1, p0, Landroid/support/v7/widget/a/a$c;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2374
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->o(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a$c;->k:F

    .line 2378
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/a/a$c;->e:F

    iget v1, p0, Landroid/support/v7/widget/a/a$c;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2379
    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->p(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a$c;->l:F

    .line 2383
    :goto_1
    return-void

    .line 2376
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/a/a$c;->d:F

    iget v1, p0, Landroid/support/v7/widget/a/a$c;->o:F

    iget v2, p0, Landroid/support/v7/widget/a/a$c;->f:F

    iget v3, p0, Landroid/support/v7/widget/a/a$c;->d:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/a/a$c;->k:F

    goto :goto_0

    .line 2381
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/a/a$c;->e:F

    iget v1, p0, Landroid/support/v7/widget/a/a$c;->o:F

    iget v2, p0, Landroid/support/v7/widget/a/a$c;->g:F

    iget v3, p0, Landroid/support/v7/widget/a/a$c;->e:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/a/a$c;->l:F

    goto :goto_1
.end method

.method public c(Landroid/support/v4/a/g;)V
    .locals 1
    .parameter

    .prologue
    .line 2400
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a/a$c;->a(F)V

    .line 2401
    return-void
.end method

.method public d(Landroid/support/v4/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 2406
    return-void
.end method
