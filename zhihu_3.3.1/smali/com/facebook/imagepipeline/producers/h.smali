.class public Lcom/facebook/imagepipeline/producers/h;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h;->a:Lcom/facebook/imagepipeline/c/p;

    .line 39
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/h;->b:Lcom/facebook/imagepipeline/c/f;

    .line 40
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/h;->c:Lcom/facebook/imagepipeline/producers/ag;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/h;)Lcom/facebook/imagepipeline/c/p;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h;->a:Lcom/facebook/imagepipeline/c/p;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/producers/j;
    .locals 1
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
            "Lcom/facebook/cache/common/a;",
            ")",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/imagepipeline/producers/h$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h$1;-><init>(Lcom/facebook/imagepipeline/producers/h;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/cache/common/a;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "BitmapMemoryCacheProducer"

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 9
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
    const/4 v1, 0x0

    .line 48
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v2

    .line 49
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 52
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/h;->b:Lcom/facebook/imagepipeline/c/f;

    invoke-interface {v4, v0}, Lcom/facebook/imagepipeline/c/f;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;

    move-result-object v4

    .line 54
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h;->a:Lcom/facebook/imagepipeline/c/p;

    invoke-interface {v0, v4}, Lcom/facebook/imagepipeline/c/p;->a(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    invoke-virtual {v5}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/f/c;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/c;->e()Lcom/facebook/imagepipeline/f/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/f/h;->c()Z

    move-result v6

    .line 58
    if-eqz v6, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->a()Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cached_value_found"

    const-string v8, "true"

    invoke-static {v0, v8}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v2, v3, v7, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/j;->b(F)V

    .line 65
    :cond_0
    invoke-interface {p1, v5, v6}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 66
    invoke-virtual {v5}, Lcom/facebook/common/references/a;->close()V

    .line 67
    if-eqz v6, :cond_2

    .line 88
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 62
    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v5, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 73
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v5

    if-lt v0, v5, :cond_4

    .line 76
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->a()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "cached_value_found"

    const-string v5, "false"

    invoke-static {v0, v5}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 74
    :goto_2
    invoke-interface {v2, v3, v4, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 77
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/facebook/imagepipeline/producers/h;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->a()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v1, "cached_value_found"

    const-string v5, "false"

    invoke-static {v1, v5}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 83
    :cond_5
    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/h;->c:Lcom/facebook/imagepipeline/producers/ag;

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    goto :goto_1
.end method
