.class public Lcom/facebook/imagepipeline/memory/m;
.super Ljava/lang/Object;
.source "NativePooledByteBuffer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/PooledByteBuffer;


# instance fields
.field a:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/facebook/common/references/a;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 36
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->b()Lcom/facebook/common/references/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/m;->a:Lcom/facebook/common/references/a;

    .line 37
    iput p2, p0, Lcom/facebook/imagepipeline/memory/m;->b:I

    .line 38
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(I)B
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/m;->d()V

    .line 54
    if-ltz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 55
    iget v2, p0, Lcom/facebook/imagepipeline/memory/m;->b:I

    if-ge p1, v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/m;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(I)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 54
    goto :goto_0

    :cond_1
    move v0, v1

    .line 55
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()I
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/m;->d()V

    .line 48
    iget v0, p0, Lcom/facebook/imagepipeline/memory/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I[BII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/m;->d()V

    .line 64
    add-int v0, p1, p4

    iget v1, p0, Lcom/facebook/imagepipeline/memory/m;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/m;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b(I[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/m;->d()V

    .line 71
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/m;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->c()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/m;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/m;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/m;->a:Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer$ClosedException;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer$ClosedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_0
    monitor-exit p0

    return-void
.end method
