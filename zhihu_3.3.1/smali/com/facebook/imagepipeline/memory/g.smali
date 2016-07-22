.class public Lcom/facebook/imagepipeline/memory/g;
.super Ljava/lang/Object;
.source "DefaultByteArrayPoolParams.java"


# direct methods
.method public static a()Lcom/facebook/imagepipeline/memory/t;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 42
    const/16 v1, 0x4000

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    new-instance v1, Lcom/facebook/imagepipeline/memory/t;

    const v2, 0x14000

    const/high16 v3, 0x10

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/memory/t;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v1
.end method
