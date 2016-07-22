.class public Lcom/facebook/imagepipeline/producers/p;
.super Lcom/facebook/imagepipeline/producers/ab;
.source "EncodedCacheKeyMultiplexProducer.java"


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
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
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
    .line 28
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/ab;-><init>(Lcom/facebook/imagepipeline/producers/ag;)V

    .line 29
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p;->b:Lcom/facebook/imagepipeline/c/f;

    .line 30
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
    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p;->b:Lcom/facebook/imagepipeline/c/f;

    .line 34
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/c/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;

    move-result-object v0

    .line 35
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ah;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/imagepipeline/f/e;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/facebook/imagepipeline/f/e;->a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/p;->a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/facebook/imagepipeline/producers/ah;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/p;->a(Lcom/facebook/imagepipeline/producers/ah;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
