.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;
.super Ljava/util/AbstractQueue;
.source "HighThreadExecutor.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field transient a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a",
            "<TE;>.b<TE;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq;

.field private c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/concurrent/locks/ReentrantLock;

.field private final h:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->f:Ljava/util/concurrent/locks/Condition;

    .line 125
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 128
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->h:Ljava/util/concurrent/locks/Condition;

    .line 132
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    .line 133
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 134
    return-void
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a",
            "<TE;>.b<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    .local p1, node:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iput-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 370
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iput-object p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;)V
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    const/4 v4, 0x0

    .line 379
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iget-object v0, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 380
    .local v0, first:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iput-object v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 381
    iput-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 382
    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;

    .line 383
    .local v1, x:Ljava/lang/Object;,"TE;"
    iput-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;

    .line 384
    return-object v1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 420
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 421
    .local v0, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 427
    return-void

    .line 424
    :catchall_0
    move-exception v1

    .line 425
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 426
    throw v1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 434
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 435
    .local v0, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 441
    return-void

    .line 438
    :catchall_0
    move-exception v1

    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 440
    throw v1
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 399
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 400
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 401
    return-void
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a",
            "<TE;>.b<TE;>;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a",
            "<TE;>.b<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    .local p1, p:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    .local p2, trail:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;

    .line 411
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iput-object v0, p2, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 412
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 414
    :cond_0
    return-void
.end method

.method public final drainTo(Ljava/util/Collection;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public final drainTo(Ljava/util/Collection;I)I
    .locals 11
    .parameter
    .parameter "maxElements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 154
    :cond_0
    if-ne p1, p0, :cond_1

    .line 155
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 156
    :cond_1
    if-gtz p2, :cond_2

    .line 175
    :goto_0
    return v7

    .line 158
    :cond_2
    const/4 v4, 0x0

    .line 159
    .local v4, signalNotFull:Z
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 160
    .local v5, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    :try_start_0
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-static {p2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 164
    .local v2, n:I
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 165
    .local v0, h:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    const/4 v1, 0x0

    .line 167
    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_5

    .line 175
    if-lez v1, :cond_3

    .line 180
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 181
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v9, v1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v8

    iget v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v8, v9, :cond_6

    move v4, v6

    .line 185
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 186
    if-eqz v4, :cond_4

    .line 187
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c()V

    :cond_4
    move v7, v2

    .line 175
    goto :goto_0

    .line 168
    :cond_5
    :try_start_1
    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 169
    .local v3, p:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    iget-object v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v8, 0x0

    iput-object v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;

    .line 171
    iput-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    move-object v0, v3

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #p:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    :cond_6
    move v4, v7

    .line 181
    goto :goto_2

    .line 176
    :catchall_0
    move-exception v8

    .line 178
    if-lez v1, :cond_7

    .line 180
    :try_start_2
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 181
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v10, v1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v9

    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ne v9, v10, :cond_9

    move v4, v6

    .line 183
    :cond_7
    :goto_3
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    .end local v0           #h:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    :catchall_1
    move-exception v6

    .line 185
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 186
    if-eqz v4, :cond_8

    .line 187
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c()V

    .line 188
    :cond_8
    throw v6

    .restart local v0       #h:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_9
    move v4, v7

    .line 181
    goto :goto_3
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;)V

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    const/4 v4, 0x0

    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ne v5, v6, :cond_2

    .line 214
    :cond_1
    :goto_0
    return v4

    .line 198
    :cond_2
    const/4 v0, -0x1

    .line 199
    .local v0, c:I
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    invoke-direct {v2, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;Ljava/lang/Object;)V

    .line 200
    .local v2, node:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 201
    .local v3, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 203
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ge v5, v6, :cond_3

    .line 204
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;)V

    .line 205
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 206
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ge v5, v6, :cond_3

    .line 207
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 212
    if-nez v0, :cond_4

    .line 213
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d()V

    .line 214
    :cond_4
    if-ltz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v4

    .line 210
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 211
    throw v4
.end method

