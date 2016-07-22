.class Landroid/support/v7/widget/StaggeredGridLayoutManager$c;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:I

.field final synthetic e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 2346
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    .line 2341
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2342
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2343
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2347
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    .line 2348
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;ILandroid/support/v7/widget/StaggeredGridLayoutManager$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2337
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 2337
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method a(I)I
    .locals 2
    .parameter

    .prologue
    .line 2351
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_1

    .line 2352
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2358
    :cond_0
    :goto_0
    return p1

    .line 2354
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2357
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a()V

    .line 2358
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    goto :goto_0
.end method

.method public a(II)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2573
    const/4 v4, 0x0

    .line 2574
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 2575
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v3

    .line 2576
    :goto_0
    if-ge v5, v6, :cond_1

    .line 2577
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2578
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    if-le v1, p1, :cond_0

    move v1, v2

    :goto_1
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v7

    if-ne v1, v7, :cond_1

    .line 2576
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v4, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2578
    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 2596
    :goto_2
    return-object v0

    .line 2586
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_3
    if-ltz v6, :cond_5

    .line 2587
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2588
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    if-le v1, p1, :cond_3

    move v1, v2

    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v2

    :goto_5
    if-ne v1, v5, :cond_5

    .line 2586
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move-object v4, v0

    goto :goto_3

    :cond_3
    move v1, v3

    .line 2588
    goto :goto_4

    :cond_4
    move v5, v3

    goto :goto_5

    :cond_5
    move-object v0, v4

    goto :goto_2
.end method

.method a()V
    .locals 3

    .prologue
    .line 2362
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2363
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    .line 2364
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2365
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v0, :cond_0

    .line 2366
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2368
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2369
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2372
    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, -0x8000

    .line 2418
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 2419
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2420
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2421
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2422
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2423
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2425
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2426
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2428
    :cond_2
    return-void
.end method

.method a(ZI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, -0x8000

    .line 2446
    if-eqz p1, :cond_1

    .line 2447
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v0

    .line 2451
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e()V

    .line 2452
    if-ne v0, v2, :cond_2

    .line 2463
    :cond_0
    :goto_1
    return-void

    .line 2449
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v0

    goto :goto_0

    .line 2455
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->c()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2459
    :cond_4
    if-eq p2, v2, :cond_5

    .line 2460
    add-int/2addr v0, p2

    .line 2462
    :cond_5
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    goto :goto_1
.end method

.method b()I
    .locals 2

    .prologue
    .line 2376
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 2377
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2380
    :goto_0
    return v0

    .line 2379
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a()V

    .line 2380
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    goto :goto_0
.end method

.method b(I)I
    .locals 2
    .parameter

    .prologue
    .line 2384
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_1

    .line 2385
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2392
    :cond_0
    :goto_0
    return p1

    .line 2387
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2388
    if-eqz v0, :cond_0

    .line 2391
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c()V

    .line 2392
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, -0x8000

    .line 2431
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 2432
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2433
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2434
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2435
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2436
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2438
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2439
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2441
    :cond_2
    return-void
.end method

.method c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
    .locals 1
    .parameter

    .prologue
    .line 2512
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 2396
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2397
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    .line 2398
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2399
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Z

    if-eqz v0, :cond_0

    .line 2400
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2402
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2403
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->d:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2406
    :cond_0
    return-void
.end method

.method c(I)V
    .locals 0
    .parameter

    .prologue
    .line 2477
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2478
    return-void
.end method

.method d()I
    .locals 2

    .prologue
    .line 2410
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 2411
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2414
    :goto_0
    return v0

    .line 2413
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c()V

    .line 2414
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    goto :goto_0
.end method

.method d(I)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 2516
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    if-eq v0, v1, :cond_0

    .line 2517
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2519
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    if-eq v0, v1, :cond_1

    .line 2520
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2522
    :cond_1
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2467
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f()V

    .line 2468
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2469
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 2472
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2473
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2474
    return-void
.end method

.method g()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 2481
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2482
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2483
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v2

    .line 2484
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2485
    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2486
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2488
    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 2489
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2491
    :cond_2
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2492
    return-void
.end method

.method h()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 2495
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2496
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    .line 2497
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager$c;

    .line 2498
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2499
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->b:I

    .line 2501
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2502
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    .line 2504
    :cond_2
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->a:I

    .line 2505
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 2508
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->c:I

    return v0
.end method
