.class public Lcom/facebook/imagepipeline/animated/impl/c;
.super Lcom/facebook/imagepipeline/animated/base/l;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/d;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final c:Lcom/facebook/common/c/g;

.field private final d:Lcom/facebook/imagepipeline/animated/b/a;

.field private final e:Landroid/app/ActivityManager;

.field private final f:Lcom/facebook/common/time/b;

.field private final g:Lcom/facebook/imagepipeline/animated/base/c;

.field private final h:Lcom/facebook/imagepipeline/animated/base/f;

.field private final i:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

.field private final j:Lcom/facebook/common/references/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/c",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final k:D

.field private final l:D

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/support/v4/e/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/j",
            "<",
            "Lbolts/d",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final o:Landroid/support/v4/e/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/j",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final p:Lcom/facebook/imagepipeline/animated/impl/h;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/facebook/imagepipeline/animated/impl/c;

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/c/g;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/common/time/b;Lcom/facebook/imagepipeline/animated/base/c;Lcom/facebook/imagepipeline/animated/base/f;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 96
    invoke-direct {p0, p5}, Lcom/facebook/imagepipeline/animated/base/l;-><init>(Lcom/facebook/imagepipeline/animated/base/c;)V

    .line 97
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->c:Lcom/facebook/common/c/g;

    .line 98
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->e:Landroid/app/ActivityManager;

    .line 99
    iput-object p3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->d:Lcom/facebook/imagepipeline/animated/b/a;

    .line 100
    iput-object p4, p0, Lcom/facebook/imagepipeline/animated/impl/c;->f:Lcom/facebook/common/time/b;

    .line 101
    iput-object p5, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    .line 102
    iput-object p6, p0, Lcom/facebook/imagepipeline/animated/impl/c;->h:Lcom/facebook/imagepipeline/animated/base/f;

    .line 103
    iget v0, p6, Lcom/facebook/imagepipeline/animated/base/f;->d:I

    if-ltz v0, :cond_0

    iget v0, p6, Lcom/facebook/imagepipeline/animated/base/f;->d:I

    div-int/lit16 v0, v0, 0x400

    int-to-double v0, v0

    .line 105
    :goto_0
    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->k:D

    .line 106
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance v1, Lcom/facebook/imagepipeline/animated/impl/c$1;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/animated/impl/c$1;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;)V

    invoke-direct {v0, p5, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/c;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$a;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->i:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 119
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/c$2;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/impl/c$2;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->j:Lcom/facebook/common/references/c;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    .line 126
    new-instance v0, Landroid/support/v4/e/j;

    invoke-direct {v0, v2}, Landroid/support/v4/e/j;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    .line 127
    new-instance v0, Landroid/support/v4/e/j;

    invoke-direct {v0, v2}, Landroid/support/v4/e/j;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    .line 128
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/c;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/animated/impl/h;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    .line 129
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    .line 130
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->g()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    .line 131
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/c;->h()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    .line 132
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/c;->c()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->l:D

    .line 133
    return-void

    .line 105
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/animated/impl/c;->a(Landroid/app/ActivityManager;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    int-to-double v0, v0

    goto :goto_0
.end method

.method private static a(Landroid/app/ActivityManager;)I
    .locals 2
    .parameter

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 387
    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 388
    const/high16 v0, 0x50

    .line 390
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x30

    goto :goto_0
.end method

.method private a(IZ)Lcom/facebook/common/references/a;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-wide/16 v6, 0xa

    .line 246
    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->f:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v4

    .line 250
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/h;->a(IZ)V

    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->i(I)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_1

    .line 254
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->f:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 274
    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    .line 275
    const-string v0, ""

    .line 281
    const-string v0, "ok"

    .line 283
    sget-object v4, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    const-string v5, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5, v6, v2, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, v1

    .line 285
    :goto_0
    return-object v0

    .line 256
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    if-eqz p2, :cond_4

    .line 261
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->n()Lcom/facebook/common/references/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v3

    .line 263
    :try_start_4
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->i:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    invoke-virtual {v3}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a(ILandroid/graphics/Bitmap;)V

    .line 264
    invoke-direct {p0, p1, v3}, Lcom/facebook/imagepipeline/animated/impl/c;->a(ILcom/facebook/common/references/a;)V

    .line 265
    invoke-virtual {v3}, Lcom/facebook/common/references/a;->b()Lcom/facebook/common/references/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    .line 267
    :try_start_5
    invoke-virtual {v3}, Lcom/facebook/common/references/a;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 273
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->f:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 274
    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    .line 275
    const-string v0, ""

    .line 277
    const-string v0, "renderedOnCallingThread"

    .line 283
    sget-object v4, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    const-string v5, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5, v6, v2, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    move-object v0, v1

    .line 285
    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 273
    :catchall_1
    move-exception v0

    move-object v1, v0

    move v0, v3

    :goto_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->f:Lcom/facebook/common/time/b;

    invoke-interface {v2}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 274
    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    .line 275
    const-string v4, ""

    .line 276
    if-eqz v0, :cond_6

    .line 277
    const-string v0, "renderedOnCallingThread"

    .line 283
    :goto_2
    sget-object v4, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    const-string v5, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5, v6, v2, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    :cond_3
    throw v1

    .line 267
    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v3}, Lcom/facebook/common/references/a;->close()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 273
    :catchall_3
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_1

    .line 271
    :cond_4
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->f:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 274
    cmp-long v0, v2, v6

    if-lez v0, :cond_5

    .line 275
    const-string v0, ""

    .line 279
    const-string v0, "deferred"

    .line 283
    sget-object v4, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    const-string v5, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5, v6, v2, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    move-object v0, v1

    .line 285
    goto/16 :goto_0

    .line 281
    :cond_6
    const-string v0, "ok"

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/animated/impl/c;I)Lcom/facebook/common/references/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->i(I)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 403
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 404
    add-int v0, p1, v1

    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/c;->c()I

    move-result v2

    rem-int v2, v0, v2

    .line 405
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/animated/impl/c;->j(I)Z

    move-result v3

    .line 406
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    invoke-virtual {v0, v2}, Landroid/support/v4/e/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/d;

    .line 407
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/c$3;

    invoke-direct {v0, p0, v2}, Lcom/facebook/imagepipeline/animated/impl/c$3;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;I)V

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->c:Lcom/facebook/common/c/g;

    invoke-static {v0, v3}, Lbolts/d;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/d;

    move-result-object v0

    .line 416
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    invoke-virtual {v3, v2, v0}, Landroid/support/v4/e/j;->b(ILjava/lang/Object;)V

    .line 417
    new-instance v3, Lcom/facebook/imagepipeline/animated/impl/c$4;

    invoke-direct {v3, p0, v0, v2}, Lcom/facebook/imagepipeline/animated/impl/c$4;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;Lbolts/d;I)V

    invoke-virtual {v0, v3}, Lbolts/d;->a(Lbolts/c;)Lbolts/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 427
    :cond_1
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 296
    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/animated/impl/h;->a(I)Z

    move-result v1

    .line 299
    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v1, p1}, Landroid/support/v4/e/j;->a(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 302
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/c;->b(ILandroid/graphics/Bitmap;)V

    .line 306
    :cond_1
    return-void

    .line 302
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(ILcom/facebook/common/references/a;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/h;->a(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 523
    :goto_0
    monitor-exit p0

    return-void

    .line 516
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/j;->g(I)I

    move-result v1

    .line 517
    if-ltz v1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    .line 519
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 520
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->d(I)V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {p2}, Lcom/facebook/common/references/a;->b()Lcom/facebook/common/references/a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/e/j;->b(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lbolts/d;I)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/d",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    invoke-virtual {v0, p2}, Landroid/support/v4/e/j;->g(I)I

    move-result v1

    .line 468
    if-ltz v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/d;

    .line 470
    if-ne v0, p1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->d(I)V

    .line 472
    invoke-virtual {p1}, Lbolts/d;->f()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Lbolts/d;->f()Ljava/lang/Exception;

    move-result-object v1

    const-string v2, "Failed to render frame %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/animated/impl/c;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/c;->a(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/animated/impl/c;Lbolts/d;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/c;->a(Lbolts/d;I)V

    return-void
.end method

.method private declared-synchronized b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 480
    monitor-enter p0

    const/4 v1, 0x0

    .line 481
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    invoke-virtual {v0}, Landroid/support/v4/e/j;->b()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->e(I)I

    move-result v0

    .line 483
    invoke-static {p1, p2, v0}, Lcom/facebook/imagepipeline/animated/b/a;->a(III)Z

    move-result v0

    .line 484
    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/d;

    .line 486
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->n:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 491
    goto :goto_0

    .line 489
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 492
    :cond_1
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->n()Lcom/facebook/common/references/a;

    move-result-object v1

    .line 317
    :try_start_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 318
    const/4 v0, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 319
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    invoke-direct {p0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/c;->a(ILcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    .line 324
    return-void

    .line 322
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    throw v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/animated/impl/c;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->h(I)V

    return-void
.end method

.method private h(I)V
    .locals 5
    .parameter

    .prologue
    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/h;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    monitor-exit p0

    .line 464
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    monitor-exit p0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    .line 447
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->e(I)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_2

    .line 450
    :try_start_2
    invoke-direct {p0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/c;->a(ILcom/facebook/common/references/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 462
    :goto_1
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    .line 452
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->n()Lcom/facebook/common/references/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 454
    :try_start_4
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->i:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    invoke-virtual {v2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a(ILandroid/graphics/Bitmap;)V

    .line 455
    invoke-direct {p0, p1, v2}, Lcom/facebook/imagepipeline/animated/impl/c;->a(ILcom/facebook/common/references/a;)V

    .line 456
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    const-string v3, "Prefetch rendered frame %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 458
    :try_start_5
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 462
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0

    .line 458
    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private declared-synchronized i(I)Lcom/facebook/common/references/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    .line 527
    invoke-virtual {v0, p1}, Landroid/support/v4/e/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 528
    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->e(I)Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 531
    :cond_0
    monitor-exit p0

    return-object v0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(I)Z
    .locals 1
    .parameter

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    .line 536
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->f(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 146
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    const-string v1, "Creating new bitmap"

    invoke-static {v0, v1}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 148
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    const-string v1, "Total bitmaps: %d"

    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    .line 150
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->g()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    .line 151
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/c;->h()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 149
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private n()Lcom/facebook/common/references/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 330
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 331
    :goto_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 333
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v0, v2, v0

    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 334
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 337
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 341
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->j:Lcom/facebook/common/references/c;

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0

    .line 344
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized o()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->q:I

    invoke-interface {v1, v3}, Lcom/facebook/imagepipeline/animated/base/c;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 356
    iget-object v1, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v1, v3, :cond_2

    move v4, v0

    .line 358
    :goto_0
    const/4 v3, 0x0

    iget v5, p0, Lcom/facebook/imagepipeline/animated/impl/c;->q:I

    if-eqz v4, :cond_3

    move v1, v0

    :goto_1
    sub-int v1, v5, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 359
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->h:Lcom/facebook/imagepipeline/animated/base/f;

    iget-boolean v3, v3, Lcom/facebook/imagepipeline/animated/base/f;->c:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    .line 360
    :goto_2
    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 361
    add-int v0, v1, v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/c;->c()I

    move-result v3

    rem-int/2addr v0, v3

    .line 362
    invoke-direct {p0, v1, v0}, Lcom/facebook/imagepipeline/animated/impl/c;->b(II)V

    .line 364
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->p()Z

    move-result v3

    if-nez v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/animated/impl/h;->a(Z)V

    .line 366
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/imagepipeline/animated/impl/h;->a(II)V

    move v0, v1

    .line 370
    :goto_4
    if-ltz v0, :cond_0

    .line 371
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v3, v0}, Landroid/support/v4/e/j;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 372
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/facebook/imagepipeline/animated/impl/h;->a(IZ)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->q()V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->h:Lcom/facebook/imagepipeline/animated/base/f;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/animated/base/f;->c:Z

    if-eqz v0, :cond_7

    .line 379
    invoke-direct {p0, v1, v2}, Lcom/facebook/imagepipeline/animated/impl/c;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :goto_5
    monitor-exit p0

    return-void

    :cond_2
    move v4, v2

    .line 356
    goto :goto_0

    :cond_3
    move v1, v2

    .line 358
    goto :goto_1

    :cond_4
    move v3, v2

    .line 359
    goto :goto_2

    :cond_5
    move v0, v2

    .line 360
    goto :goto_3

    .line 370
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 381
    :cond_7
    :try_start_1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->q:I

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->q:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/animated/impl/c;->b(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private p()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 395
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->h:Lcom/facebook/imagepipeline/animated/base/f;

    iget-boolean v1, v1, Lcom/facebook/imagepipeline/animated/base/f;->b:Z

    if-eqz v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->l:D

    iget-wide v4, p0, Lcom/facebook/imagepipeline/animated/impl/c;->k:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized q()V
    .locals 3

    .prologue
    .line 495
    monitor-enter p0

    const/4 v1, 0x0

    .line 496
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0}, Landroid/support/v4/e/j;->b()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->e(I)I

    move-result v0

    .line 498
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/animated/impl/h;->a(I)Z

    move-result v0

    .line 499
    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    .line 501
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v2, v1}, Landroid/support/v4/e/j;->d(I)V

    .line 502
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 506
    goto :goto_0

    .line 504
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 507
    :cond_1
    monitor-exit p0

    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public synthetic a(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->b(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/graphics/Canvas;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->h:Lcom/facebook/imagepipeline/animated/base/f;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/animated/base/f;->b:Z

    if-eqz v0, :cond_1

    .line 229
    const-string v0, "Pinned To Memory"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->h:Lcom/facebook/imagepipeline/animated/base/f;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/animated/base/f;->c:Z

    if-eqz v0, :cond_0

    .line 239
    const-string v0, " MT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->l:D

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->k:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 232
    const-string v0, "within "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->d:Lcom/facebook/imagepipeline/animated/b/a;

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->k:D

    double-to-int v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/b/a;->a(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 234
    :cond_2
    const-string v0, "exceeds "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public b(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/d;
    .locals 7
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->a(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/c;

    move-result-object v5

    .line 185
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    if-ne v5, v0, :cond_0

    .line 188
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->c:Lcom/facebook/common/c/g;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/c;->e:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->d:Lcom/facebook/imagepipeline/animated/b/a;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/c;->f:Lcom/facebook/common/time/b;

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/c;->h:Lcom/facebook/imagepipeline/animated/base/f;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/animated/impl/c;-><init>(Lcom/facebook/common/c/g;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/common/time/b;Lcom/facebook/imagepipeline/animated/base/c;Lcom/facebook/imagepipeline/animated/base/f;)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected declared-synchronized finalize()V
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0}, Landroid/support/v4/e/j;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    const-string v1, "Finalizing with rendered bitmaps"

    invoke-static {v0, v1}, Lcom/facebook/common/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 141
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 142
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(I)Lcom/facebook/common/references/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iput p1, p0, Lcom/facebook/imagepipeline/animated/impl/c;->q:I

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/animated/impl/c;->a(IZ)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 165
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->o()V

    .line 166
    return-object v0
.end method

.method public j()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 212
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 215
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/c;->d:Lcom/facebook/imagepipeline/animated/b/a;

    invoke-virtual {v4, v0}, Lcom/facebook/imagepipeline/animated/b/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    add-int/2addr v2, v0

    .line 216
    goto :goto_0

    .line 217
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0}, Landroid/support/v4/e/j;->b()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->o:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    .line 219
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/c;->d:Lcom/facebook/imagepipeline/animated/b/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/animated/b/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    add-int/2addr v2, v0

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 221
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->j()I

    move-result v0

    add-int/2addr v0, v2

    .line 223
    return v0

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized k()V
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->p:Lcom/facebook/imagepipeline/animated/impl/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/animated/impl/h;->a(Z)V

    .line 200
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->q()V

    .line 201
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c;->g:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->k()V

    .line 207
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/c;->a:Ljava/lang/Class;

    const-string v1, "Total bitmaps: %d"

    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    return-void
.end method

.method public l()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/impl/c;->a()Lcom/facebook/imagepipeline/animated/base/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/j;->c()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method
