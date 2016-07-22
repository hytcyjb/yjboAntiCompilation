.class public Lcom/facebook/imagepipeline/producers/s;
.super Lcom/facebook/imagepipeline/producers/c;
.source "HttpUrlConnectionNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/c",
        "<",
        "Lcom/facebook/imagepipeline/producers/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/c;-><init>()V

    .line 36
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/s;->a:Ljava/util/concurrent/ExecutorService;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/r;Lcom/facebook/imagepipeline/producers/ad$a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/s;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/imagepipeline/producers/s$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/s$1;-><init>(Lcom/facebook/imagepipeline/producers/s;Lcom/facebook/imagepipeline/producers/r;Lcom/facebook/imagepipeline/producers/ad$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->b()Lcom/facebook/imagepipeline/producers/ah;

    move-result-object v1

    new-instance v2, Lcom/facebook/imagepipeline/producers/s$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/facebook/imagepipeline/producers/s$2;-><init>(Lcom/facebook/imagepipeline/producers/s;Ljava/util/concurrent/Future;Lcom/facebook/imagepipeline/producers/ad$a;)V

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/ah;->a(Lcom/facebook/imagepipeline/producers/ai;)V

    .line 91
    return-void
.end method

.method public b(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)Lcom/facebook/imagepipeline/producers/r;
    .locals 1
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
            ")",
            "Lcom/facebook/imagepipeline/producers/r;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/facebook/imagepipeline/producers/r;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/r;-><init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    return-object v0
.end method
