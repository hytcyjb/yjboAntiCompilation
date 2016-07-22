.class Lcom/facebook/imagepipeline/c/e$1;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/a;)Lbolts/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/common/a;

.field final synthetic b:Lcom/facebook/imagepipeline/c/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/e$1;->b:Lcom/facebook/imagepipeline/c/e;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/e$1;->a:Lcom/facebook/cache/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$1;->b:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$1;->a:Lcom/facebook/cache/common/a;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/c/u;->a(Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/e;->close()V

    .line 91
    invoke-static {}, Lcom/facebook/imagepipeline/c/e;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Found image for %s in staging area"

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/e$1;->a:Lcom/facebook/cache/common/a;

    invoke-interface {v2}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$1;->b:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/e;->b(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/n;->g()V

    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-static {}, Lcom/facebook/imagepipeline/c/e;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Did not find image for %s in staging area"

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/e$1;->a:Lcom/facebook/cache/common/a;

    invoke-interface {v2}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$1;->b:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/e;->b(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/n;->h()V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$1;->b:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/e;->c(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/cache/disk/j;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$1;->a:Lcom/facebook/cache/common/a;

    invoke-interface {v0, v1}, Lcom/facebook/cache/disk/j;->b(Lcom/facebook/cache/common/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/e$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
