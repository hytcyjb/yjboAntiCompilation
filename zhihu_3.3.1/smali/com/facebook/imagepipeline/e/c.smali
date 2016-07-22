.class public Lcom/facebook/imagepipeline/e/c;
.super Lcom/facebook/imagepipeline/e/a;
.source "CloseableProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/e/a",
        "<",
        "Lcom/facebook/common/references/a",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/al;Lcom/facebook/imagepipeline/g/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/al;",
            "Lcom/facebook/imagepipeline/g/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/e/a;-><init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/al;Lcom/facebook/imagepipeline/g/b;)V

    .line 43
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/al;Lcom/facebook/imagepipeline/g/b;)Lcom/facebook/datasource/b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/al;",
            "Lcom/facebook/imagepipeline/g/b;",
            ")",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/facebook/imagepipeline/e/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/e/c;-><init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/al;Lcom/facebook/imagepipeline/g/b;)V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/common/references/a;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 54
    return-void
.end method

.method protected a(Lcom/facebook/common/references/a;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/facebook/imagepipeline/e/a;->b(Ljava/lang/Object;Z)V

    .line 59
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/e/c;->a(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/e/c;->a(Lcom/facebook/common/references/a;Z)V

    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/c;->j()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0}, Lcom/facebook/imagepipeline/e/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method
