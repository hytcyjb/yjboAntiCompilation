.class public Landroid/support/design/widget/CoordinatorLayout$e;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:Landroid/support/design/widget/CoordinatorLayout$b;

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field final i:Landroid/graphics/Rect;

.field j:Ljava/lang/Object;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2264
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2224
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    .line 2231
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    .line 2237
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    .line 2244
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    .line 2250
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->i:Landroid/graphics/Rect;

    .line 2265
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2268
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2224
    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    .line 2231
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    .line 2237
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    .line 2244
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    .line 2250
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->i:Landroid/graphics/Rect;

    .line 2270
    sget-object v0, Landroid/support/design/a$i;->CoordinatorLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2273
    sget v1, Landroid/support/design/a$i;->CoordinatorLayout_LayoutParams_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    .line 2276
    sget v1, Landroid/support/design/a$i;->CoordinatorLayout_LayoutParams_layout_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    .line 2278
    sget v1, Landroid/support/design/a$i;->CoordinatorLayout_LayoutParams_layout_anchorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    .line 2282
    sget v1, Landroid/support/design/a$i;->CoordinatorLayout_LayoutParams_layout_keyline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    .line 2285
    sget v1, Landroid/support/design/a$i;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    .line 2287
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    if-eqz v1, :cond_0

    .line 2288
    sget v1, Landroid/support/design/a$i;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    .line 2292
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2293
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout$e;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2296
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2224
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    .line 2231
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    .line 2237
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    .line 2244
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    .line 2250
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->i:Landroid/graphics/Rect;

    .line 2297
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2304
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2224
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    .line 2231
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    .line 2237
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    .line 2244
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    .line 2250
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->i:Landroid/graphics/Rect;

    .line 2305
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2300
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2224
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    .line 2231
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->c:I

    .line 2237
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->d:I

    .line 2244
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->e:I

    .line 2250
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->i:Landroid/graphics/Rect;

    .line 2301
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2515
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    .line 2516
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2517
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    if-ne v0, p2, :cond_1

    .line 2518
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2519
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    .line 2552
    :goto_0
    return-void

    .line 2522
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2526
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    .line 2527
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2528
    :goto_1
    if-eq v1, p2, :cond_5

    if-eqz v1, :cond_5

    .line 2530
    if-ne v1, p1, :cond_3

    .line 2531
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2532
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    goto :goto_0

    .line 2535
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2538
    :cond_3
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 2539
    check-cast v0, Landroid/view/View;

    .line 2529
    :cond_4
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 2542
    :cond_5
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:Landroid/view/View;

    goto :goto_0

    .line 2544
    :cond_6
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2545
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    goto :goto_0

    .line 2548
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2560
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 2577
    :goto_0
    return v0

    .line 2564
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    .line 2565
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2566
    :goto_1
    if-eq v1, p2, :cond_4

    .line 2568
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_2

    .line 2569
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    move v0, v2

    .line 2570
    goto :goto_0

    .line 2572
    :cond_2
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 2573
    check-cast v0, Landroid/view/View;

    .line 2567
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 2576
    :cond_4
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:Landroid/view/View;

    .line 2577
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2313
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    return v0
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 2363
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2364
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout$b;)V
    .locals 1
    .parameter

    .prologue
    .line 2351
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eq v0, p1, :cond_0

    .line 2352
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    .line 2353
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->j:Ljava/lang/Object;

    .line 2354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->b:Z

    .line 2356
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2433
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->l:Z

    .line 2434
    return-void
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2408
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->k:Z

    if-eqz v0, :cond_0

    .line 2409
    const/4 v0, 0x1

    .line 2412
    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->k:Z

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;->e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->k:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2461
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:Landroid/view/View;

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

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

.method public b()Landroid/support/design/widget/CoordinatorLayout$b;
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    return-object v0
.end method

.method b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2485
    iget v1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2486
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->h:Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    .line 2493
    :goto_0
    return-object v0

    .line 2490
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$e;->b(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2491
    :cond_1
    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V

    .line 2493
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    goto :goto_0
.end method

.method b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2445
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$e;->m:Z

    .line 2446
    return-void
.end method

.method c()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 2379
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->g:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 2390
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    if-nez v0, :cond_0

    .line 2391
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->k:Z

    .line 2393
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->k:Z

    return v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 2425
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->k:Z

    .line 2426
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 2429
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->l:Z

    .line 2430
    return-void
.end method

.method h()Z
    .locals 1

    .prologue
    .line 2437
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->l:Z

    return v0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 2441
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->m:Z

    return v0
.end method

.method j()V
    .locals 1

    .prologue
    .line 2449
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$e;->m:Z

    .line 2450
    return-void
.end method
