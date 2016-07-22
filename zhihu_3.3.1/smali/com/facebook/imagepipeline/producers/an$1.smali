.class Lcom/facebook/imagepipeline/producers/an$1;
.super Lcom/facebook/imagepipeline/producers/m;
.source "SwallowResultProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/an;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/an;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/an;Lcom/facebook/imagepipeline/producers/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/an$1;->a:Lcom/facebook/imagepipeline/producers/an;

    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/j;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/an$1;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 32
    :cond_0
    return-void
.end method
