.class final Lcom/facebook/imagepipeline/d/e$3;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/d/e;->a(Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/imagepipeline/b/e;)Lcom/facebook/imagepipeline/animated/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/animated/b/a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/e$3;->a:Lcom/facebook/imagepipeline/animated/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/animated/base/j;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 214
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/a;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/e$3;->a:Lcom/facebook/imagepipeline/animated/b/a;

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/a;-><init>(Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/imagepipeline/animated/base/j;Landroid/graphics/Rect;)V

    return-object v0
.end method
