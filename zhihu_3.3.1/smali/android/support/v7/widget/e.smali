.class Landroid/support/v7/widget/e;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroid/support/v7/widget/aa$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/e$a;,
        Landroid/support/v7/widget/e$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/e$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/e$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v7/widget/e$a;

.field d:Ljava/lang/Runnable;

.field final e:Z

.field final f:Landroid/support/v7/widget/aa;

.field private g:Landroid/support/v4/e/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/h$a",
            "<",
            "Landroid/support/v7/widget/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/e$a;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/e;-><init>(Landroid/support/v7/widget/e$a;Z)V

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/e$a;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/support/v4/e/h$b;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/e/h$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/e;->g:Landroid/support/v4/e/h$a;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/e;->h:I

    .line 77
    iput-object p1, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    .line 78
    iput-boolean p2, p0, Landroid/support/v7/widget/e;->e:Z

    .line 79
    new-instance v0, Landroid/support/v7/widget/aa;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aa;-><init>(Landroid/support/v7/widget/aa$a;)V

    iput-object v0, p0, Landroid/support/v7/widget/e;->f:Landroid/support/v7/widget/aa;

    .line 80
    return-void
.end method

.method private b(Landroid/support/v7/widget/e$b;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v7/widget/e;->g(Landroid/support/v7/widget/e$b;)V

    .line 132
    return-void
.end method

.method private c(Landroid/support/v7/widget/e$b;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    iget v7, p1, Landroid/support/v7/widget/e$b;->b:I

    .line 137
    iget v0, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/e$b;->d:I

    add-int v4, v0, v3

    .line 138
    const/4 v5, -0x1

    .line 139
    iget v3, p1, Landroid/support/v7/widget/e$b;->b:I

    move v6, v2

    :goto_0
    if-ge v3, v4, :cond_3

    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/e$a;->a(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    if-nez v5, :cond_7

    .line 152
    invoke-virtual {p0, v8, v7, v6, v9}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v0

    .line 153
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->e(Landroid/support/v7/widget/e$b;)V

    move v0, v1

    :goto_1
    move v5, v1

    .line 169
    :goto_2
    if-eqz v0, :cond_2

    .line 170
    sub-int v0, v3, v6

    .line 171
    sub-int v3, v4, v6

    move v4, v1

    .line 139
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v6, v4

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 160
    :cond_1
    if-ne v5, v1, :cond_6

    .line 163
    invoke-virtual {p0, v8, v7, v6, v9}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v0

    .line 164
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->g(Landroid/support/v7/widget/e$b;)V

    move v0, v1

    :goto_4
    move v5, v2

    .line 167
    goto :goto_2

    .line 174
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v10, v3

    move v3, v4

    move v4, v0

    move v0, v10

    goto :goto_3

    .line 177
    :cond_3
    iget v0, p1, Landroid/support/v7/widget/e$b;->d:I

    if-eq v6, v0, :cond_4

    .line 178
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    .line 179
    invoke-virtual {p0, v8, v7, v6, v9}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object p1

    .line 181
    :cond_4
    if-nez v5, :cond_5

    .line 182
    invoke-direct {p0, p1}, Landroid/support/v7/widget/e;->e(Landroid/support/v7/widget/e$b;)V

    .line 186
    :goto_5
    return-void

    .line 184
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/widget/e;->g(Landroid/support/v7/widget/e$b;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private d(II)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 331
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-ltz v4, :cond_e

    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    .line 334
    iget v2, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v2, v7, :cond_a

    .line 336
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    if-ge v2, v3, :cond_2

    .line 337
    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    .line 338
    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    .line 343
    :goto_1
    if-lt v1, v3, :cond_7

    if-gt v1, v2, :cond_7

    .line 345
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ne v3, v2, :cond_4

    .line 346
    if-ne p2, v5, :cond_3

    .line 347
    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    .line 352
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 332
    :cond_1
    :goto_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 340
    :cond_2
    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    .line 341
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    goto :goto_1

    .line 348
    :cond_3
    if-ne p2, v6, :cond_0

    .line 349
    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    goto :goto_2

    .line 354
    :cond_4
    if-ne p2, v5, :cond_6

    .line 355
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    .line 360
    :cond_5
    :goto_5
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 356
    :cond_6
    if-ne p2, v6, :cond_5

    .line 357
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    goto :goto_5

    .line 362
    :cond_7
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ge v1, v2, :cond_9

    .line 364
    if-ne p2, v5, :cond_8

    .line 365
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    .line 366
    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    move v0, v1

    goto :goto_3

    .line 367
    :cond_8
    if-ne p2, v6, :cond_9

    .line 368
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    .line 369
    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    :cond_9
    move v0, v1

    goto :goto_3

    .line 373
    :cond_a
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    if-gt v2, v1, :cond_c

    .line 374
    iget v2, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v2, v5, :cond_b

    .line 375
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v1, v0

    goto :goto_4

    .line 376
    :cond_b
    iget v2, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v2, v6, :cond_1

    .line 377
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v1, v0

    goto :goto_4

    .line 380
    :cond_c
    if-ne p2, v5, :cond_d

    .line 381
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    goto :goto_4

    .line 382
    :cond_d
    if-ne p2, v6, :cond_1

    .line 383
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    goto :goto_4

    .line 396
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_6
    if-ltz v2, :cond_12

    .line 397
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    .line 398
    iget v3, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v3, v7, :cond_11

    .line 399
    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    if-eq v3, v4, :cond_f

    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    if-gez v3, :cond_10

    .line 400
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    .line 396
    :cond_10
    :goto_7
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_6

    .line 403
    :cond_11
    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    if-gtz v3, :cond_10

    .line 404
    iget-object v3, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 405
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    goto :goto_7

    .line 408
    :cond_12
    return v1
.end method

.method private d(Landroid/support/v7/widget/e$b;)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 189
    iget v2, p1, Landroid/support/v7/widget/e$b;->b:I

    .line 191
    iget v0, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/e$b;->d:I

    add-int v6, v0, v3

    .line 192
    const/4 v0, -0x1

    .line 193
    iget v3, p1, Landroid/support/v7/widget/e$b;->b:I

    move v5, v0

    move v0, v1

    :goto_0
    if-ge v3, v6, :cond_4

    .line 194
    iget-object v7, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v7, v3}, Landroid/support/v7/widget/e$a;->a(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 195
    if-nez v7, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/e;->d(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    :cond_0
    if-nez v5, :cond_1

    .line 197
    iget-object v5, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->e(Landroid/support/v7/widget/e$b;)V

    move v0, v1

    move v2, v3

    :cond_1
    move v5, v2

    move v2, v0

    move v0, v4

    .line 214
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 193
    add-int/lit8 v3, v3, 0x1

    move v9, v0

    move v0, v2

    move v2, v5

    move v5, v9

    goto :goto_0

    .line 205
    :cond_2
    if-ne v5, v4, :cond_3

    .line 206
    iget-object v5, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v0

    .line 208
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->g(Landroid/support/v7/widget/e$b;)V

    move v0, v1

    move v2, v3

    :cond_3
    move v5, v2

    move v2, v0

    move v0, v1

    .line 212
    goto :goto_1

    .line 216
    :cond_4
    iget v1, p1, Landroid/support/v7/widget/e$b;->d:I

    if-eq v0, v1, :cond_5

    .line 217
    iget-object v1, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    .line 218
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    .line 219
    invoke-virtual {p0, v8, v2, v0, v1}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object p1

    .line 221
    :cond_5
    if-nez v5, :cond_6

    .line 222
    invoke-direct {p0, p1}, Landroid/support/v7/widget/e;->e(Landroid/support/v7/widget/e$b;)V

    .line 226
    :goto_2
    return-void

    .line 224
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/e;->g(Landroid/support/v7/widget/e$b;)V

    goto :goto_2
.end method

.method private d(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 412
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 413
    :goto_0
    if-ge v3, v4, :cond_3

    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    .line 415
    iget v5, v0, Landroid/support/v7/widget/e$b;->a:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 416
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/e;->a(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    move v0, v1

    .line 429
    :goto_1
    return v0

    .line 419
    :cond_0
    iget v5, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v5, v1, :cond_2

    .line 421
    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v6, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v5, v6

    .line 422
    iget v0, v0, Landroid/support/v7/widget/e$b;->b:I

    :goto_2
    if-ge v0, v5, :cond_2

    .line 423
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/e;->a(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    move v0, v1

    .line 424
    goto :goto_1

    .line 422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 413
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 429
    goto :goto_1
.end method

.method private e(Landroid/support/v7/widget/e$b;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 232
    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    iget v0, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/e$b;->a:I

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/e;->d(II)I

    move-result v4

    .line 251
    iget v3, p1, Landroid/support/v7/widget/e$b;->b:I

    .line 253
    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 261
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    :goto_0
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, v1

    .line 263
    :goto_1
    iget v7, p1, Landroid/support/v7/widget/e$b;->d:I

    if-ge v3, v7, :cond_6

    .line 264
    iget v7, p1, Landroid/support/v7/widget/e$b;->b:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    .line 265
    iget v8, p1, Landroid/support/v7/widget/e$b;->a:I

    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/e;->d(II)I

    move-result v8

    .line 270
    iget v7, p1, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v7, :pswitch_data_1

    :pswitch_2
    move v7, v2

    .line 278
    :goto_2
    if-eqz v7, :cond_4

    .line 279
    add-int/lit8 v5, v5, 0x1

    .line 263
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_3
    move v0, v2

    .line 259
    goto :goto_0

    .line 272
    :pswitch_4
    add-int/lit8 v7, v6, 0x1

    if-ne v8, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_2

    .line 275
    :pswitch_5
    if-ne v8, v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_2

    .line 282
    :cond_4
    iget v7, p1, Landroid/support/v7/widget/e$b;->a:I

    iget-object v9, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6, v5, v9}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v6

    .line 286
    invoke-virtual {p0, v6, v4}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;I)V

    .line 287
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    .line 288
    iget v6, p1, Landroid/support/v7/widget/e$b;->a:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 289
    add-int/2addr v4, v5

    :cond_5
    move v5, v1

    move v6, v8

    .line 292
    goto :goto_3

    .line 295
    :cond_6
    iget-object v0, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    .line 296
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    .line 297
    if-lez v5, :cond_7

    .line 298
    iget v1, p1, Landroid/support/v7/widget/e$b;->a:I

    invoke-virtual {p0, v1, v6, v5, v0}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v0

    .line 302
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;I)V

    .line 303
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    .line 313
    :cond_7
    return-void

    .line 253
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private f(Landroid/support/v7/widget/e$b;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1}, Landroid/support/v7/widget/e;->g(Landroid/support/v7/widget/e$b;)V

    .line 434
    return-void
.end method

.method private g(Landroid/support/v7/widget/e$b;)V
    .locals 4
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 456
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/e$a;->c(II)V

    .line 458
    :goto_0
    return-void

    .line 446
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/e$a;->d(II)V

    goto :goto_0

    .line 449
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/e$a;->b(II)V

    goto :goto_0

    .line 453
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/e$b;->d:I

    iget-object v3, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/e$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 474
    :goto_0
    if-ge p2, v2, :cond_4

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    .line 476
    iget v3, v0, Landroid/support/v7/widget/e$b;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 477
    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ne v3, v1, :cond_1

    .line 478
    iget v1, v0, Landroid/support/v7/widget/e$b;->d:I

    .line 474
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 480
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ge v3, v1, :cond_2

    .line 481
    add-int/lit8 v1, v1, -0x1

    .line 483
    :cond_2
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    if-gt v0, v1, :cond_0

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 487
    :cond_3
    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    if-gt v3, v1, :cond_0

    .line 488
    iget v3, v0, Landroid/support/v7/widget/e$b;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 489
    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v4, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 490
    const/4 v1, -0x1

    .line 498
    :cond_4
    return v1

    .line 492
    :cond_5
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 493
    :cond_6
    iget v3, v0, Landroid/support/v7/widget/e$b;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 494
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 719
    iget-object v0, p0, Landroid/support/v7/widget/e;->g:Landroid/support/v4/e/h$a;

    invoke-interface {v0}, Landroid/support/v4/e/h$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    .line 720
    if-nez v0, :cond_0

    .line 721
    new-instance v0, Landroid/support/v7/widget/e$b;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/e$b;-><init>(IIILjava/lang/Object;)V

    .line 728
    :goto_0
    return-object v0

    .line 723
    :cond_0
    iput p1, v0, Landroid/support/v7/widget/e$b;->a:I

    .line 724
    iput p2, v0, Landroid/support/v7/widget/e$b;->b:I

    .line 725
    iput p3, v0, Landroid/support/v7/widget/e$b;->d:I

    .line 726
    iput-object p4, v0, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method a()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/util/List;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/e;->h:I

    .line 91
    return-void
.end method

.method public a(Landroid/support/v7/widget/e$b;)V
    .locals 1
    .parameter

    .prologue
    .line 733
    iget-boolean v0, p0, Landroid/support/v7/widget/e;->e:Z

    if-nez v0, :cond_0

    .line 734
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    .line 735
    iget-object v0, p0, Landroid/support/v7/widget/e;->g:Landroid/support/v4/e/h$a;

    invoke-interface {v0, p1}, Landroid/support/v4/e/h$a;->a(Ljava/lang/Object;)Z

    .line 737
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/e$b;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/e$a;->a(Landroid/support/v7/widget/e$b;)V

    .line 317
    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 325
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/e$a;->a(II)V

    .line 328
    :goto_0
    return-void

    .line 322
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->d:I

    iget-object v2, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroid/support/v7/widget/e$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/e$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 741
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 742
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    .line 741
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 744
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 745
    return-void
.end method

.method a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 465
    iget v0, p0, Landroid/support/v7/widget/e;->h:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(IILjava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 505
    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget v1, p0, Landroid/support/v7/widget/e;->h:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/support/v7/widget/e;->h:I

    .line 507
    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)I
    .locals 1
    .parameter

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/e;->a(II)I

    move-result v0

    return v0
.end method

.method b()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/e;->f:Landroid/support/v7/widget/aa;

    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aa;->a(Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 96
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    .line 98
    iget v3, v0, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v3, :pswitch_data_0

    .line 112
    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->f(Landroid/support/v7/widget/e$b;)V

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->c(Landroid/support/v7/widget/e$b;)V

    goto :goto_1

    .line 106
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->d(Landroid/support/v7/widget/e$b;)V

    goto :goto_1

    .line 109
    :pswitch_4
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->b(Landroid/support/v7/widget/e$b;)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    return-void

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method b(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 514
    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget v1, p0, Landroid/support/v7/widget/e;->h:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/e;->h:I

    .line 516
    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 6
    .parameter

    .prologue
    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 581
    const/4 v0, 0x0

    move v2, v0

    move v1, p1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 582
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    .line 583
    iget v4, v0, Landroid/support/v7/widget/e$b;->a:I

    sparse-switch v4, :sswitch_data_0

    .line 581
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 585
    :sswitch_0
    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    if-gt v4, v1, :cond_0

    .line 586
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v1, v0

    goto :goto_1

    .line 590
    :sswitch_1
    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    if-gt v4, v1, :cond_0

    .line 591
    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v5, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v4, v5

    .line 592
    if-le v4, v1, :cond_2

    .line 593
    const/4 v1, -0x1

    .line 612
    :cond_1
    return v1

    .line 595
    :cond_2
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v1, v0

    .line 596
    goto :goto_1

    .line 599
    :sswitch_2
    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ne v4, v1, :cond_3

    .line 600
    iget v1, v0, Landroid/support/v7/widget/e$b;->d:I

    goto :goto_1

    .line 602
    :cond_3
    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ge v4, v1, :cond_4

    .line 603
    add-int/lit8 v1, v1, -0x1

    .line 605
    :cond_4
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    if-gt v0, v1, :cond_0

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 583
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 121
    :goto_0
    if-ge v1, v3, :cond_0

    .line 122
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/util/List;)V

    .line 125
    iput v2, p0, Landroid/support/v7/widget/e;->h:I

    .line 126
    return-void
.end method

.method c(II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 523
    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, p2, v3}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget v1, p0, Landroid/support/v7/widget/e;->h:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/e;->h:I

    .line 525
    iget-object v1, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 549
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->c()V

    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 551
    :goto_0
    if-ge v1, v3, :cond_1

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    .line 553
    iget v4, v0, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v4, :pswitch_data_0

    .line 571
    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 551
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 555
    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    .line 556
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/e$a;->c(II)V

    goto :goto_1

    .line 559
    :pswitch_2
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    .line 560
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/e$a;->a(II)V

    goto :goto_1

    .line 563
    :pswitch_3
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    .line 564
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v6, v0, Landroid/support/v7/widget/e$b;->d:I

    iget-object v0, v0, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v0}, Landroid/support/v7/widget/e$a;->a(IILjava/lang/Object;)V

    goto :goto_1

    .line 567
    :pswitch_4
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    .line 568
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/e$a;->d(II)V

    goto :goto_1

    .line 575
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/util/List;)V

    .line 576
    iput v2, p0, Landroid/support/v7/widget/e;->h:I

    .line 577
    return-void

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method f()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
