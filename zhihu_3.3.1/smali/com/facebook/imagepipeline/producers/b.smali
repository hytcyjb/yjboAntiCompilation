.class public abstract Lcom/facebook/imagepipeline/producers/b;
.super Ljava/lang/Object;
.source "BaseConsumer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/b;->a:Z

    .line 40
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(F)V
    .locals 0
    .parameter

    .prologue
    .line 117
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "unhandled exception"

    invoke-static {v0, v1, p1}, Lcom/facebook/common/d/a;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Throwable;)V
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/b;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/b;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/producers/b;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(F)V
    .locals 1
    .parameter

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/b;->a(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/producers/b;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    :try_start_1
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/b;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/b;->a(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/producers/b;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/b;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/b;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/producers/b;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
