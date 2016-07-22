.class public Lcom/facebook/imagepipeline/c/h;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/common/memory/a;
.implements Lcom/facebook/imagepipeline/c/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/c/h$b;,
        Lcom/facebook/imagepipeline/c/h$c;,
        Lcom/facebook/imagepipeline/c/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/common/memory/a;",
        "Lcom/facebook/imagepipeline/c/p",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:J


# instance fields
.field final b:Lcom/facebook/imagepipeline/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/g",
            "<TK;",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final c:Lcom/facebook/imagepipeline/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/g",
            "<TK;",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/facebook/imagepipeline/c/q;

.field private final e:Lcom/facebook/imagepipeline/c/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/v",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/c/h$a;

.field private final g:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/imagepipeline/c/h;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/c/v;Lcom/facebook/imagepipeline/c/h$a;Lcom/facebook/common/internal/i;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/v",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/c/h$a;",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/h;->e:Lcom/facebook/imagepipeline/c/v;

    .line 129
    new-instance v0, Lcom/facebook/imagepipeline/c/g;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/h;->a(Lcom/facebook/imagepipeline/c/v;)Lcom/facebook/imagepipeline/c/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/c/g;-><init>(Lcom/facebook/imagepipeline/c/v;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    .line 130
    new-instance v0, Lcom/facebook/imagepipeline/c/g;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/h;->a(Lcom/facebook/imagepipeline/c/v;)Lcom/facebook/imagepipeline/c/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/c/g;-><init>(Lcom/facebook/imagepipeline/c/v;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    .line 131
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/h;->f:Lcom/facebook/imagepipeline/c/h$a;

    .line 132
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/h;->g:Lcom/facebook/common/internal/i;

    .line 133
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->g:Lcom/facebook/common/internal/i;

    invoke-interface {v0}, Lcom/facebook/common/internal/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/q;

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/h;->d:Lcom/facebook/imagepipeline/c/q;

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/c/h;->h:J

    .line 135
    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/imagepipeline/c/h$b;)Lcom/facebook/common/references/a;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/h;->g(Lcom/facebook/imagepipeline/c/h$b;)V

    .line 235
    iget-object v0, p1, Lcom/facebook/imagepipeline/c/h$b;->b:Lcom/facebook/common/references/a;

    .line 236
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/c/h$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/c/h$2;-><init>(Lcom/facebook/imagepipeline/c/h;Lcom/facebook/imagepipeline/c/h$b;)V

    .line 235
    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/facebook/imagepipeline/c/v;)Lcom/facebook/imagepipeline/c/v;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/v",
            "<TV;>;)",
            "Lcom/facebook/imagepipeline/c/v",
            "<",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/facebook/imagepipeline/c/h$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/c/h$1;-><init>(Lcom/facebook/imagepipeline/c/h;Lcom/facebook/imagepipeline/c/v;)V

    return-object v0
.end method

