.class public Lcom/facebook/imagepipeline/memory/j;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/j$a;
    }
.end annotation


# instance fields
.field final a:Lcom/facebook/imagepipeline/memory/j$a;

.field private final b:Lcom/facebook/common/references/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/c",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p2, Lcom/facebook/imagepipeline/memory/t;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/memory/j$a;

    .line 41
    invoke-static {}, Lcom/facebook/imagepipeline/memory/o;->a()Lcom/facebook/imagepipeline/memory/o;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/memory/j$a;-><init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;Lcom/facebook/imagepipeline/memory/u;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/j;->a:Lcom/facebook/imagepipeline/memory/j$a;

    .line 42
    new-instance v0, Lcom/facebook/imagepipeline/memory/j$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/memory/j$1;-><init>(Lcom/facebook/imagepipeline/memory/j;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/j;->b:Lcom/facebook/common/references/c;

    .line 48
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/facebook/common/references/a;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/j;->a:Lcom/facebook/imagepipeline/memory/j$a;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/j$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/j;->b:Lcom/facebook/common/references/c;

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public a([B)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/j;->a:Lcom/facebook/imagepipeline/memory/j$a;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/j$a;->a(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
