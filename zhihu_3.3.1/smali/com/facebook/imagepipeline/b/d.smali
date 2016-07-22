.class public Lcom/facebook/imagepipeline/b/d;
.super Lcom/facebook/imagepipeline/b/e;
.source "HoneycombBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/b/b;

.field private final b:Lcom/facebook/imagepipeline/h/e;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/b/b;Lcom/facebook/imagepipeline/h/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/imagepipeline/b/e;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/imagepipeline/b/d;->a:Lcom/facebook/imagepipeline/b/b;

    .line 38
    iput-object p2, p0, Lcom/facebook/imagepipeline/b/d;->b:Lcom/facebook/imagepipeline/h/e;

    .line 39
    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 5
    .parameter
    .parameter
    .parameter
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
    .line 57
    iget-object v0, p0, Lcom/facebook/imagepipeline/b/d;->a:Lcom/facebook/imagepipeline/b/b;

    int-to-short v1, p1

    int-to-short v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/b/b;->a(SS)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 61
    :try_start_0
    new-instance v2, Lcom/facebook/imagepipeline/f/e;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/references/a;)V

    .line 62
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/f/e;->a(Lcom/facebook/imageformat/ImageFormat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/b/d;->b:Lcom/facebook/imagepipeline/h/e;

    .line 65
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    .line 64
    invoke-interface {v3, v2, p3, v0}, Lcom/facebook/imagepipeline/h/e;->a(Lcom/facebook/imagepipeline/f/e;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    invoke-static {v2}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    return-object v3

    .line 69
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v2}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    throw v0
.end method