.method private declared-synchronized a(II)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 404
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 405
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 407
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/c/g;->a()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/c/g;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gt v0, v2, :cond_1

    .line 408
    const/4 v0, 0x0

    .line 416
    :cond_0
    monitor-exit p0

    return-object v0

    .line 410
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    :goto_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/c/g;->a()I

    move-result v3

    if-gt v3, v1, :cond_2

    iget-object v3, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/c/g;->b()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 412
    :cond_2
    iget-object v3, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/c/g;->c()Ljava/lang/Object;

    move-result-object v3

    .line 413
    iget-object v4, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v4, v3}, Lcom/facebook/imagepipeline/c/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v4, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v4, v3}, Lcom/facebook/imagepipeline/c/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/h;Lcom/facebook/imagepipeline/c/h$b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/h;->b(Lcom/facebook/imagepipeline/c/h$b;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/h$b;

    .line 428
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/h;->i(Lcom/facebook/imagepipeline/c/h$b;)Lcom/facebook/common/references/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/imagepipeline/c/h$b;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/h;->h(Lcom/facebook/imagepipeline/c/h$b;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/h;->c(Lcom/facebook/imagepipeline/c/h$b;)Z

    move-result v0

    .line 253
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/h;->i(Lcom/facebook/imagepipeline/c/h$b;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 254
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 256
    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/c/h;->e(Lcom/facebook/imagepipeline/c/h$b;)V

    .line 257
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/h;->c()V

    .line 258
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/h;->d()V

    .line 259
    return-void

    .line 254
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 256
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 435
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/h$b;

    .line 436
    invoke-static {v0}, Lcom/facebook/imagepipeline/c/h;->d(Lcom/facebook/imagepipeline/c/h$b;)V

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->e:Lcom/facebook/imagepipeline/c/v;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/c/v;->a(Ljava/lang/Object;)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->d:Lcom/facebook/imagepipeline/c/q;

    iget v1, v1, Lcom/facebook/imagepipeline/c/q;->e:I

    if-gt v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/h;->a()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/h;->d:Lcom/facebook/imagepipeline/c/q;

    iget v2, v2, Lcom/facebook/imagepipeline/c/q;->b:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/h;->b()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/h;->d:Lcom/facebook/imagepipeline/c/q;

    iget v2, v2, Lcom/facebook/imagepipeline/c/q;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v0, v2, v0

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 4

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/c/h;->h:J

    sget-wide v2, Lcom/facebook/imagepipeline/c/h;->a:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 371
    :goto_0
    monitor-exit p0

    return-void

    .line 369
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/c/h;->h:J

    .line 370
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->g:Lcom/facebook/common/internal/i;

    invoke-interface {v0}, Lcom/facebook/common/internal/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/q;

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/h;->d:Lcom/facebook/imagepipeline/c/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 455
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 456
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/h$b;

    .line 457
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/h;->f(Lcom/facebook/imagepipeline/c/h$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 460
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized c(Lcom/facebook/imagepipeline/c/h$b;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/c/h$b;->d:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/c/h$b;->c:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    iget-object v1, p1, Lcom/facebook/imagepipeline/c/h$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->d:Lcom/facebook/imagepipeline/c/q;

    iget v0, v0, Lcom/facebook/imagepipeline/c/q;->d:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->d:Lcom/facebook/imagepipeline/c/q;

    iget v1, v1, Lcom/facebook/imagepipeline/c/q;->b:I

    .line 384
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/h;->a()I

    move-result v2

    sub-int/2addr v1, v2

    .line 382
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->d:Lcom/facebook/imagepipeline/c/q;

    iget v1, v1, Lcom/facebook/imagepipeline/c/q;->c:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/h;->d:Lcom/facebook/imagepipeline/c/q;

    iget v2, v2, Lcom/facebook/imagepipeline/c/q;->a:I

    .line 387
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/h;->b()I

    move-result v3

    sub-int/2addr v2, v3

    .line 385
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 388
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/c/h;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 389
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/h;->c(Ljava/util/ArrayList;)V

    .line 390
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/h;->a(Ljava/util/ArrayList;)V

    .line 392
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/h;->b(Ljava/util/ArrayList;)V

    .line 393
    return-void

    .line 390
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static d(Lcom/facebook/imagepipeline/c/h$b;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 442
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h$b;->e:Lcom/facebook/imagepipeline/c/h$c;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h$b;->e:Lcom/facebook/imagepipeline/c/h$c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h$b;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/c/h$c;->a(Ljava/lang/Object;Z)V

    .line 445
    :cond_0
    return-void
.end method

.method private static e(Lcom/facebook/imagepipeline/c/h$b;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h$b;->e:Lcom/facebook/imagepipeline/c/h$c;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h$b;->e:Lcom/facebook/imagepipeline/c/h$c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h$b;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/c/h$c;->a(Ljava/lang/Object;Z)V

    .line 451
    :cond_0
    return-void
.end method

.method private declared-synchronized f(Lcom/facebook/imagepipeline/c/h$b;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 464
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-boolean v1, p1, Lcom/facebook/imagepipeline/c/h$b;->d:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->b(Z)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/imagepipeline/c/h$b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g(Lcom/facebook/imagepipeline/c/h$b;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/c/h$b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->b(Z)V

    .line 473
    iget v0, p1, Lcom/facebook/imagepipeline/c/h$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/facebook/imagepipeline/c/h$b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h(Lcom/facebook/imagepipeline/c/h$b;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 478
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget v0, p1, Lcom/facebook/imagepipeline/c/h$b;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->b(Z)V

    .line 480
    iget v0, p1, Lcom/facebook/imagepipeline/c/h$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/facebook/imagepipeline/c/h$b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i(Lcom/facebook/imagepipeline/c/h$b;)Lcom/facebook/common/references/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/c/h$b;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/c/h$b;->c:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/imagepipeline/c/h$b;->b:Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 2

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/c/g;->a()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/c/g;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/4 v2, 0x0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/h$b;

    .line 221
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/c/h$b;

    .line 222
    if-eqz v1, :cond_0

    .line 223
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/h;->a(Lcom/facebook/imagepipeline/c/h$b;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 225
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-static {v0}, Lcom/facebook/imagepipeline/c/h;->d(Lcom/facebook/imagepipeline/c/h$b;)V

    .line 227
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/h;->c()V

    .line 228
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/h;->d()V

    .line 229
    return-object v1

    .line 225
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a",
            "<TV;>;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/c/h;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/c/h$c;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/c/h$c;)Lcom/facebook/common/references/a;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/c/h$c",
            "<TK;>;)",
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/h;->c()V

    .line 179
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/h$b;

    .line 182
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/c/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/c/h$b;

    .line 183
    if-eqz v1, :cond_1

    .line 184
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/h;->f(Lcom/facebook/imagepipeline/c/h$b;)V

    .line 185
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/h;->i(Lcom/facebook/imagepipeline/c/h$b;)Lcom/facebook/common/references/a;

    move-result-object v1

    move-object v3, v1

    .line 188
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/h;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/c/h$b;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/c/h$c;)Lcom/facebook/imagepipeline/c/h$b;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v2, p1, v1}, Lcom/facebook/imagepipeline/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/h;->a(Lcom/facebook/imagepipeline/c/h$b;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 193
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-static {v3}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 195
    invoke-static {v0}, Lcom/facebook/imagepipeline/c/h;->d(Lcom/facebook/imagepipeline/c/h$b;)V

    .line 197
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/h;->d()V

    .line 198
    return-object v1

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public declared-synchronized b()I
    .locals 2

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/c/g;->b()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/c/g;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
