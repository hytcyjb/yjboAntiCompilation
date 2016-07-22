.class public Lcom/facebook/cache/disk/f;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Lcom/facebook/cache/disk/j;
.implements Lcom/facebook/common/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/f$b;,
        Lcom/facebook/cache/disk/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:J

.field private static final c:J


# instance fields
.field private final d:J

.field private final e:J

.field private f:J

.field private final g:Lcom/facebook/cache/common/CacheEventListener;

.field private h:J

.field private final i:J

.field private final j:Lcom/facebook/common/statfs/StatFsHelper;

.field private final k:Lcom/facebook/cache/disk/g;

.field private final l:Lcom/facebook/cache/disk/i;

.field private final m:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final n:Lcom/facebook/cache/disk/f$a;

.field private final o:Lcom/facebook/common/time/a;

.field private final p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    const-class v0, Lcom/facebook/cache/disk/f;

    sput-object v0, Lcom/facebook/cache/disk/f;->a:Ljava/lang/Class;

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/f;->b:J

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/f;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/g;Lcom/facebook/cache/disk/i;Lcom/facebook/cache/disk/f$b;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lcom/facebook/common/b/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/f;->p:Ljava/lang/Object;

    .line 148
    iget-wide v0, p3, Lcom/facebook/cache/disk/f$b;->b:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/f;->d:J

    .line 149
    iget-wide v0, p3, Lcom/facebook/cache/disk/f$b;->c:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/f;->e:J

    .line 150
    iget-wide v0, p3, Lcom/facebook/cache/disk/f$b;->c:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/f;->f:J

    .line 151
    invoke-static {}, Lcom/facebook/common/statfs/StatFsHelper;->a()Lcom/facebook/common/statfs/StatFsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/f;->j:Lcom/facebook/common/statfs/StatFsHelper;

    .line 153
    iput-object p1, p0, Lcom/facebook/cache/disk/f;->k:Lcom/facebook/cache/disk/g;

    .line 154
    iput-object p2, p0, Lcom/facebook/cache/disk/f;->l:Lcom/facebook/cache/disk/i;

    .line 156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/cache/disk/f;->h:J

    .line 158
    iput-object p4, p0, Lcom/facebook/cache/disk/f;->g:Lcom/facebook/cache/common/CacheEventListener;

    .line 160
    iget-wide v0, p3, Lcom/facebook/cache/disk/f$b;->a:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/f;->i:J

    .line 162
    iput-object p5, p0, Lcom/facebook/cache/disk/f;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 164
    new-instance v0, Lcom/facebook/cache/disk/f$a;

    invoke-direct {v0}, Lcom/facebook/cache/disk/f$a;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/f;->n:Lcom/facebook/cache/disk/f$a;

    .line 165
    if-eqz p6, :cond_0

    .line 166
    invoke-interface {p6, p0}, Lcom/facebook/common/b/b;->a(Lcom/facebook/common/b/a;)V

    .line 168
    :cond_0
    invoke-static {}, Lcom/facebook/common/time/c;->b()Lcom/facebook/common/time/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/f;->o:Lcom/facebook/common/time/a;

    .line 169
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/cache/common/a;)Lcom/facebook/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/facebook/cache/disk/f;->a()V

    .line 248
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->k:Lcom/facebook/cache/disk/g;

    invoke-interface {v0}, Lcom/facebook/cache/disk/g;->a()Lcom/facebook/cache/disk/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/a/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/cache/common/a;Lcom/facebook/a/b;)Lcom/facebook/a/b;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    iget-object v1, p0, Lcom/facebook/cache/disk/f;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->k:Lcom/facebook/cache/disk/g;

    invoke-interface {v0}, Lcom/facebook/cache/disk/g;->a()Lcom/facebook/cache/disk/e;

    move-result-object v0

    invoke-interface {v0, p1, p3, p2}, Lcom/facebook/cache/disk/e;->a(Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)Lcom/facebook/a/b;

    move-result-object v0

    .line 272
    iget-object v2, p0, Lcom/facebook/cache/disk/f;->n:Lcom/facebook/cache/disk/f$a;

    invoke-virtual {v0}, Lcom/facebook/a/b;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/facebook/cache/disk/f$a;->b(JJ)V

    .line 273
    monitor-exit v1

    return-object v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/cache/disk/e$a;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/cache/disk/e$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->o:Lcom/facebook/common/time/a;

    invoke-interface {v0}, Lcom/facebook/common/time/a;->a()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/cache/disk/f;->b:J

    add-long/2addr v2, v0

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 446
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cache/disk/e$a;

    .line 448
    invoke-interface {v0}, Lcom/facebook/cache/disk/e$a;->a()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_0

    .line 449
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->l:Lcom/facebook/cache/disk/i;

    invoke-interface {v0}, Lcom/facebook/cache/disk/i;->a()Lcom/facebook/cache/disk/h;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 455
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 456
    return-object v1
