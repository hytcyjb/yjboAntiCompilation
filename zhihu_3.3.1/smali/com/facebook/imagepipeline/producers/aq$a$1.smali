.class Lcom/facebook/imagepipeline/producers/aq$a$1;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/aq$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/Pair;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/aq$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/aq$a;Landroid/util/Pair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/aq$a$1;->b:Lcom/facebook/imagepipeline/producers/aq$a;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/aq$a$1;->a:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/aq$a$1;->b:Lcom/facebook/imagepipeline/producers/aq$a;

    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/aq$a;->a:Lcom/facebook/imagepipeline/producers/aq;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/aq$a$1;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/imagepipeline/producers/j;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/aq$a$1;->a:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/imagepipeline/producers/ah;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/imagepipeline/producers/aq;->b(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 118
    return-void
.end method
