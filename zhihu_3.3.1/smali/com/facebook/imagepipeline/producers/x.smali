.class public abstract Lcom/facebook/imagepipeline/producers/x;
.super Ljava/lang/Object;
.source "LocalFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/imagepipeline/memory/w;

.field private final c:Z


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/x;->a:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/x;->b:Lcom/facebook/imagepipeline/memory/w;

    .line 45
    if-eqz p3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/x;->c:Z

    .line 47
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/f/e;
.end method

.method protected a(Ljava/io/File;I)Lcom/facebook/imagepipeline/f/e;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/facebook/imagepipeline/producers/x$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/x$3;-><init>(Lcom/facebook/imagepipeline/producers/x;Ljava/io/File;)V

    .line 135
    new-instance v1, Lcom/facebook/imagepipeline/f/e;

    invoke-direct {v1, v0, p2}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/internal/i;I)V

    return-object v1
.end method

.method protected a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/f/e;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    if-gez p2, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x;->b:Lcom/facebook/imagepipeline/memory/w;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/w;->b(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 101
    :goto_0
    new-instance v0, Lcom/facebook/imagepipeline/f/e;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {p1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    .line 104
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object v0

    .line 99
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x;->b:Lcom/facebook/imagepipeline/memory/w;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/memory/w;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    .line 104
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v3

    .line 55
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    .line 57
    new-instance v0, Lcom/facebook/imagepipeline/producers/x$1;

    .line 61
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/x;->a()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/x$1;-><init>(Lcom/facebook/imagepipeline/producers/x;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 80
    new-instance v1, Lcom/facebook/imagepipeline/producers/x$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/producers/x$2;-><init>(Lcom/facebook/imagepipeline/producers/x;Lcom/facebook/imagepipeline/producers/am;)V

    invoke-interface {p2, v1}, Lcom/facebook/imagepipeline/producers/ah;->a(Lcom/facebook/imagepipeline/producers/ai;)V

    .line 87
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/x;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method protected b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/f/e;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 113
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 114
    sub-long v0, v2, v0

    const-wide/32 v4, 0x800000

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 115
    iget-boolean v4, p0, Lcom/facebook/imagepipeline/producers/x;->c:Z

    if-eqz v4, :cond_0

    instance-of v4, p1, Ljava/io/FileInputStream;

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x40

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/x;->a(Ljava/io/File;I)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/x;->a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    goto :goto_0
.end method
