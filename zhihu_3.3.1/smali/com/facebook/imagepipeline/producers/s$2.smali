.class Lcom/facebook/imagepipeline/producers/s$2;
.super Lcom/facebook/imagepipeline/producers/e;
.source "HttpUrlConnectionNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/s;->a(Lcom/facebook/imagepipeline/producers/r;Lcom/facebook/imagepipeline/producers/ad$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/ad$a;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/s;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/s;Ljava/util/concurrent/Future;Lcom/facebook/imagepipeline/producers/ad$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/s$2;->c:Lcom/facebook/imagepipeline/producers/s;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/s$2;->a:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/s$2;->b:Lcom/facebook/imagepipeline/producers/ad$a;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/s$2;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/s$2;->b:Lcom/facebook/imagepipeline/producers/ad$a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ad$a;->a()V

    .line 89
    :cond_0
    return-void
.end method
