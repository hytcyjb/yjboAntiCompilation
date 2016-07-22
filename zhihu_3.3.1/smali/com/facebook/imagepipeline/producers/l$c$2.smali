.class Lcom/facebook/imagepipeline/producers/l$c$2;
.super Lcom/facebook/imagepipeline/producers/e;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/l$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/l;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/l$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/l$c;Lcom/facebook/imagepipeline/producers/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c$2;->b:Lcom/facebook/imagepipeline/producers/l$c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/l$c$2;->a:Lcom/facebook/imagepipeline/producers/l;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c$2;->b:Lcom/facebook/imagepipeline/producers/l$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/l$c;->a(Lcom/facebook/imagepipeline/producers/l$c;)Lcom/facebook/imagepipeline/producers/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ah;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c$2;->b:Lcom/facebook/imagepipeline/producers/l$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/l$c;->b(Lcom/facebook/imagepipeline/producers/l$c;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->b()Z

    .line 141
    :cond_0
    return-void
.end method
