.class Lcom/facebook/imagepipeline/producers/af$c;
.super Lcom/facebook/imagepipeline/producers/m;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/af;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/af;Lcom/facebook/imagepipeline/producers/af$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/af$c;->a:Lcom/facebook/imagepipeline/producers/af;

    .line 307
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/j;)V

    .line 308
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/af;Lcom/facebook/imagepipeline/producers/af$a;Lcom/facebook/imagepipeline/producers/af$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/af$c;-><init>(Lcom/facebook/imagepipeline/producers/af;Lcom/facebook/imagepipeline/producers/af$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/common/references/a;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 315
    if-nez p2, :cond_0

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/af$c;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/af$c;->a(Lcom/facebook/common/references/a;Z)V

    return-void
.end method