.end method

.method private a()V
    .locals 6

    .prologue
    .line 377
    iget-object v1, p0, Lcom/facebook/cache/disk/f;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/f;->c()Z

    move-result v0

    .line 381
    invoke-direct {p0}, Lcom/facebook/cache/disk/f;->b()V

    .line 383
    iget-object v2, p0, Lcom/facebook/cache/disk/f;->n:Lcom/facebook/cache/disk/f$a;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/f$a;->c()J

    move-result-wide v2

    .line 386
    iget-wide v4, p0, Lcom/facebook/cache/disk/f;->f:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->n:Lcom/facebook/cache/disk/f$a;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/f$a;->b()V

    .line 388
    invoke-direct {p0}, Lcom/facebook/cache/disk/f;->c()Z

    .line 392
    :cond_0
    iget-wide v4, p0, Lcom/facebook/cache/disk/f;->f:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 393
    iget-wide v2, p0, Lcom/facebook/cache/disk/f;->f:J

    const-wide/16 v4, 0x9

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    sget-object v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CACHE_FULL:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/cache/disk/f;->a(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V

    .line 397
    :cond_1
    monitor-exit v1

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/f;->k:Lcom/facebook/cache/disk/g;

    invoke-interface {v2}, Lcom/facebook/cache/disk/g;->a()Lcom/facebook/cache/disk/e;

    move-result-object v7

    .line 407
    :try_start_0
    invoke-interface {v7}, Lcom/facebook/cache/disk/e;->c()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/facebook/cache/disk/f;->a(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/f;->n:Lcom/facebook/cache/disk/f$a;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/f$a;->c()J

    move-result-wide v2

    sub-long v8, v2, p1

    .line 418
    const/4 v4, 0x0

    .line 419
    const-wide/16 v2, 0x0

    .line 420
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/cache/disk/e$a;

    .line 421
    cmp-long v6, v4, v8

    if-lez v6, :cond_1

    .line 430
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/f;->n:Lcom/facebook/cache/disk/f$a;

    neg-long v8, v4

    neg-int v6, v3

    int-to-long v10, v6

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/facebook/cache/disk/f$a;->b(JJ)V

    .line 431
    invoke-interface {v7}, Lcom/facebook/cache/disk/e;->a()V

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/facebook/cache/disk/f;->a(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;IJ)V

    .line 433
    return-void

    .line 408
    :catch_0
    move-exception v2

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/cache/disk/f;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v4, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v5, Lcom/facebook/cache/disk/f;->a:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "evictAboveSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 412
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 409
    invoke-interface {v3, v4, v5, v6, v2}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    throw v2

    .line 424
    :cond_1
    invoke-interface {v7, v2}, Lcom/facebook/cache/disk/e;->a(Lcom/facebook/cache/disk/e$a;)J

    move-result-wide v12

    .line 425
    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-lez v2, :cond_2

    .line 426
    add-int/lit8 v6, v3, 0x1

    .line 427
    add-long v2, v4, v12

    move v4, v6

    :goto_1
    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    .line 429
    goto :goto_0

    :cond_2
    move-wide/from16 v16, v4

    move v4, v3

    move-wide/from16 v2, v16

    goto :goto_1
.end method

.method private a(Lcom/facebook/a/b;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-virtual {p1}, Lcom/facebook/a/b;->c()Ljava/io/File;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/facebook/cache/disk/f;->a:Ljava/lang/Class;

    const-string v2, "Temp file still on disk: %s "

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/common/d/a;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    sget-object v1, Lcom/facebook/cache/disk/f;->a:Ljava/lang/Class;

    const-string v2, "Failed to delete temp file: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/common/d/a;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->g:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/cache/common/CacheEventListener;->a(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;IJ)V

    .line 368
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 466
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->j:Lcom/facebook/common/statfs/StatFsHelper;

    sget-object v1, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    iget-wide v2, p0, Lcom/facebook/cache/disk/f;->e:J

    iget-object v4, p0, Lcom/facebook/cache/disk/f;->n:Lcom/facebook/cache/disk/f$a;

    .line 469
    invoke-virtual {v4}, Lcom/facebook/cache/disk/f$a;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 467
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/statfs/StatFsHelper;->a(Lcom/facebook/common/statfs/StatFsHelper$StorageType;J)Z

    move-result v0

    .line 470
    if-eqz v0, :cond_0

    .line 471
    iget-wide v0, p0, Lcom/facebook/cache/disk/f;->d:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/f;->f:J

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-wide v0, p0, Lcom/facebook/cache/disk/f;->e:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/f;->f:J

    goto :goto_0
.end method

.method private c()Z
    .locals 8

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 555
    iget-object v1, p0, Lcom/facebook/cache/disk/f;->n:Lcom/facebook/cache/disk/f$a;

    invoke-virtual {v1}, Lcom/facebook/cache/disk/f$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/facebook/cache/disk/f;->h:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/facebook/cache/disk/f;->h:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/facebook/cache/disk/f;->c:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/f;->d()V

    .line 559
    iput-wide v2, p0, Lcom/facebook/cache/disk/f;->h:J

    .line 560
    const/4 v0, 0x1

    .line 562
    :cond_1
    return v0
.end method

.method private d()V
    .locals 24

    .prologue
    .line 567
    const-wide/16 v8, 0x0

    .line 568
    const/4 v2, 0x0

    .line 569
    const/4 v7, 0x0

    .line 570
    const/4 v6, 0x0

    .line 571
    const/4 v3, 0x0

    .line 572
    const-wide/16 v4, -0x1

    .line 573
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/cache/disk/f;->o:Lcom/facebook/common/time/a;

    invoke-interface {v10}, Lcom/facebook/common/time/a;->a()J

    move-result-wide v12

    .line 574
    sget-wide v10, Lcom/facebook/cache/disk/f;->b:J

    add-long v14, v12, v10

    .line 576
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/cache/disk/f;->k:Lcom/facebook/cache/disk/g;

    invoke-interface {v10}, Lcom/facebook/cache/disk/g;->a()Lcom/facebook/cache/disk/e;

    move-result-object v10

    .line 577
    invoke-interface {v10}, Lcom/facebook/cache/disk/e;->c()Ljava/util/Collection;

    move-result-object v10

    .line 578
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-wide v10, v8

    move v8, v2

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/cache/disk/e$a;

    .line 579
    add-int/lit8 v9, v8, 0x1

    .line 580
    invoke-interface {v2}, Lcom/facebook/cache/disk/e$a;->c()J

    move-result-wide v18

    add-long v10, v10, v18

    .line 583
    invoke-interface {v2}, Lcom/facebook/cache/disk/e$a;->a()J

    move-result-wide v18

    cmp-long v8, v18, v14

    if-lez v8, :cond_2

    .line 584
    const/4 v8, 0x1

    .line 585
    add-int/lit8 v7, v6, 0x1

    .line 586
    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-interface {v2}, Lcom/facebook/cache/disk/e$a;->c()J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 587
    invoke-interface {v2}, Lcom/facebook/cache/disk/e$a;->a()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move v4, v6

    move v5, v7

    move v6, v8

    :goto_1
    move v7, v6

    move v8, v9

    move v6, v5

    move-wide/from16 v22, v2

    move v3, v4

    move-wide/from16 v4, v22

    .line 589
    goto :goto_0

    .line 590
    :cond_0
    if-eqz v7, :cond_1

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/f;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v7, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->READ_INVALID_ENTRY:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v9, Lcom/facebook/cache/disk/f;->a:Ljava/lang/Class;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Future timestamp found in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " files , with a total size of "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bytes, and a maximum time delta of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v7, v9, v3, v4}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/cache/disk/f;->n:Lcom/facebook/cache/disk/f$a;

    int-to-long v4, v8

    invoke-virtual {v2, v10, v11, v4, v5}, Lcom/facebook/cache/disk/f$a;->a(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_2
    return-void

    .line 600
    :catch_0
    move-exception v2

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/cache/disk/f;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v4, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v5, Lcom/facebook/cache/disk/f;->a:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calcFileCacheSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 604
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 601
    invoke-interface {v3, v4, v5, v6, v2}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-wide/from16 v22, v4

    move v4, v3

    move v5, v6

    move-wide/from16 v2, v22

    move v6, v7

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/facebook/cache/common/a;)Lcom/facebook/a/a;
    .locals 5
    .parameter

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cache/disk/f;->p:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->k:Lcom/facebook/cache/disk/g;

    invoke-interface {v0}, Lcom/facebook/cache/disk/g;->a()Lcom/facebook/cache/disk/e;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/f;->c(Lcom/facebook/cache/common/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/facebook/cache/disk/e;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/a/b;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    iget-object v2, p0, Lcom/facebook/cache/disk/f;->g:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v2}, Lcom/facebook/cache/common/CacheEventListener;->b()V

    .line 205
    :goto_0
    monitor-exit v1

    .line 214
    :goto_1
    return-object v0

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/facebook/cache/disk/f;->g:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v2}, Lcom/facebook/cache/common/CacheEventListener;->a()V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    iget-object v1, p0, Lcom/facebook/cache/disk/f;->m:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/f;->a:Ljava/lang/Class;

    const-string v4, "getResource"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->g:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v0}, Lcom/facebook/cache/common/CacheEventListener;->d()V

    .line 214
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/facebook/cache/common/a;Lcom/facebook/cache/common/e;)Lcom/facebook/a/a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->g:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v0}, Lcom/facebook/cache/common/CacheEventListener;->c()V

    .line 282
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/f;->c(Lcom/facebook/cache/common/a;)Ljava/lang/String;

    move-result-object v0

    .line 285
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/facebook/cache/disk/f;->a(Ljava/lang/String;Lcom/facebook/cache/common/a;)Lcom/facebook/a/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 287
    :try_start_1
    iget-object v2, p0, Lcom/facebook/cache/disk/f;->k:Lcom/facebook/cache/disk/g;

    invoke-interface {v2}, Lcom/facebook/cache/disk/g;->a()Lcom/facebook/cache/disk/e;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2, p1}, Lcom/facebook/cache/disk/e;->a(Ljava/lang/String;Lcom/facebook/a/b;Lcom/facebook/cache/common/e;Ljava/lang/Object;)V

    .line 289
    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/cache/disk/f;->a(Ljava/lang/String;Lcom/facebook/cache/common/a;Lcom/facebook/a/b;)Lcom/facebook/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 291
    :try_start_2
    invoke-direct {p0, v1}, Lcom/facebook/cache/disk/f;->a(Lcom/facebook/a/b;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/facebook/cache/disk/f;->a(Lcom/facebook/a/b;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    iget-object v1, p0, Lcom/facebook/cache/disk/f;->g:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v1}, Lcom/facebook/cache/common/CacheEventListener;->e()V

    .line 295
    sget-object v1, Lcom/facebook/cache/disk/f;->a:Ljava/lang/Class;

    const-string v2, "Failed inserting a file into the cache"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    throw v0
.end method

.method public b(Lcom/facebook/cache/common/a;)Z
    .locals 2
    .parameter

    .prologue
    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/f;->k:Lcom/facebook/cache/disk/g;

    invoke-interface {v0}, Lcom/facebook/cache/disk/g;->a()Lcom/facebook/cache/disk/e;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/f;->c(Lcom/facebook/cache/common/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/cache/disk/e;->c(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 501
    :goto_0
    return v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lcom/facebook/cache/common/a;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 612
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/b;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 613
    :catch_0
    move-exception v0

    .line 615
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
