.class public Lcom/igexin/a/a/d/c;
.super Ljava/lang/Object;


# static fields
.field static final synthetic h:Z


# instance fields
.field final transient a:Ljava/util/concurrent/locks/ReentrantLock;

.field final transient b:Ljava/util/concurrent/locks/Condition;

.field final c:Ljava/util/TreeSet;

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field e:I

.field f:Lcom/igexin/a/a/d/e;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/igexin/a/a/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/igexin/a/a/d/c;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;Lcom/igexin/a/a/d/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    iput-object p2, p0, Lcom/igexin/a/a/d/c;->f:Lcom/igexin/a/a/d/e;

    return-void
.end method

.method private e()Lcom/igexin/a/a/d/d;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/igexin/a/a/d/c;->a()Lcom/igexin/a/a/d/d;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/d/d;JLjava/util/concurrent/TimeUnit;)I
    .locals 6

    iget-object v1, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/igexin/a/a/d/d;->G:J

    invoke-virtual {p0, p1}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method a()Lcom/igexin/a/a/d/d;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/d/d;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/igexin/a/a/d/d;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/igexin/a/a/d/c;->a()Lcom/igexin/a/a/d/d;

    move-result-object v2

    iget v3, p0, Lcom/igexin/a/a/d/c;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/igexin/a/a/d/c;->e:I

    iput v3, p1, Lcom/igexin/a/a/d/d;->H:I

    iget-object v3, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v2, p1, Lcom/igexin/a/a/d/d;->H:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/igexin/a/a/d/d;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->m()V

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v2, "ScheduleQueue|offer|error"

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final b()Z
    .locals 2

    iget-object v1, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final c()Lcom/igexin/a/a/d/d;
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/igexin/a/a/d/c;->a()Lcom/igexin/a/a/d/d;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/a/a/d/c;->e:I

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0}, Lcom/igexin/a/a/d/d;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    iget-boolean v0, v4, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_1

    iget-boolean v0, v4, Lcom/igexin/a/a/d/d;->y:Z

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    invoke-direct {p0}, Lcom/igexin/a/a/d/c;->e()Lcom/igexin/a/a/d/d;

    move-result-object v0

    sget-boolean v1, Lcom/igexin/a/a/d/c;->h:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/igexin/a/a/d/c;->b()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_5
    iget-object v1, p0, Lcom/igexin/a/a/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v7, v4, Lcom/igexin/a/a/d/d;->G:J

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->f:Lcom/igexin/a/a/d/e;

    iget-boolean v0, v0, Lcom/igexin/a/a/d/e;->y:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->f:Lcom/igexin/a/a/d/e;

    iget-wide v7, v4, Lcom/igexin/a/a/d/d;->G:J

    invoke-virtual {v0, v7, v8}, Lcom/igexin/a/a/d/e;->a(J)V

    :cond_7
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    return-void
.end method
