.class public Lcom/facebook/imagepipeline/f/a;
.super Lcom/facebook/imagepipeline/f/c;
.source "CloseableAnimatedImage.java"


# instance fields
.field private a:Lcom/facebook/imagepipeline/animated/base/j;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/j;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/imagepipeline/f/c;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/animated/base/j;

    .line 25
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/animated/base/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/a;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/animated/base/j;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/j;->a()Lcom/facebook/imagepipeline/animated/base/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/h;->g()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/animated/base/j;

    if-nez v0, :cond_0

    .line 42
    monitor-exit p0

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/animated/base/j;

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/animated/base/j;

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/j;->d()V

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()Lcom/facebook/imagepipeline/animated/base/j;
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/animated/base/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
