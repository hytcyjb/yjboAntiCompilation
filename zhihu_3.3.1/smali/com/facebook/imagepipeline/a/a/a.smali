.class public Lcom/facebook/imagepipeline/a/a/a;
.super Ljava/lang/Object;
.source "OkHttpImagePipelineConfigFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/squareup/okhttp/s;)Lcom/facebook/imagepipeline/d/d$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/facebook/imagepipeline/d/d;->a(Landroid/content/Context;)Lcom/facebook/imagepipeline/d/d$a;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/a/a/b;

    invoke-direct {v1, p1}, Lcom/facebook/imagepipeline/a/a/b;-><init>(Lcom/squareup/okhttp/s;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/d/d$a;->a(Lcom/facebook/imagepipeline/producers/ad;)Lcom/facebook/imagepipeline/d/d$a;

    move-result-object v0

    return-object v0
.end method
