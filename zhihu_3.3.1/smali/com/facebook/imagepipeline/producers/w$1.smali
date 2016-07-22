.class Lcom/facebook/imagepipeline/producers/w$1;
.super Lcom/facebook/imagepipeline/producers/am;
.source "LocalExifThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/w;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/am",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/w;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w$1;->c:Lcom/facebook/imagepipeline/producers/w;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/w$1;->b:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/am;-><init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/f/e;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-static {p1}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V

    .line 94
    return-void
.end method

.method protected b(Lcom/facebook/imagepipeline/f/e;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/f/e;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const-string v1, "createdThumbnail"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    check-cast p1, Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/w$1;->a(Lcom/facebook/imagepipeline/f/e;)V

    return-void
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/w$1;->d()Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 75
    check-cast p1, Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/w$1;->b(Lcom/facebook/imagepipeline/f/e;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/facebook/imagepipeline/f/e;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w$1;->b:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/w$1;->c:Lcom/facebook/imagepipeline/producers/w;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/producers/w;->a(Landroid/net/Uri;)Landroid/media/ExifInterface;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/w$1;->c:Lcom/facebook/imagepipeline/producers/w;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/w;->a(Lcom/facebook/imagepipeline/producers/w;)Lcom/facebook/imagepipeline/memory/w;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/memory/w;->b([B)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/w$1;->c:Lcom/facebook/imagepipeline/producers/w;

    invoke-static {v2, v1, v0}, Lcom/facebook/imagepipeline/producers/w;->a(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    goto :goto_0
.end method