.method public final offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 219
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    .line 220
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 221
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 222
    .local v2, nanos:J
    const/4 v0, 0x0

    .line 223
    .local v0, c:I
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 224
    .local v4, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 225
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 227
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-eq v5, v6, :cond_3

    .line 232
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    invoke-direct {v5, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;)V

    .line 233
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 234
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ge v5, v6, :cond_1

    .line 235
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 239
    if-nez v0, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d()V

    .line 241
    :cond_2
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 228
    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_4

    .line 237
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 229
    const/4 v5, 0x0

    goto :goto_1

    .line 230
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v5

    .line 237
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 238
    throw v5
.end method

.method public final peek()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    const/4 v2, 0x0

    .line 324
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_0

    .line 333
    :goto_0
    return-object v2

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 327
    .local v1, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 329
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iget-object v0, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .local v0, first:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    if-nez v0, :cond_1

    .line 335
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 333
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 334
    .end local v0           #first:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    :catchall_0
    move-exception v2

    .line 335
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    throw v2
.end method

.method public final poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 342
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_1

    .line 343
    const/4 v3, 0x0

    .line 360
    :cond_0
    :goto_0
    return-object v3

    .line 344
    :cond_1
    const/4 v3, 0x0

    .line 345
    .local v3, x:Ljava/lang/Object;,"TE;"
    const/4 v0, -0x1

    .line 346
    .local v0, c:I
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 347
    .local v2, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 349
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_2

    .line 350
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->b()Ljava/lang/Object;

    move-result-object v3

    .line 351
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 352
    const/4 v4, 0x1

    if-le v0, v4, :cond_2

    .line 353
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    .end local v3           #x:Ljava/lang/Object;,"TE;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 358
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ne v0, v4, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c()V

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v4

    .line 356
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 357
    throw v4
.end method

.method public final poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 8
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 246
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    const/4 v5, 0x0

    .line 247
    .local v5, x:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x0

    .line 248
    .local v0, c:I
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 249
    .local v2, nanos:J
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 250
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 251
    .local v4, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 253
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->b()Ljava/lang/Object;

    move-result-object v5

    .line 259
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 260
    const/4 v6, 0x1

    if-le v0, v6, :cond_0

    .line 261
    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_0
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 265
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ne v0, v6, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c()V

    .line 267
    .end local v5           #x:Ljava/lang/Object;,"TE;"
    :cond_1
    :goto_1
    return-object v5

    .line 254
    .restart local v5       #x:Ljava/lang/Object;,"TE;"
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    .line 263
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    const/4 v5, 0x0

    goto :goto_1

    .line 256
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 262
    .end local v5           #x:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v6

    .line 263
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 264
    throw v6
.end method

.method public final put(Ljava/lang/Object;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 272
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    .line 273
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 274
    :cond_0
    const/4 v0, 0x0

    .line 275
    .local v0, c:I
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    invoke-direct {v2, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;Ljava/lang/Object;)V

    .line 276
    .local v2, node:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 277
    .local v3, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 278
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 280
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-eq v4, v5, :cond_3

    .line 283
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;)V

    .line 284
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 285
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ge v4, v5, :cond_1

    .line 286
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    if-nez v0, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d()V

    .line 292
    :cond_2
    return-void

    .line 281
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v4

    .line 288
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 289
    throw v4
.end method

.method public final remainingCapacity()I
    .locals 2

    .prologue
    .line 296
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 142
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final take()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 302
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>;"
    const/4 v0, 0x0

    .line 303
    .local v0, c:I
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 304
    .local v1, count:Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 305
    .local v2, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 307
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->b()Ljava/lang/Object;

    move-result-object v3

    .line 311
    .local v3, x:Ljava/lang/Object;,"TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 312
    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    .line 313
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 317
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c:I

    if-ne v0, v4, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->c()V

    .line 319
    :cond_1
    return-object v3

    .line 308
    .end local v3           #x:Ljava/lang/Object;,"TE;"
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v4

    .line 315
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    throw v4
.end method
