.class public Lcom/facebook/imagepipeline/e/d;
.super Lcom/facebook/imagepipeline/e/a;
.source "ProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/e/a",
        "<TT;>;"
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
            "<TT;>;",
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
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/al;",
            "Lcom/facebook/imagepipeline/g/b;",
            ")",
            "Lcom/facebook/datasource/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/imagepipeline/e/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/e/d;-><init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/al;Lcom/facebook/imagepipeline/g/b;)V

    return-object v0
.end method
