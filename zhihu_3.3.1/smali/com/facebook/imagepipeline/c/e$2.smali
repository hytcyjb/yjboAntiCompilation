.class Lcom/facebook/imagepipeline/c/e$2;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/a;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/d;
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
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/cache/common/a;

.field final synthetic c:Lcom/facebook/imagepipeline/c/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/e;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/e$2;->c:Lcom/facebook/imagepipeline/c/e;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/e$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/facebook/imagepipeline/c/e$2;->b:Lcom/facebook/cache/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/f/e;
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$2;->c:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$2;->b:Lcom/facebook/cache/common/a;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/c/u;->a(Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    invoke-static {}, Lcom/facebook/imagepipeline/c/e;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    iget-object v3, p0, Lcom/facebook/imagepipeline/c/e$2;->b:Lcom/facebook/cache/common/a;

    invoke-interface {v3}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$2;->c:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v1}, Lcom/facebook/imagepipeline/c/e;->b(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/c/n;->g()V

    .line 167
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    invoke-static {}, Lcom/facebook/imagepipeline/c/e;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/e;->close()V

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 151
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/c/e;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Did not find image for %s in staging area"

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/e$2;->b:Lcom/facebook/cache/common/a;

    invoke-interface {v2}, Lcom/facebook/cache/common/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$2;->c:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/e;->b(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/n;->h()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$2;->c:Lcom/facebook/imagepipeline/c/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$2;->b:Lcom/facebook/cache/common/a;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    :try_start_1
    new-instance v0, Lcom/facebook/imagepipeline/f/e;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :try_start_2
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const/4 v0, 0x0

    .line 174
    :cond_3
    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/e$2;->a()Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    return-object v0
.end method
