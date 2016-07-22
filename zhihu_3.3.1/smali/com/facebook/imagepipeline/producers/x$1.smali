.class Lcom/facebook/imagepipeline/producers/x$1;
.super Lcom/facebook/imagepipeline/producers/am;
.source "LocalFetchProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/x;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/am",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/x;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/x;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/x$1;->c:Lcom/facebook/imagepipeline/producers/x;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/x$1;->b:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/am;-><init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/f/e;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-static {p1}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V

    .line 77
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    check-cast p1, Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/x$1;->a(Lcom/facebook/imagepipeline/f/e;)V

    return-void
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/x$1;->d()Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/facebook/imagepipeline/f/e;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x$1;->c:Lcom/facebook/imagepipeline/producers/x;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/x$1;->b:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/x;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/e;->k()V

    goto :goto_0
.end method
