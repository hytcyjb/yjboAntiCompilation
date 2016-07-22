.class Lcom/facebook/imagepipeline/producers/ao$2;
.super Lcom/facebook/imagepipeline/producers/e;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ao;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/am;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/ao;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/ao;Lcom/facebook/imagepipeline/producers/am;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ao$2;->b:Lcom/facebook/imagepipeline/producers/ao;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ao$2;->a:Lcom/facebook/imagepipeline/producers/am;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ao$2;->a:Lcom/facebook/imagepipeline/producers/am;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/am;->a()V

    .line 62
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ao$2;->b:Lcom/facebook/imagepipeline/producers/ao;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/ao;->b(Lcom/facebook/imagepipeline/producers/ao;)Lcom/facebook/imagepipeline/producers/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ao$2;->a:Lcom/facebook/imagepipeline/producers/am;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/ap;->b(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
