.class Lcom/facebook/imagepipeline/memory/j$a;
.super Lcom/facebook/imagepipeline/memory/k;
.source "FlexByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;Lcom/facebook/imagepipeline/memory/u;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/k;-><init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;Lcom/facebook/imagepipeline/memory/u;)V

    .line 72
    return-void
.end method


# virtual methods
.method g(I)Lcom/facebook/imagepipeline/memory/d;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/d",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/imagepipeline/memory/p;

    .line 77
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/j$a;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/j$a;->b:Lcom/facebook/imagepipeline/memory/t;

    iget v2, v2, Lcom/facebook/imagepipeline/memory/t;->f:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/p;-><init>(III)V

    return-object v0
.end method
