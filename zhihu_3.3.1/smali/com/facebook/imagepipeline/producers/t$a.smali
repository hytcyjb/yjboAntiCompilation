.class Lcom/facebook/imagepipeline/producers/t$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "ImageFileFetchProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/facebook/imagepipeline/request/ImageRequest;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/j;)V

    .line 39
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/t$a;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/t$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/t$a;-><init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/f/e;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    .line 46
    invoke-static {}, Lcom/facebook/imagepipeline/c/j;->a()Lcom/facebook/imagepipeline/c/j;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/t$a;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/c/j;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/facebook/imagepipeline/d/e;->a()Lcom/facebook/imagepipeline/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/e;->h()Lcom/facebook/cache/disk/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/cache/disk/f;->b(Lcom/facebook/cache/common/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {}, Lcom/facebook/imagepipeline/d/e;->a()Lcom/facebook/imagepipeline/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/e;->h()Lcom/facebook/cache/disk/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/cache/disk/f;->a(Lcom/facebook/cache/common/a;)Lcom/facebook/a/a;

    move-result-object v0

    .line 56
    :goto_0
    if-eqz v0, :cond_2

    .line 58
    check-cast v0, Lcom/facebook/a/b;

    invoke-virtual {v0}, Lcom/facebook/a/b;->c()Ljava/io/File;

    move-result-object v0

    .line 60
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/t$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 68
    :goto_2
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/facebook/imagepipeline/d/e;->a()Lcom/facebook/imagepipeline/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/e;->l()Lcom/facebook/cache/disk/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/cache/disk/f;->b(Lcom/facebook/cache/common/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    invoke-static {}, Lcom/facebook/imagepipeline/d/e;->a()Lcom/facebook/imagepipeline/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/e;->l()Lcom/facebook/cache/disk/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/cache/disk/f;->a(Lcom/facebook/cache/common/a;)Lcom/facebook/a/a;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/t$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cache file not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/t$a;->a(Lcom/facebook/imagepipeline/f/e;Z)V

    return-void
.end method
