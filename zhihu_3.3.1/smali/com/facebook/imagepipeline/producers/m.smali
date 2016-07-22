.class public abstract Lcom/facebook/imagepipeline/producers/m;
.super Lcom/facebook/imagepipeline/producers/b;
.source "DelegatingConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/producers/b",
        "<TI;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/j",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/j;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/b;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m;->a:Lcom/facebook/imagepipeline/producers/j;

    .line 20
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m;->a:Lcom/facebook/imagepipeline/producers/j;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j;->b()V

    .line 34
    return-void
.end method

.method protected a(F)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m;->a:Lcom/facebook/imagepipeline/producers/j;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/j;->b(F)V

    .line 39
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m;->a:Lcom/facebook/imagepipeline/producers/j;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public d()Lcom/facebook/imagepipeline/producers/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/j",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m;->a:Lcom/facebook/imagepipeline/producers/j;

    return-object v0
.end method
