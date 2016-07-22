.class Lcom/facebook/imagepipeline/producers/af$b$1;
.super Lcom/facebook/imagepipeline/producers/e;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/af$b;-><init>(Lcom/facebook/imagepipeline/producers/af;Lcom/facebook/imagepipeline/producers/af$a;Lcom/facebook/imagepipeline/request/b;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/af;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/af$b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/af$b;Lcom/facebook/imagepipeline/producers/af;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/af$b$1;->b:Lcom/facebook/imagepipeline/producers/af$b;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/af$b$1;->a:Lcom/facebook/imagepipeline/producers/af;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/af$b$1;->b:Lcom/facebook/imagepipeline/producers/af$b;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/af$b;->a(Lcom/facebook/imagepipeline/producers/af$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/af$b$1;->b:Lcom/facebook/imagepipeline/producers/af$b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/af$b;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j;->b()V

    .line 354
    :cond_0
    return-void
.end method
