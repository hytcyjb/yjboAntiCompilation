.class public Lcom/facebook/imagepipeline/memory/t;
.super Ljava/lang/Object;
.source "PoolParams.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IILandroid/util/SparseIntArray;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/memory/t;-><init>(IILandroid/util/SparseIntArray;III)V

    .line 83
    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseIntArray;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->b(Z)V

    .line 102
    iput p1, p0, Lcom/facebook/imagepipeline/memory/t;->b:I

    .line 103
    iput p2, p0, Lcom/facebook/imagepipeline/memory/t;->a:I

    .line 104
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/t;->c:Landroid/util/SparseIntArray;

    .line 105
    iput p4, p0, Lcom/facebook/imagepipeline/memory/t;->d:I

    .line 106
    iput p5, p0, Lcom/facebook/imagepipeline/memory/t;->e:I

    .line 107
    iput p6, p0, Lcom/facebook/imagepipeline/memory/t;->f:I

    .line 108
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
