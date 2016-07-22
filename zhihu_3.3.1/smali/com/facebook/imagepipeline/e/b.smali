.class public abstract Lcom/facebook/imagepipeline/e/b;
.super Lcom/facebook/datasource/a;
.source "BaseBitmapDataSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/a",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/datasource/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Bitmap;)V
.end method

.method public e(Lcom/facebook/datasource/b;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/facebook/datasource/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    .line 57
    const/4 v1, 0x0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/facebook/imagepipeline/f/b;

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/f/b;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/f/b;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 64
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/e/b;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v1
.end method
