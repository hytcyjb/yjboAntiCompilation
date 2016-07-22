.class public Lcom/facebook/imagepipeline/animated/base/k;
.super Ljava/lang/Object;
.source "AnimatedImageResultBuilder.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/h;

.field private b:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/h;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/k;->a:Lcom/facebook/imagepipeline/animated/base/h;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/animated/base/h;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/k;->a:Lcom/facebook/imagepipeline/animated/base/h;

    return-object v0
.end method

.method public a(I)Lcom/facebook/imagepipeline/animated/base/k;
    .locals 0
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/k;->d:I

    .line 80
    return-object p0
.end method

.method public a(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/animated/base/k;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/imagepipeline/animated/base/k;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/k;->b:Lcom/facebook/common/references/a;

    .line 59
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/k;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/animated/base/k;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/k;->c:Ljava/util/List;

    .line 103
    return-object p0
.end method

.method public b()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/k;->b:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/k;->d:I

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/k;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/animated/base/j;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/j;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/j;-><init>(Lcom/facebook/imagepipeline/animated/base/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/k;->b:Lcom/facebook/common/references/a;

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 118
    iput-object v2, p0, Lcom/facebook/imagepipeline/animated/base/k;->b:Lcom/facebook/common/references/a;

    .line 119
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/k;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Iterable;)V

    .line 120
    iput-object v2, p0, Lcom/facebook/imagepipeline/animated/base/k;->c:Ljava/util/List;

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/k;->b:Lcom/facebook/common/references/a;

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 118
    iput-object v2, p0, Lcom/facebook/imagepipeline/animated/base/k;->b:Lcom/facebook/common/references/a;

    .line 119
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/k;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Iterable;)V

    .line 120
    iput-object v2, p0, Lcom/facebook/imagepipeline/animated/base/k;->c:Ljava/util/List;

    throw v0
.end method
