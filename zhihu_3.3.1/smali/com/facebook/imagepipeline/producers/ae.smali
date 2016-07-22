.class public Lcom/facebook/imagepipeline/producers/ae;
.super Ljava/lang/Object;
.source "PostprocessedBitmapMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/ae$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/c/f;

.field private final c:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ae;->a:Lcom/facebook/imagepipeline/c/p;

    .line 41
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ae;->b:Lcom/facebook/imagepipeline/c/f;

    .line 42
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/ae;->c:Lcom/facebook/imagepipeline/producers/ag;

    .line 43
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "PostprocessedBitmapMemoryCacheProducer"

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v1

    .line 51
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()Lcom/facebook/imagepipeline/request/a;

    move-result-object v4

    .line 56
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/facebook/imagepipeline/request/a;->b()Lcom/facebook/cache/common/a;

    move-result-object v5

    if-nez v5, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ae;->c:Lcom/facebook/imagepipeline/producers/ag;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 84
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ae;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/ae;->b:Lcom/facebook/imagepipeline/c/f;

    invoke-interface {v5, v3}, Lcom/facebook/imagepipeline/c/f;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;

    move-result-object v3

    .line 62
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/ae;->a:Lcom/facebook/imagepipeline/c/p;

    invoke-interface {v5, v3}, Lcom/facebook/imagepipeline/c/p;->a(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v5

    .line 63
    if-eqz v5, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ae;->a()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "cached_value_found"

    const-string v4, "true"

    invoke-static {v0, v4}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 64
    :cond_2
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/j;->b(F)V

    .line 69
    const/4 v0, 0x1

    invoke-interface {p1, v5, v0}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 70
    invoke-virtual {v5}, Lcom/facebook/common/references/a;->close()V

    goto :goto_0

    .line 72
    :cond_3
    instance-of v4, v4, Lcom/facebook/imagepipeline/request/b;

    .line 73
    new-instance v5, Lcom/facebook/imagepipeline/producers/ae$a;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/ae;->a:Lcom/facebook/imagepipeline/c/p;

    invoke-direct {v5, p1, v3, v4, v6}, Lcom/facebook/imagepipeline/producers/ae$a;-><init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/cache/common/a;ZLcom/facebook/imagepipeline/c/p;)V

    .line 80
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ae;->a()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "cached_value_found"

    const-string v4, "false"

    invoke-static {v0, v4}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 78
    :cond_4
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ae;->c:Lcom/facebook/imagepipeline/producers/ag;

    invoke-interface {v0, v5, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    goto :goto_0
.end method
