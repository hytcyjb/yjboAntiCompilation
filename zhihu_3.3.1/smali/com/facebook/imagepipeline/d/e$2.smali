.class Lcom/facebook/imagepipeline/d/e$2;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/d/e;->b()Lcom/facebook/imagepipeline/animated/impl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/d/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/d/e;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/e$2;->a:Lcom/facebook/imagepipeline/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/animated/base/j;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 170
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/a;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/e$2;->a:Lcom/facebook/imagepipeline/d/e;

    .line 171
    invoke-static {v1}, Lcom/facebook/imagepipeline/d/e;->a(Lcom/facebook/imagepipeline/d/e;)Lcom/facebook/imagepipeline/animated/b/a;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/a;-><init>(Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/imagepipeline/animated/base/j;Landroid/graphics/Rect;)V

    return-object v0
.end method
