.class public Lcom/facebook/imagepipeline/c/l;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"


# direct methods
.method public static a(Lcom/facebook/common/internal/i;Lcom/facebook/common/memory/b;)Lcom/facebook/imagepipeline/c/h;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;",
            "Lcom/facebook/common/memory/b;",
            ")",
            "Lcom/facebook/imagepipeline/c/h",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/imagepipeline/c/l$1;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/l$1;-><init>()V

    .line 31
    new-instance v1, Lcom/facebook/imagepipeline/c/s;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/c/s;-><init>()V

    .line 33
    new-instance v2, Lcom/facebook/imagepipeline/c/h;

    invoke-direct {v2, v0, v1, p0}, Lcom/facebook/imagepipeline/c/h;-><init>(Lcom/facebook/imagepipeline/c/v;Lcom/facebook/imagepipeline/c/h$a;Lcom/facebook/common/internal/i;)V

    .line 36
    invoke-interface {p1, v2}, Lcom/facebook/common/memory/b;->a(Lcom/facebook/common/memory/a;)V

    .line 38
    return-object v2
.end method
