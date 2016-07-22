.class public Lcom/facebook/common/c/b;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ConstrainedExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/c/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/Executor;

.field private volatile d:I

.field private final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/common/c/b$a;

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/common/c/b;

    sput-object v0, Lcom/facebook/common/c/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 53
    if-gtz p2, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max concurrency must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/facebook/common/c/b;->b:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/facebook/common/c/b;->c:Ljava/util/concurrent/Executor;

    .line 58
    iput p2, p0, Lcom/facebook/common/c/b;->d:I

    .line 59
    iput-object p4, p0, Lcom/facebook/common/c/b;->e:Ljava/util/concurrent/BlockingQueue;

    .line 60
    new-instance v0, Lcom/facebook/common/c/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/c/b$a;-><init>(Lcom/facebook/common/c/b;Lcom/facebook/common/c/b$1;)V

    iput-object v0, p0, Lcom/facebook/common/c/b;->f:Lcom/facebook/common/c/b$a;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/c/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/c/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/common/c/b;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/common/c/b;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/common/c/b;->e:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/common/c/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/common/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/common/c/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 127
    :goto_0
    iget v1, p0, Lcom/facebook/common/c/b;->d:I

    if-ge v0, v1, :cond_0

    .line 128
    add-int/lit8 v1, v0, 0x1

    .line 129
    iget-object v2, p0, Lcom/facebook/common/c/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Lcom/facebook/common/c/b;->a:Ljava/lang/Class;

    const-string v2, "%s: starting worker %d of %d"

    iget-object v3, p0, Lcom/facebook/common/c/b;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lcom/facebook/common/c/b;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/common/c/b;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/facebook/common/c/b;->f:Lcom/facebook/common/c/b$a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return-void

    .line 136
    :cond_1
    sget-object v0, Lcom/facebook/common/c/b;->a:Ljava/lang/Class;

    const-string v1, "%s: race in startWorkerIfNeeded; retrying"

    iget-object v2, p0, Lcom/facebook/common/c/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/facebook/common/c/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/common/c/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/common/c/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/common/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/common/c/b;->b()V

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "runnable parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/c/b;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/common/c/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queue is full, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/common/c/b;->e:Ljava/util/concurrent/BlockingQueue;

    .line 106
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/c/b;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/facebook/common/c/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 111
    if-le v0, v1, :cond_2

    iget-object v2, p0, Lcom/facebook/common/c/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    sget-object v1, Lcom/facebook/common/c/b;->a:Ljava/lang/Class;

    const-string v2, "%s: max pending work in queue = %d"

    iget-object v3, p0, Lcom/facebook/common/c/b;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/facebook/common/c/b;->b()V

    .line 116
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
