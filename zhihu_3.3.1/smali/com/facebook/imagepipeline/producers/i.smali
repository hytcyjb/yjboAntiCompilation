.class public Lcom/facebook/imagepipeline/producers/i;
.super Ljava/lang/Object;
.source "BranchOnSeparateImagesProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/ag;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i;->a:Lcom/facebook/imagepipeline/producers/ag;

    .line 29
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/i;->b:Lcom/facebook/imagepipeline/producers/ag;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/i;)Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i;->b:Lcom/facebook/imagepipeline/producers/ag;

    return-object v0
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
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/imagepipeline/producers/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/imagepipeline/producers/i$a;-><init>(Lcom/facebook/imagepipeline/producers/i;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;Lcom/facebook/imagepipeline/producers/i$1;)V

    .line 37
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/i;->a:Lcom/facebook/imagepipeline/producers/ag;

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 38
    return-void
.end method
