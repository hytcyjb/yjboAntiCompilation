.class Lcom/facebook/imagepipeline/producers/ao$1;
.super Lcom/facebook/imagepipeline/producers/am;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ao;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/am",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/producers/aj;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/imagepipeline/producers/j;

.field final synthetic e:Lcom/facebook/imagepipeline/producers/ah;

.field final synthetic f:Lcom/facebook/imagepipeline/producers/ao;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/ao;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ao$1;->f:Lcom/facebook/imagepipeline/producers/ao;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/ao$1;->b:Lcom/facebook/imagepipeline/producers/aj;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/ao$1;->c:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/ao$1;->d:Lcom/facebook/imagepipeline/producers/j;

    iput-object p9, p0, Lcom/facebook/imagepipeline/producers/ao$1;->e:Lcom/facebook/imagepipeline/producers/ah;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/am;-><init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ao$1;->b:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ao$1;->c:Ljava/lang/String;

    const-string v2, "BackgroundThreadHandoffProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ao$1;->f:Lcom/facebook/imagepipeline/producers/ao;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/ao;->a(Lcom/facebook/imagepipeline/producers/ao;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ao$1;->d:Lcom/facebook/imagepipeline/producers/j;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ao$1;->e:Lcom/facebook/imagepipeline/producers/ah;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 47
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method protected c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
