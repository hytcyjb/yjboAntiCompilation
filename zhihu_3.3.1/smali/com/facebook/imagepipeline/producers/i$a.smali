.class Lcom/facebook/imagepipeline/producers/i$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "BranchOnSeparateImagesProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/i;
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
.field final synthetic a:Lcom/facebook/imagepipeline/producers/i;

.field private b:Lcom/facebook/imagepipeline/producers/ah;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/i;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 0
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
    .line 46
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i$a;->a:Lcom/facebook/imagepipeline/producers/i;

    .line 47
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/j;)V

    .line 48
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/i$a;->b:Lcom/facebook/imagepipeline/producers/ah;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/i;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;Lcom/facebook/imagepipeline/producers/i$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/i$a;-><init>(Lcom/facebook/imagepipeline/producers/i;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->g()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->c()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->h()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->d()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/f/e;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i$a;->b:Lcom/facebook/imagepipeline/producers/ah;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/i$a;->a(Lcom/facebook/imagepipeline/f/e;Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v1

    .line 55
    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v2

    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, p1, v0}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 58
    :cond_1
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 59
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i$a;->a:Lcom/facebook/imagepipeline/producers/i;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/i;->a(Lcom/facebook/imagepipeline/producers/i;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/i$a;->b:Lcom/facebook/imagepipeline/producers/ah;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 61
    :cond_2
    return-void

    .line 56
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p1, Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/i$a;->a(Lcom/facebook/imagepipeline/f/e;Z)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i$a;->a:Lcom/facebook/imagepipeline/producers/i;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/i;->a(Lcom/facebook/imagepipeline/producers/i;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/i$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/i$a;->b:Lcom/facebook/imagepipeline/producers/ah;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 66
    return-void
.end method
