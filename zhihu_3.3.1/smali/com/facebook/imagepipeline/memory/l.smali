.class public Lcom/facebook/imagepipeline/memory/l;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source "NativeMemoryChunkPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool",
        "<",
        "Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:[I


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;Lcom/facebook/imagepipeline/memory/u;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;Lcom/facebook/imagepipeline/memory/u;)V

    .line 37
    iget-object v1, p2, Lcom/facebook/imagepipeline/memory/t;->c:Landroid/util/SparseIntArray;

    .line 38
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/l;->g:[I

    .line 39
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/l;->g:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/l;->g:[I

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/l;->a()V

    .line 43
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->close()V

    .line 71
    return-void
.end method

.method protected b(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)I
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b()I

    move-result v0

    return v0
.end method

.method protected synthetic b(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/l;->i(I)Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/l;->a(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)V

    return-void
.end method

.method protected c(I)I
    .locals 4
    .parameter

    .prologue
    .line 95
    .line 96
    if-gtz p1, :cond_0

    .line 97
    new-instance v0, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/l;->g:[I

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, v2, v1

    .line 102
    if-lt v0, p1, :cond_2

    move p1, v0

    .line 109
    :cond_1
    return p1

    .line 101
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected synthetic c(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/l;->b(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)I

    move-result v0

    return v0
.end method

.method protected c(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)Z
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/l;->g:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected d(I)I
    .locals 0
    .parameter

    .prologue
    .line 80
    return p1
.end method

.method protected synthetic d(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/l;->c(Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;)Z

    move-result v0

    return v0
.end method

.method protected i(I)Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .locals 1
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;-><init>(I)V

    return-object v0
.end method
