.class Lcom/facebook/common/c/b$a;
.super Ljava/lang/Object;
.source "ConstrainedExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/common/c/b;


# direct methods
.method private constructor <init>(Lcom/facebook/common/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/c/b;Lcom/facebook/common/c/b$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/facebook/common/c/b$a;-><init>(Lcom/facebook/common/c/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v0}, Lcom/facebook/common/c/b;->a(Lcom/facebook/common/c/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v0}, Lcom/facebook/common/c/b;->c(Lcom/facebook/common/c/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v1}, Lcom/facebook/common/c/b;->a(Lcom/facebook/common/c/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v0}, Lcom/facebook/common/c/b;->d(Lcom/facebook/common/c/b;)V

    .line 192
    :goto_1
    return-void

    .line 182
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/common/c/b;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "%s: Worker has nothing to run"

    iget-object v2, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v2}, Lcom/facebook/common/c/b;->b(Lcom/facebook/common/c/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v1}, Lcom/facebook/common/c/b;->c(Lcom/facebook/common/c/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v2}, Lcom/facebook/common/c/b;->a(Lcom/facebook/common/c/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    iget-object v1, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v1}, Lcom/facebook/common/c/b;->d(Lcom/facebook/common/c/b;)V

    .line 191
    :goto_2
    throw v0

    .line 189
    :cond_1
    invoke-static {}, Lcom/facebook/common/c/b;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "%s: worker finished; %d workers left"

    iget-object v3, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v3}, Lcom/facebook/common/c/b;->b(Lcom/facebook/common/c/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/facebook/common/c/b;->a()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "%s: worker finished; %d workers left"

    iget-object v4, p0, Lcom/facebook/common/c/b$a;->a:Lcom/facebook/common/c/b;

    invoke-static {v4}, Lcom/facebook/common/c/b;->b(Lcom/facebook/common/c/b;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method
