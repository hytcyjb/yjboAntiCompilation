.class public Lcom/facebook/imagepipeline/producers/f;
.super Lcom/facebook/imagepipeline/producers/h;
.source "BitmapMemoryCacheGetProducer.java"


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/h;-><init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/producers/j;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;",
            "Lcom/facebook/cache/common/a;",
            ")",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 38
    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "BitmapMemoryCacheGetProducer"

    return-object v0
.end method
