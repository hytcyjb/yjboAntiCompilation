.class public Lcom/facebook/imagepipeline/c/a;
.super Ljava/lang/Object;
.source "BitmapCountingMemoryCacheFactory.java"


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
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/imagepipeline/c/a$1;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/a$1;-><init>()V

    .line 30
    new-instance v1, Lcom/facebook/imagepipeline/c/d;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/c/d;-><init>()V

    .line 32
    new-instance v2, Lcom/facebook/imagepipeline/c/h;

    invoke-direct {v2, v0, v1, p0}, Lcom/facebook/imagepipeline/c/h;-><init>(Lcom/facebook/imagepipeline/c/v;Lcom/facebook/imagepipeline/c/h$a;Lcom/facebook/common/internal/i;)V

    .line 35
    invoke-interface {p1, v2}, Lcom/facebook/common/memory/b;->a(Lcom/facebook/common/memory/a;)V

    .line 37
    return-object v2
.end method
