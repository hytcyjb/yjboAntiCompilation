.class public Lcom/facebook/imagepipeline/producers/af;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/af$b;,
        Lcom/facebook/imagepipeline/producers/af$c;,
        Lcom/facebook/imagepipeline/producers/af$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/b/e;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/b/e;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/b/e;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ag;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/af;->a:Lcom/facebook/imagepipeline/producers/ag;

    .line 51
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/af;->b:Lcom/facebook/imagepipeline/b/e;

    .line 52
    invoke-static {p3}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/af;->c:Ljava/util/concurrent/Executor;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/af;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/af;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/producers/af;)Lcom/facebook/imagepipeline/b/e;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/af;->b:Lcom/facebook/imagepipeline/b/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 59
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v3

    .line 60
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()Lcom/facebook/imagepipeline/request/a;

    move-result-object v5

    .line 61
    new-instance v0, Lcom/facebook/imagepipeline/producers/af$a;

    .line 62
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/af$a;-><init>(Lcom/facebook/imagepipeline/producers/af;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Lcom/facebook/imagepipeline/request/a;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 64
    instance-of v1, v5, Lcom/facebook/imagepipeline/request/b;

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Lcom/facebook/imagepipeline/producers/af$b;

    move-object v4, v5

    check-cast v4, Lcom/facebook/imagepipeline/request/b;

    move-object v2, p0

    move-object v3, v0

    move-object v5, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/producers/af$b;-><init>(Lcom/facebook/imagepipeline/producers/af;Lcom/facebook/imagepipeline/producers/af$a;Lcom/facebook/imagepipeline/request/b;Lcom/facebook/imagepipeline/producers/ah;Lcom/facebook/imagepipeline/producers/af$1;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/af;->a:Lcom/facebook/imagepipeline/producers/ag;

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 73
    return-void

    .line 70
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/producers/af$c;

    invoke-direct {v1, p0, v0, v7}, Lcom/facebook/imagepipeline/producers/af$c;-><init>(Lcom/facebook/imagepipeline/producers/af;Lcom/facebook/imagepipeline/producers/af$a;Lcom/facebook/imagepipeline/producers/af$1;)V

    goto :goto_0
.end method
