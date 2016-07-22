.class public Lcom/facebook/imagepipeline/producers/an;
.super Ljava/lang/Object;
.source "SwallowResultProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ag;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/an;->a:Lcom/facebook/imagepipeline/producers/ag;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/imagepipeline/producers/an$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/an$1;-><init>(Lcom/facebook/imagepipeline/producers/an;Lcom/facebook/imagepipeline/producers/j;)V

    .line 34
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/an;->a:Lcom/facebook/imagepipeline/producers/ag;

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 35
    return-void
.end method
