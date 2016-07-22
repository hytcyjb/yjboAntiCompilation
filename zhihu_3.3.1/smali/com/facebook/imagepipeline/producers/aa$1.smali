.class Lcom/facebook/imagepipeline/producers/aa$1;
.super Lcom/facebook/imagepipeline/producers/am;
.source "LocalVideoThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/aa;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/am",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/aa;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/aa;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/aa$1;->c:Lcom/facebook/imagepipeline/producers/aa;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/aa$1;->b:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/am;-><init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/common/references/a;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v1, "createdThumbnail"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/facebook/common/references/a;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 86
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/aa$1;->b(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/aa$1;->d()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 59
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/aa$1;->a(Lcom/facebook/common/references/a;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/facebook/common/references/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/aa$1;->b:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 63
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/aa$1;->b:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 64
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/aa;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v1

    .line 62
    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/f/d;

    .line 72
    invoke-static {}, Lcom/facebook/imagepipeline/b/f;->a()Lcom/facebook/imagepipeline/b/f;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/f/g;->a:Lcom/facebook/imagepipeline/f/h;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/facebook/imagepipeline/f/d;-><init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/c;Lcom/facebook/imagepipeline/f/h;I)V

    .line 69
    invoke-static {v1}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object v0

    goto :goto_0
.end method
