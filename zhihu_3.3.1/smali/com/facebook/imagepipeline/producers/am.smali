.class public abstract Lcom/facebook/imagepipeline/producers/am;
.super Lcom/facebook/common/c/h;
.source "StatefulProducerRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/c/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/facebook/imagepipeline/producers/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/j",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/imagepipeline/producers/aj;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/aj;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/common/c/h;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/am;->b:Lcom/facebook/imagepipeline/producers/j;

    .line 36
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/am;->c:Lcom/facebook/imagepipeline/producers/aj;

    .line 37
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/am;->d:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/am;->e:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/am;->c:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/am;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/am;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;)V
    .locals 5
    .parameter

    .prologue
    .line 54
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/am;->c:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/am;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/am;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/am;->c:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/am;->e:Ljava/lang/String;

    .line 58
    invoke-interface {v0, v4}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/am;->b(Ljava/lang/Exception;)Ljava/util/Map;

    move-result-object v0

    .line 54
    :goto_0
    invoke-interface {v1, v2, v3, p1, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 59
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/am;->b:Lcom/facebook/imagepipeline/producers/j;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Throwable;)V

    .line 60
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/am;->c:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/am;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/am;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/am;->c:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/am;->e:Ljava/lang/String;

    .line 48
    invoke-interface {v0, v4}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/am;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/am;->b:Lcom/facebook/imagepipeline/producers/j;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 50
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/Exception;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 64
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/am;->c:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/am;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/am;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/am;->c:Lcom/facebook/imagepipeline/producers/aj;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/am;->e:Ljava/lang/String;

    .line 67
    invoke-interface {v0, v4}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/am;->e()Ljava/util/Map;

    move-result-object v0

    .line 64
    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/am;->b:Lcom/facebook/imagepipeline/producers/j;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j;->b()V

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method
