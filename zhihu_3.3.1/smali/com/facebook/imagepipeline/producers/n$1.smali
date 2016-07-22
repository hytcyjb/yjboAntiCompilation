.class Lcom/facebook/imagepipeline/producers/n$1;
.super Ljava/lang/Object;
.source "DiskCacheProducer.java"

# interfaces
.implements Lbolts/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/n;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/c",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/aj;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/j;

.field final synthetic d:Lcom/facebook/imagepipeline/c/e;

.field final synthetic e:Lcom/facebook/cache/common/a;

.field final synthetic f:Lcom/facebook/imagepipeline/producers/ah;

.field final synthetic g:Lcom/facebook/imagepipeline/producers/n;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n$1;->g:Lcom/facebook/imagepipeline/producers/n;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/n$1;->a:Lcom/facebook/imagepipeline/producers/aj;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/n$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/n$1;->c:Lcom/facebook/imagepipeline/producers/j;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/n$1;->d:Lcom/facebook/imagepipeline/c/e;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/n$1;->e:Lcom/facebook/cache/common/a;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/n$1;->f:Lcom/facebook/imagepipeline/producers/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lbolts/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/n$1;->b(Lbolts/d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbolts/d;)Ljava/lang/Void;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/d",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 89
    invoke-virtual {p1}, Lbolts/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lbolts/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/d;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$1;->a:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->b:Ljava/lang/String;

    const-string v2, "DiskCacheProducer"

    invoke-interface {v0, v1, v2, v5}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$1;->c:Lcom/facebook/imagepipeline/producers/j;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j;->b()V

    .line 120
    :goto_0
    return-object v5

    .line 93
    :cond_1
    invoke-virtual {p1}, Lbolts/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$1;->a:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->b:Ljava/lang/String;

    const-string v2, "DiskCacheProducer"

    invoke-virtual {p1}, Lbolts/d;->f()Ljava/lang/Exception;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 95
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/n$1;->g:Lcom/facebook/imagepipeline/producers/n;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/n$1;->c:Lcom/facebook/imagepipeline/producers/j;

    new-instance v0, Lcom/facebook/imagepipeline/producers/n$a;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->g:Lcom/facebook/imagepipeline/producers/n;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/n$1;->c:Lcom/facebook/imagepipeline/producers/j;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/n$1;->d:Lcom/facebook/imagepipeline/c/e;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/n$1;->e:Lcom/facebook/cache/common/a;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/n$a;-><init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/producers/n$1;)V

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->f:Lcom/facebook/imagepipeline/producers/ah;

    invoke-static {v6, v7, v0, v1}, Lcom/facebook/imagepipeline/producers/n;->a(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lbolts/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/f/e;

    .line 101
    if-eqz v0, :cond_3

    .line 102
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->a:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/n$1;->b:Ljava/lang/String;

    const-string v3, "DiskCacheProducer"

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/n$1;->a:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/n$1;->b:Ljava/lang/String;

    .line 105
    invoke-static {v4, v6, v7}, Lcom/facebook/imagepipeline/producers/n;->a(Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v4

    .line 102
    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->c:Lcom/facebook/imagepipeline/producers/j;

    const/high16 v2, 0x3f80

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/j;->b(F)V

    .line 107
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->c:Lcom/facebook/imagepipeline/producers/j;

    invoke-interface {v1, v0, v7}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 108
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/e;->close()V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$1;->a:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->b:Ljava/lang/String;

    const-string v2, "DiskCacheProducer"

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/n$1;->a:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/n$1;->b:Ljava/lang/String;

    const/4 v6, 0x0

    .line 113
    invoke-static {v3, v4, v6}, Lcom/facebook/imagepipeline/producers/n;->a(Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    .line 110
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/n$1;->g:Lcom/facebook/imagepipeline/producers/n;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/n$1;->c:Lcom/facebook/imagepipeline/producers/j;

    new-instance v0, Lcom/facebook/imagepipeline/producers/n$a;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->g:Lcom/facebook/imagepipeline/producers/n;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/n$1;->c:Lcom/facebook/imagepipeline/producers/j;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/n$1;->d:Lcom/facebook/imagepipeline/c/e;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/n$1;->e:Lcom/facebook/cache/common/a;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/n$a;-><init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/producers/n$1;)V

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$1;->f:Lcom/facebook/imagepipeline/producers/ah;

    invoke-static {v6, v7, v0, v1}, Lcom/facebook/imagepipeline/producers/n;->a(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    goto :goto_0
.end method
