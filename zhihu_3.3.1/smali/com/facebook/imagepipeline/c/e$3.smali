.class Lcom/facebook/imagepipeline/c/e$3;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/common/a;

.field final synthetic b:Lcom/facebook/imagepipeline/f/e;

.field final synthetic c:Lcom/facebook/imagepipeline/c/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/e$3;->c:Lcom/facebook/imagepipeline/c/e;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/e$3;->a:Lcom/facebook/cache/common/a;

    iput-object p3, p0, Lcom/facebook/imagepipeline/c/e$3;->b:Lcom/facebook/imagepipeline/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$3;->c:Lcom/facebook/imagepipeline/c/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$3;->a:Lcom/facebook/cache/common/a;

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/e$3;->b:Lcom/facebook/imagepipeline/f/e;

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$3;->c:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$3;->a:Lcom/facebook/cache/common/a;

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/e$3;->b:Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/c/u;->b(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)Z

    .line 233
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$3;->b:Lcom/facebook/imagepipeline/f/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V

    .line 235
    return-void

    .line 232
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$3;->c:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v1}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/u;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/e$3;->a:Lcom/facebook/cache/common/a;

    iget-object v3, p0, Lcom/facebook/imagepipeline/c/e$3;->b:Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/imagepipeline/c/u;->b(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;)Z

    .line 233
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$3;->b:Lcom/facebook/imagepipeline/f/e;

    invoke-static {v1}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V

    throw v0
.end method
