.class public Lcom/facebook/imagepipeline/memory/i;
.super Ljava/lang/Object;
.source "DefaultNativeMemoryChunkPoolParams.java"


# direct methods
.method public static a()Lcom/facebook/imagepipeline/memory/t;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x5

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 34
    const/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    const/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    const/16 v1, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    const v1, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    const/high16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    const/high16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    const/high16 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    const/high16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    const/high16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    new-instance v1, Lcom/facebook/imagepipeline/memory/t;

    .line 46
    invoke-static {}, Lcom/facebook/imagepipeline/memory/i;->b()I

    move-result v2

    .line 47
    invoke-static {}, Lcom/facebook/imagepipeline/memory/i;->c()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/memory/t;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v1
.end method

.method private static b()I
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 58
    const/high16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 59
    const/high16 v0, 0x30

    .line 63
    :goto_0
    return v0

    .line 60
    :cond_0
    const/high16 v1, 0x200

    if-ge v0, v1, :cond_1

    .line 61
    const/high16 v0, 0x60

    goto :goto_0

    .line 63
    :cond_1
    const/high16 v0, 0xc0

    goto :goto_0
.end method

.method private static c()I
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 73
    const/high16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 74
    div-int/lit8 v0, v0, 0x2

    .line 76
    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method
