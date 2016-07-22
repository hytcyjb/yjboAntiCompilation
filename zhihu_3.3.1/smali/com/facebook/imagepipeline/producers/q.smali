.class public Lcom/facebook/imagepipeline/producers/q;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
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
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
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
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/q;->a:Lcom/facebook/imagepipeline/c/p;

    .line 39
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/q;->b:Lcom/facebook/imagepipeline/c/f;

    .line 40
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/q;->c:Lcom/facebook/imagepipeline/producers/ag;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/q;)Lcom/facebook/imagepipeline/c/p;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q;->a:Lcom/facebook/imagepipeline/c/p;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 7
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
    const/4 v0, 0x0

    .line 48
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v2

    .line 50
    const-string v3, "EncodedMemoryCacheProducer"

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/q;->b:Lcom/facebook/imagepipeline/c/f;

    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/c/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;

    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/q;->a:Lcom/facebook/imagepipeline/c/p;

    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/c/p;->a(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    :try_start_0
    new-instance v3, Lcom/facebook/imagepipeline/f/e;

    invoke-direct {v3, v4}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    const-string v5, "EncodedMemoryCacheProducer"

    .line 62
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "cached_value_found"

    const-string v6, "true"

    invoke-static {v0, v6}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 59
    :cond_0
    invoke-interface {v2, v1, v5, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/j;->b(F)V

    .line 64
    const/4 v0, 0x1

    invoke-interface {p1, v3, v0}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-static {v3}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    invoke-static {v4}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 129
    :goto_0
    return-void

    .line 67
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v3}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :catchall_1
    move-exception v0

    invoke-static {v4}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0

    .line 71
    :cond_1
    :try_start_4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v5

    sget-object v6, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->ENCODED_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 72
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 73
    const-string v3, "EncodedMemoryCacheProducer"

    .line 76
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v0, "cached_value_found"

    const-string v5, "false"

    invoke-static {v0, v5}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 73
    :cond_2
    invoke-interface {v2, v1, v3, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    invoke-static {v4}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    .line 81
    :cond_3
    :try_start_5
    new-instance v5, Lcom/facebook/imagepipeline/producers/q$1;

    invoke-direct {v5, p0, p1, v3}, Lcom/facebook/imagepipeline/producers/q$1;-><init>(Lcom/facebook/imagepipeline/producers/q;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/cache/common/a;)V

    .line 121
    const-string v3, "EncodedMemoryCacheProducer"

    .line 124
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v0, "cached_value_found"

    const-string v6, "false"

    invoke-static {v0, v6}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 121
    :cond_4
    invoke-interface {v2, v1, v3, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q;->c:Lcom/facebook/imagepipeline/producers/ag;

    invoke-interface {v0, v5, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    invoke-static {v4}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0
.end method
