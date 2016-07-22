.class public Lcom/facebook/imagepipeline/producers/g;
.super Lcom/facebook/imagepipeline/producers/ab;
.source "BitmapMemoryCacheKeyMultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/ab",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/facebook/cache/common/a;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/facebook/imagepipeline/c/f;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/ab;-><init>(Lcom/facebook/imagepipeline/producers/ag;)V

    .line 33
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/g;->b:Lcom/facebook/imagepipeline/c/f;

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/producers/ah;)Landroid/util/Pair;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/g;->b:Lcom/facebook/imagepipeline/c/f;

    .line 39
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/c/f;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;

    move-result-object v0

    .line 40
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ah;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;)",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/g;->a(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/facebook/imagepipeline/producers/ah;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/g;->a(Lcom/facebook/imagepipeline/producers/ah;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
