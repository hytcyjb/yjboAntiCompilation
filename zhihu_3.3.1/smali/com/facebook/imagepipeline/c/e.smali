.class public Lcom/facebook/imagepipeline/c/e;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/cache/disk/j;

.field private final c:Lcom/facebook/imagepipeline/memory/w;

.field private final d:Lcom/facebook/imagepipeline/memory/z;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lcom/facebook/imagepipeline/c/n;

.field private final mStagingArea:Lcom/facebook/imagepipeline/c/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/imagepipeline/c/e;

    sput-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/j;Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/memory/z;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/n;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/cache/disk/j;

    .line 57
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/e;->c:Lcom/facebook/imagepipeline/memory/w;

    .line 58
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/e;->d:Lcom/facebook/imagepipeline/memory/z;

    .line 59
    iput-object p4, p0, Lcom/facebook/imagepipeline/c/e;->e:Ljava/util/concurrent/Executor;

    .line 60
    iput-object p5, p0, Lcom/facebook/imagepipeline/c/e;->f:Ljava/util/concurrent/Executor;

    .line 61
    iput-object p6, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/n;

    .line 62
    invoke-static {}, Lcom/facebook/imagepipeline/c/u;->a()Lcom/facebook/imagepipeline/c/u;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/e;->mStagingArea:Lcom/facebook/imagepipeline/c/u;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/u;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->mStagingArea:Lcom/facebook/imagepipeline/c/u;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/e;->b(Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private a(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 342
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "About to write to disk-cache for key %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/cache/disk/j;

    new-instance v1, Lcom/facebook/imagepipeline/c/e$4;

    invoke-direct {v1, p0, p2}, Lcom/facebook/imagepipeline/c/e$4;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/f/e;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/cache/disk/j;->a(Lcom/facebook/cache/common/a;Lcom/facebook/cache/common/e;)Lcom/facebook/a/a;

    .line 352
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "Successful disk-cache write for key %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 356
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Failed to write to disk-cache for key %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/common/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/n;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/n;

    return-object v0
.end method

.method private b(Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 6
    .parameter

    .prologue
    .line 303
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "Disk cache read for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/cache/disk/j;

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/j;->a(Lcom/facebook/cache/common/a;)Lcom/facebook/a/a;

    move-result-object v0

    .line 306
    if-nez v0, :cond_0

    .line 307
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "Disk cache miss for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/n;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/n;->j()V

    .line 309
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    .line 311
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Found entry in disk cache for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/n;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/c/n;->i()V

    .line 316
    invoke-interface {v0}, Lcom/facebook/a/a;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 318
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/c/e;->c:Lcom/facebook/imagepipeline/memory/w;

    invoke-interface {v0}, Lcom/facebook/a/a;->b()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-interface {v2, v1, v0}, Lcom/facebook/imagepipeline/memory/w;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 320
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 323
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Successful read from disk cache for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 329
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Exception reading from cache for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/common/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/n;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/c/n;->k()V

    .line 331
    throw v0

    .line 320
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/cache/disk/j;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->b:Lcom/facebook/cache/disk/j;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/memory/z;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->d:Lcom/facebook/imagepipeline/memory/z;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/cache/common/a;)Lbolts/d;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/a;",
            ")",
            "Lbolts/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->mStagingArea:Lcom/facebook/imagepipeline/c/u;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/u;->a(Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/e;->close()V

    .line 78
    sget-object v0, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v1, "Found image for %s in staging area"

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/n;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/n;->g()V

    .line 80
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbolts/d;->a(Ljava/lang/Object;)Lbolts/d;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 84
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/c/e$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/c/e$1;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;)V

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lbolts/d;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Failed to schedule disk-cache read for %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 113
    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 109
    invoke-static {v1, v0, v2, v3}, Lcom/facebook/common/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {v0}, Lbolts/d;->a(Ljava/lang/Exception;)Lbolts/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/cache/common/a;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/d;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/a;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/d",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->mStagingArea:Lcom/facebook/imagepipeline/c/u;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/u;->a(Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Found image for %s in staging area"

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->g:Lcom/facebook/imagepipeline/c/n;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/c/n;->g()V

    .line 134
    invoke-static {v0}, Lbolts/d;->a(Ljava/lang/Object;)Lbolts/d;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 138
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/c/e$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/imagepipeline/c/e$2;-><init>(Lcom/facebook/imagepipeline/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/a;)V

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lbolts/d;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 182
    sget-object v1, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v2, "Failed to schedule disk-cache read for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 186
    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 182
    invoke-static {v1, v0, v2, v3}, Lcom/facebook/common/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-static {v0}, Lbolts/d;->a(Ljava/lang/Exception;)Lbolts/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p2}, Lcom/facebook/imagepipeline/f/e;->e(Lcom/facebook/imagepipeline/f/e;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 207
    if-eqz p3, :cond_0

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)V

    .line 247
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->mStagingArea:Lcom/facebook/imagepipeline/c/u;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/c/u;->a(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)V

    .line 218
    invoke-static {p2}, Lcom/facebook/imagepipeline/f/e;->a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/facebook/imagepipeline/c/e$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/facebook/imagepipeline/c/e$3;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 242
    sget-object v2, Lcom/facebook/imagepipeline/c/e;->a:Ljava/lang/Class;

    const-string v3, "Failed to schedule disk-cache write for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/common/d/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e;->mStagingArea:Lcom/facebook/imagepipeline/c/u;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/c/u;->b(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)Z

    .line 244
    invoke-static {v1}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V

    goto :goto_0
.end method
