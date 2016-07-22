.class public Lcom/facebook/imagepipeline/animated/a/b;
.super Ljava/lang/Object;
.source "AnimatedImageFactory.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/impl/b;

.field private final b:Lcom/facebook/imagepipeline/b/e;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/a/b;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 48
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/a/b;->b:Lcom/facebook/imagepipeline/b/e;

    .line 49
    return-void
.end method

.method private a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/a/b;->b:Lcom/facebook/imagepipeline/b/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/b/e;->a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    .line 193
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 195
    :cond_0
    return-object v1
.end method

.method private a(Lcom/facebook/imagepipeline/animated/base/h;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/h;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    .line 131
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/h;->a()I

    move-result v0

    .line 132
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/h;->b()I

    move-result v1

    .line 130
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/imagepipeline/animated/a/b;->a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 134
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/j;->a(Lcom/facebook/imagepipeline/animated/base/h;)Lcom/facebook/imagepipeline/animated/base/j;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/a/b;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    const/4 v3, 0x0

    .line 136
    invoke-interface {v2, v0, v3}, Lcom/facebook/imagepipeline/animated/impl/b;->a(Lcom/facebook/imagepipeline/animated/base/j;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/c;

    move-result-object v0

    .line 137
    new-instance v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance v3, Lcom/facebook/imagepipeline/animated/a/b$1;

    invoke-direct {v3, p0}, Lcom/facebook/imagepipeline/animated/a/b$1;-><init>(Lcom/facebook/imagepipeline/animated/a/b;)V

    invoke-direct {v2, v0, v3}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/c;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$a;)V

    .line 150
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, p3, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a(ILandroid/graphics/Bitmap;)V

    .line 151
    return-object v1
.end method

.method private a(Lcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/animated/base/h;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/f/a;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 102
    .line 105
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/a;->e:Z

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/h;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 106
    :goto_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/a;->f:Z

    if-eqz v0, :cond_2

    .line 107
    invoke-direct {p0, p2, p3}, Lcom/facebook/imagepipeline/animated/a/b;->a(Lcom/facebook/imagepipeline/animated/base/h;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 108
    :try_start_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 111
    :goto_1
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/a;->d:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 112
    invoke-direct {p0, p2, p3, v3}, Lcom/facebook/imagepipeline/animated/a/b;->a(Lcom/facebook/imagepipeline/animated/base/h;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 114
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/animated/base/j;->b(Lcom/facebook/imagepipeline/animated/base/h;)Lcom/facebook/imagepipeline/animated/base/k;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/animated/base/k;->a(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/animated/base/k;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v3}, Lcom/facebook/imagepipeline/animated/base/k;->a(I)Lcom/facebook/imagepipeline/animated/base/k;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/animated/base/k;->a(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/k;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/k;->e()Lcom/facebook/imagepipeline/animated/base/j;

    move-result-object v0

    .line 119
    new-instance v3, Lcom/facebook/imagepipeline/f/a;

    invoke-direct {v3, v0}, Lcom/facebook/imagepipeline/f/a;-><init>(Lcom/facebook/imagepipeline/animated/base/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 122
    invoke-static {v2}, Lcom/facebook/common/references/a;->a(Ljava/lang/Iterable;)V

    return-object v3

    .line 105
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 122
    invoke-static {v2}, Lcom/facebook/common/references/a;->a(Ljava/lang/Iterable;)V

    throw v0

    .line 121
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method private a(Lcom/facebook/imagepipeline/animated/base/h;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/h;",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/j;->a(Lcom/facebook/imagepipeline/animated/base/h;)Lcom/facebook/imagepipeline/animated/base/j;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/a/b;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    const/4 v3, 0x0

    .line 160
    invoke-interface {v1, v0, v3}, Lcom/facebook/imagepipeline/animated/impl/b;->a(Lcom/facebook/imagepipeline/animated/base/j;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/c;

    move-result-object v3

    .line 161
    new-instance v4, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance v0, Lcom/facebook/imagepipeline/animated/a/b$2;

    invoke-direct {v0, p0, v2}, Lcom/facebook/imagepipeline/animated/a/b$2;-><init>(Lcom/facebook/imagepipeline/animated/a/b;Ljava/util/List;)V

    invoke-direct {v4, v3, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/c;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$a;)V

    .line 174
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/c;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 176
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/c;->e()I

    move-result v0

    .line 177
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/c;->f()I

    move-result v5

    .line 175
    invoke-direct {p0, v0, v5, p2}, Lcom/facebook/imagepipeline/animated/a/b;->a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object v5

    .line 179
    invoke-virtual {v5}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a(ILandroid/graphics/Bitmap;)V

    .line 180
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/common/a;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/f/c;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->c()Lcom/facebook/common/references/a;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :try_start_0
    iget-boolean v0, p2, Lcom/facebook/imagepipeline/common/a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->b(Z)V

    .line 66
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 67
    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/facebook/imagepipeline/gif/GifImage;->a(JI)Lcom/facebook/imagepipeline/gif/GifImage;

    move-result-object v0

    .line 69
    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/imagepipeline/animated/a/b;->a(Lcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/animated/base/h;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 71
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
.end method

.method public b(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/common/a;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/f/c;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->c()Lcom/facebook/common/references/a;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :try_start_0
    iget-boolean v0, p2, Lcom/facebook/imagepipeline/common/a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 90
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 91
    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->b()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/facebook/imagepipeline/webp/WebPImage;->a(JI)Lcom/facebook/imagepipeline/webp/WebPImage;

    move-result-object v0

    .line 92
    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/imagepipeline/animated/a/b;->a(Lcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/animated/base/h;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 94
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
.end method
