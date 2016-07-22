.class public Lcom/facebook/imagepipeline/f/e;
.super Ljava/lang/Object;
.source "EncodedImage.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/imageformat/ImageFormat;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/i;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/io/FileInputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/e;->c:Lcom/facebook/imageformat/ImageFormat;

    .line 60
    iput v1, p0, Lcom/facebook/imagepipeline/f/e;->d:I

    .line 61
    iput v1, p0, Lcom/facebook/imagepipeline/f/e;->e:I

    .line 62
    iput v1, p0, Lcom/facebook/imagepipeline/f/e;->f:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->g:I

    .line 64
    iput v1, p0, Lcom/facebook/imagepipeline/f/e;->h:I

    .line 73
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    .line 75
    iput-object p1, p0, Lcom/facebook/imagepipeline/f/e;->b:Lcom/facebook/common/internal/i;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/internal/i;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/io/FileInputStream;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/internal/i;)V

    .line 80
    iput p2, p0, Lcom/facebook/imagepipeline/f/e;->h:I

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/a;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/e;->c:Lcom/facebook/imageformat/ImageFormat;

    .line 60
    iput v1, p0, Lcom/facebook/imagepipeline/f/e;->d:I

    .line 61
    iput v1, p0, Lcom/facebook/imagepipeline/f/e;->e:I

    .line 62
    iput v1, p0, Lcom/facebook/imagepipeline/f/e;->f:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->g:I

    .line 64
    iput v1, p0, Lcom/facebook/imagepipeline/f/e;->h:I

    .line 67
    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 68
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->b()Lcom/facebook/common/references/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/e;->b:Lcom/facebook/common/internal/i;

    .line 70
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/imagepipeline/f/e;
    .locals 1
    .parameter

    .prologue
    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/e;->a()Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/facebook/imagepipeline/f/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 322
    iget v0, p0, Lcom/facebook/imagepipeline/f/e;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/f/e;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/f/e;->f:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/facebook/imagepipeline/f/e;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/e;->close()V

    .line 336
    :cond_0
    return-void
.end method

.method public static e(Lcom/facebook/imagepipeline/f/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 343
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/f/e;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->b:Lcom/facebook/common/internal/i;

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lcom/facebook/imagepipeline/f/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/f/e;->b:Lcom/facebook/common/internal/i;

    iget v2, p0, Lcom/facebook/imagepipeline/f/e;->h:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/internal/i;I)V

    .line 106
    :goto_0
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/f/e;->b(Lcom/facebook/imagepipeline/f/e;)V

    .line 109
    :cond_0
    return-object v0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    .line 98
    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 100
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 103
    :goto_1
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    .line 100
    :cond_2
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/f/e;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput p1, p0, Lcom/facebook/imagepipeline/f/e;->f:I

    .line 171
    return-void
.end method

.method public a(Lcom/facebook/imageformat/ImageFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/imagepipeline/f/e;->c:Lcom/facebook/imageformat/ImageFormat;

    .line 164
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput p1, p0, Lcom/facebook/imagepipeline/f/e;->e:I

    .line 178
    return-void
.end method

.method public b(Lcom/facebook/imagepipeline/f/e;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->e()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/e;->c:Lcom/facebook/imageformat/ImageFormat;

    .line 311
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->g()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->e:I

    .line 312
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->h()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->f:I

    .line 313
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->f()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->d:I

    .line 314
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->i()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->g:I

    .line 315
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->j()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->h:I

    .line 316
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->b:Lcom/facebook/common/internal/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput p1, p0, Lcom/facebook/imagepipeline/f/e;->d:I

    .line 185
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 118
    return-void
.end method

.method public d()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->b:Lcom/facebook/common/internal/i;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->b:Lcom/facebook/common/internal/i;

    invoke-interface {v0}, Lcom/facebook/common/internal/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 156
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    .line 148
    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_1

    .line 151
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/memory/x;

    invoke-virtual {v2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/memory/x;-><init>(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput p1, p0, Lcom/facebook/imagepipeline/f/e;->g:I

    .line 192
    return-void
.end method

.method public e()Lcom/facebook/imageformat/ImageFormat;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->c:Lcom/facebook/imageformat/ImageFormat;

    return-object v0
.end method

.method public e(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->c:Lcom/facebook/imageformat/ImageFormat;

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->b:Lcom/facebook/common/internal/i;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 258
    add-int/lit8 v2, p1, -0x2

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I)B

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, p1, -0x1

    .line 259
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I)B

    move-result v0

    const/16 v2, -0x27

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public f()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/facebook/imagepipeline/f/e;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/facebook/imagepipeline/f/e;->e:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/facebook/imagepipeline/f/e;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/facebook/imagepipeline/f/e;->g:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/e;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/facebook/imagepipeline/f/e;->h:I

    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/e;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 279
    invoke-static {v0}, Lcom/facebook/imageformat/b;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    .line 281
    iput-object v1, p0, Lcom/facebook/imagepipeline/f/e;->c:Lcom/facebook/imageformat/ImageFormat;

    .line 285
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormat;->isWebpFormat(Lcom/facebook/imageformat/ImageFormat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/e;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/c/a;->a(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_0

    .line 288
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->e:I

    .line 289
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->f:I

    .line 292
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v1, v0, :cond_1

    .line 293
    iget v0, p0, Lcom/facebook/imagepipeline/f/e;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/e;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/c/b;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 294
    invoke-static {v0}, Lcom/facebook/c/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->d:I

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/f/e;->d:I

    goto :goto_0
.end method
