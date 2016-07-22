.class Lcom/facebook/imagepipeline/memory/p;
.super Lcom/facebook/imagepipeline/memory/d;
.source "OOMSoftReferenceBucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/memory/d",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/common/references/b",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/d;-><init>(III)V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->d:Ljava/util/LinkedList;

    .line 29
    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/b;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/facebook/common/references/b;

    invoke-direct {v0}, Lcom/facebook/common/references/b;-><init>()V

    .line 46
    :cond_0
    invoke-virtual {v0, p1}, Lcom/facebook/common/references/b;->a(Ljava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/p;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/b;

    .line 34
    invoke-virtual {v0}, Lcom/facebook/common/references/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Lcom/facebook/common/references/b;->b()V

    .line 36
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/p;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    return-object v1
.end method
