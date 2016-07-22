.class public Lcom/facebook/imagepipeline/d/c;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# static fields
.field private static final a:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final b:Lcom/facebook/imagepipeline/d/h;

.field private final c:Lcom/facebook/imagepipeline/g/b;

.field private final d:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/c/e;

.field private final h:Lcom/facebook/imagepipeline/c/f;

.field private final i:Lcom/facebook/imagepipeline/producers/ap;

.field private j:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mMainBufferedDiskCache:Lcom/facebook/imagepipeline/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/d/c;->a:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/d/h;Ljava/util/Set;Lcom/facebook/common/internal/i;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ap;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/d/h;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/g/b;",
            ">;",
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;",
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/producers/ap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/c;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/c;->b:Lcom/facebook/imagepipeline/d/h;

    .line 85
    new-instance v0, Lcom/facebook/imagepipeline/g/a;

    invoke-direct {v0, p2}, Lcom/facebook/imagepipeline/g/a;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/c;->c:Lcom/facebook/imagepipeline/g/b;

    .line 86
    iput-object p3, p0, Lcom/facebook/imagepipeline/d/c;->d:Lcom/facebook/common/internal/i;

    .line 87
    iput-object p4, p0, Lcom/facebook/imagepipeline/d/c;->e:Lcom/facebook/imagepipeline/c/p;

    .line 88
    iput-object p5, p0, Lcom/facebook/imagepipeline/d/c;->f:Lcom/facebook/imagepipeline/c/p;

    .line 89
    iput-object p6, p0, Lcom/facebook/imagepipeline/d/c;->mMainBufferedDiskCache:Lcom/facebook/imagepipeline/c/e;

    .line 90
    iput-object p7, p0, Lcom/facebook/imagepipeline/d/c;->g:Lcom/facebook/imagepipeline/c/e;

    .line 91
    iput-object p8, p0, Lcom/facebook/imagepipeline/d/c;->h:Lcom/facebook/imagepipeline/c/f;

    .line 92
    iput-object p9, p0, Lcom/facebook/imagepipeline/d/c;->i:Lcom/facebook/imagepipeline/producers/ap;

    .line 93
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 481
    .line 483
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    .line 482
    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 485
    new-instance v0, Lcom/facebook/imagepipeline/producers/al;

    .line 487
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/c;->c:Lcom/facebook/imagepipeline/g/b;

    const/4 v6, 0x0

    .line 492
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/util/d;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 494
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v8

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/al;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 495
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/c;->c:Lcom/facebook/imagepipeline/g/b;

    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/e/c;->a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/al;Lcom/facebook/imagepipeline/g/b;)Lcom/facebook/datasource/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-static {v0}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/d/c;)Lcom/facebook/imagepipeline/c/e;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/c;->g:Lcom/facebook/imagepipeline/c/e;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/c;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    .line 512
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    .line 511
    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 514
    new-instance v0, Lcom/facebook/imagepipeline/producers/al;

    .line 516
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/c;->c:Lcom/facebook/imagepipeline/g/b;

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/al;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 523
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/c;->c:Lcom/facebook/imagepipeline/g/b;

    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/e/d;->a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/al;Lcom/facebook/imagepipeline/g/b;)Lcom/facebook/datasource/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    invoke-static {v0}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    .line 539
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    .line 538
    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 541
    new-instance v0, Lcom/facebook/imagepipeline/producers/al;

    .line 543
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/c;->c:Lcom/facebook/imagepipeline/g/b;

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/al;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 550
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/c;->c:Lcom/facebook/imagepipeline/g/b;

    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/e/d;->a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/al;Lcom/facebook/imagepipeline/g/b;)Lcom/facebook/datasource/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 555
    :goto_0
    return-object v0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    invoke-static {v0}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/facebook/datasource/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/d/c;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/b;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/c;->h:Lcom/facebook/imagepipeline/c/f;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/c/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;

    move-result-object v0

    .line 452
    invoke-static {}, Lcom/facebook/datasource/g;->j()Lcom/facebook/datasource/g;

    move-result-object v1

    .line 453
    iget-object v2, p0, Lcom/facebook/imagepipeline/d/c;->mMainBufferedDiskCache:Lcom/facebook/imagepipeline/c/e;

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/a;)Lbolts/d;

    move-result-object v2

    new-instance v3, Lcom/facebook/imagepipeline/d/c$2;

    invoke-direct {v3, p0, v0}, Lcom/facebook/imagepipeline/d/c$2;-><init>(Lcom/facebook/imagepipeline/d/c;Lcom/facebook/cache/common/a;)V

    .line 454
    invoke-virtual {v2, v3}, Lbolts/d;->b(Lbolts/c;)Lbolts/d;

    move-result-object v0

    new-instance v2, Lcom/facebook/imagepipeline/d/c$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/imagepipeline/d/c$1;-><init>(Lcom/facebook/imagepipeline/d/c;Lcom/facebook/datasource/g;)V

    .line 464
    invoke-virtual {v0, v2}, Lbolts/d;->a(Lbolts/c;)Lbolts/d;

    .line 472
    return-object v1
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/c;->b:Lcom/facebook/imagepipeline/d/h;

    .line 172
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/d/h;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 173
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/facebook/imagepipeline/d/c;->a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-static {v0}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/c;->b:Lcom/facebook/imagepipeline/d/h;

    .line 195
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/d/h;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 196
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/facebook/imagepipeline/d/c;->a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-static {v0}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/c;->d:Lcom/facebook/common/internal/i;

    invoke-interface {v0}, Lcom/facebook/common/internal/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lcom/facebook/imagepipeline/d/c;->a:Ljava/util/concurrent/CancellationException;

    invoke-static {v0}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 257
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/c;->b:Lcom/facebook/imagepipeline/d/h;

    .line 258
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/d/h;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/facebook/imagepipeline/d/c;->b(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-static {v0}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/c;->b:Lcom/facebook/imagepipeline/d/h;

    .line 298
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 307
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 310
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/facebook/imagepipeline/d/c;->c(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    invoke-static {v0}, Lcom/facebook/datasource/c;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    move-result-object v0

    goto :goto_0
.end method
