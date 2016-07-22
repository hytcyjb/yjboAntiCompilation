.class Lcom/facebook/imagepipeline/producers/ac$1;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/r;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/ac;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/ac;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ac$1;->b:Lcom/facebook/imagepipeline/producers/ac;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ac$1;->a:Lcom/facebook/imagepipeline/producers/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ac$1;->b:Lcom/facebook/imagepipeline/producers/ac;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ac$1;->a:Lcom/facebook/imagepipeline/producers/r;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/producers/ac;Lcom/facebook/imagepipeline/producers/r;)V

    .line 83
    return-void
.end method

.method public a(Ljava/io/InputStream;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ac$1;->b:Lcom/facebook/imagepipeline/producers/ac;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ac$1;->a:Lcom/facebook/imagepipeline/producers/r;

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/producers/ac;Lcom/facebook/imagepipeline/producers/r;Ljava/io/InputStream;I)V

    .line 73
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ac$1;->b:Lcom/facebook/imagepipeline/producers/ac;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ac$1;->a:Lcom/facebook/imagepipeline/producers/r;

    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/producers/ac;Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method
