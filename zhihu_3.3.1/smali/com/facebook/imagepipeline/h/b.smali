.class abstract Lcom/facebook/imagepipeline/h/b;
.super Ljava/lang/Object;
.source "DalvikPurgeableDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/h/e;


# static fields
.field protected static final a:[B


# instance fields
.field private final b:Lcom/facebook/imagepipeline/memory/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/imagepipeline/h/b;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xfft
        0xd9t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/facebook/imagepipeline/memory/b;->a()Lcom/facebook/imagepipeline/memory/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/h/b;->b:Lcom/facebook/imagepipeline/memory/a;

    .line 38
    return-void
.end method

.method private static a(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 127
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 129
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 131
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 133
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 135
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 137
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 139
    :cond_0
    return-object v0
.end method

.method protected static a(Lcom/facebook/common/references/a;I)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    .line 144
    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    add-int/lit8 v1, p1, -0x2

    .line 145
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I)B

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 146
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a(I)B

    move-result v0

    const/16 v1, -0x27

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract a(Lcom/facebook/common/references/a;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;I",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method abstract a(Lcom/facebook/common/references/a;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/b;->b:Lcom/facebook/imagepipeline/memory/a;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    new-instance v0, Lcom/facebook/imagepipeline/common/TooManyBitmapsException;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/TooManyBitmapsException;-><init>()V

    throw v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    invoke-static {v0}, Lcom/facebook/common/internal/j;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/h/b;->b:Lcom/facebook/imagepipeline/memory/a;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/a;->a()Lcom/facebook/common/references/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/f/e;Landroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/f/e;",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->i()I

    move-result v0

    .line 54
    invoke-static {v0, p2}, Lcom/facebook/imagepipeline/h/b;->a(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->c()Lcom/facebook/common/references/a;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/imagepipeline/h/b;->a(Lcom/facebook/common/references/a;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/h/b;->a(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 63
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
.end method

.method public a(Lcom/facebook/imagepipeline/f/e;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/f/e;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->i()I

    move-result v0

    .line 83
    invoke-static {v0, p2}, Lcom/facebook/imagepipeline/h/b;->a(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->c()Lcom/facebook/common/references/a;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :try_start_0
    invoke-virtual {p0, v1, p3, v0}, Lcom/facebook/imagepipeline/h/b;->a(Lcom/facebook/common/references/a;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/h/b;->a(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 92
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
.end method
