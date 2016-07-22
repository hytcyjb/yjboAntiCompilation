.class Lcom/facebook/imagepipeline/producers/ar$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/ar;

.field private final b:Lcom/facebook/imagepipeline/producers/ah;

.field private c:Lcom/facebook/common/util/TriState;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ar;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ar$a;->a:Lcom/facebook/imagepipeline/producers/ar;

    .line 66
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/j;)V

    .line 67
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/ar$a;->b:Lcom/facebook/imagepipeline/producers/ah;

    .line 68
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ar$a;->c:Lcom/facebook/common/util/TriState;

    .line 69
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/f/e;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ar$a;->c:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 75
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/ar;->a(Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ar$a;->c:Lcom/facebook/common/util/TriState;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ar$a;->c:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ar$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    if-eqz p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ar$a;->c:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    .line 86
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ar$a;->a:Lcom/facebook/imagepipeline/producers/ar;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ar$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ar$a;->b:Lcom/facebook/imagepipeline/producers/ah;

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/ar;->a(Lcom/facebook/imagepipeline/producers/ar;Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ar$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    check-cast p1, Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ar$a;->a(Lcom/facebook/imagepipeline/f/e;Z)V

    return-void
.end method
