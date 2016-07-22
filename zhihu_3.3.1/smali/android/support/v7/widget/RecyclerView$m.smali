.class public Landroid/support/v7/widget/RecyclerView$m;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseIntArray;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4317
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    .line 4319
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/util/SparseIntArray;

    .line 4320
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$m;->c:I

    return-void
.end method

.method private b(I)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4407
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4408
    if-nez v0, :cond_0

    .line 4409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4410
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4411
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 4412
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4415
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .parameter

    .prologue
    .line 4339
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4340
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4341
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 4342
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 4343
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4346
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$m;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4326
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 4361
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j()I

    move-result v0

    .line 4362
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$m;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 4363
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 4371
    :goto_0
    return-void

    .line 4369
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->x()V

    .line 4370
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 1
    .parameter

    .prologue
    .line 4374
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$m;->c:I

    .line 4375
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4395
    if-eqz p1, :cond_0

    .line 4396
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->b()V

    .line 4398
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$m;->c:I

    if-nez v0, :cond_1

    .line 4399
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$m;->a()V

    .line 4401
    :cond_1
    if-eqz p2, :cond_2

    .line 4402
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 4404
    :cond_2
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 4378
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$m;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$m;->c:I

    .line 4379
    return-void
.end method
