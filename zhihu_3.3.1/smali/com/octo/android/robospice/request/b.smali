.class public Lcom/octo/android/robospice/request/b;
.super Ljava/lang/Object;
.source "DefaultRequestRunner.java"

# interfaces
.implements Lcom/octo/android/robospice/request/f;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/octo/android/robospice/persistence/b;

.field private final c:Landroid/content/Context;

.field private d:Z

.field private final e:Lcom/octo/android/robospice/b/b;

.field private final f:Lcom/octo/android/robospice/request/e;

.field private g:Z

.field private h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/octo/android/robospice/persistence/b;Ljava/util/concurrent/ExecutorService;Lcom/octo/android/robospice/request/e;Lcom/octo/android/robospice/b/b;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octo/android/robospice/request/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 54
    iput-object p1, p0, Lcom/octo/android/robospice/request/b;->c:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/octo/android/robospice/request/b;->b:Lcom/octo/android/robospice/persistence/b;

    .line 56
    iput-object p5, p0, Lcom/octo/android/robospice/request/b;->e:Lcom/octo/android/robospice/b/b;

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/octo/android/robospice/request/b;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iput-object p3, p0, Lcom/octo/android/robospice/request/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 61
    iput-object p4, p0, Lcom/octo/android/robospice/request/b;->f:Lcom/octo/android/robospice/request/e;

    .line 63
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->e:Lcom/octo/android/robospice/b/b;

    invoke-interface {v0, p1}, Lcom/octo/android/robospice/b/b;->b(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->b:Lcom/octo/android/robospice/persistence/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/octo/android/robospice/persistence/b;->a(Ljava/lang/Class;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->b:Lcom/octo/android/robospice/persistence/b;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/persistence/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 291
    const-string v0, "%02d ms"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(JLcom/octo/android/robospice/request/a;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/octo/android/robospice/request/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 295
    const-string v0, "It tooks %s to process request %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p0

    invoke-static {v4, v5}, Lcom/octo/android/robospice/request/b;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/octo/android/robospice/request/a;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 296
    return-void
.end method

.method private a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/persistence/exception/SpiceException;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Lcom/octo/android/robospice/persistence/exception/SpiceException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->c()Lcom/octo/android/robospice/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->c()Lcom/octo/android/robospice/c/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/octo/android/robospice/c/b;->a(Lcom/octo/android/robospice/persistence/exception/SpiceException;)V

    .line 272
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->c()Lcom/octo/android/robospice/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octo/android/robospice/c/b;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/octo/android/robospice/request/b$2;

    invoke-direct {v1, p0, p1}, Lcom/octo/android/robospice/request/b$2;-><init>(Lcom/octo/android/robospice/request/b;Lcom/octo/android/robospice/request/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->f:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/persistence/exception/SpiceException;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 246
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/octo/android/robospice/request/b;->g:Z

    .line 247
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 251
    return-void

    .line 249
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/octo/android/robospice/request/b;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Lcom/octo/android/robospice/request/a;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/octo/android/robospice/request/b;->g:Z

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping request : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as runner is stopped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/octo/android/robospice/request/b;->c(Lcom/octo/android/robospice/request/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/octo/android/robospice/request/b;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/octo/android/robospice/request/b;->d:Z

    .line 239
    return-void
.end method

.method protected b(Lcom/octo/android/robospice/request/a;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing request : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 90
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->f:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/e;->b(Lcom/octo/android/robospice/request/a;)Lcom/octo/android/robospice/request/listener/e;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lcom/octo/android/robospice/request/a;->a(Lcom/octo/android/robospice/request/listener/e;)V

    .line 94
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->i()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading request from cache : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 98
    sget-object v0, Lcom/octo/android/robospice/request/listener/RequestStatus;->READING_FROM_CACHE:Lcom/octo/android/robospice/request/listener/RequestStatus;

    invoke-virtual {p1, v0}, Lcom/octo/android/robospice/request/a;->a(Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    .line 99
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->i()J

    move-result-wide v4

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/octo/android/robospice/request/b;->a(Ljava/lang/Class;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request loaded from cache : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 104
    iget-object v1, p0, Lcom/octo/android/robospice/request/b;->f:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v1, p1, v0}, Lcom/octo/android/robospice/request/e;->b(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;)V

    .line 105
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V

    .line 210
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/octo/android/robospice/request/b;->a(Ljava/lang/Class;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/octo/android/robospice/request/b;->f:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v1, p1, v0}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/octo/android/robospice/persistence/exception/SpiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_1
    :goto_1
    const-string v0, "Cache content not available or expired or disabled"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 130
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->e:Lcom/octo/android/robospice/b/b;

    iget-object v1, p0, Lcom/octo/android/robospice/request/b;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/octo/android/robospice/b/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 131
    const-string v0, "Network is down."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 133
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->f:Lcom/octo/android/robospice/request/e;

    new-instance v1, Lcom/octo/android/robospice/exception/NoNetworkException;

    invoke-direct {v1}, Lcom/octo/android/robospice/exception/NoNetworkException;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/persistence/exception/SpiceException;)V

    .line 138
    :cond_2
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "Cache file could not be read."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lc/a/a/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 118
    iget-boolean v1, p0, Lcom/octo/android/robospice/request/b;->d:Z

    if-eqz v1, :cond_3

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/octo/android/robospice/request/b;->a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/persistence/exception/SpiceException;)V

    .line 120
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/octo/android/robospice/request/b;->b:Lcom/octo/android/robospice/persistence/b;

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->d()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/octo/android/robospice/persistence/b;->a(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 124
    const-string v1, "Cache file deleted."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lc/a/a/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    .line 144
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->g()Z

    move-result v1

    if-nez v1, :cond_6

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An exception occurred during request network execution :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lc/a/a/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 155
    new-instance v1, Lcom/octo/android/robospice/exception/NetworkException;

    const-string v4, "Exception occurred during invocation of web service."

    invoke-direct {v1, v4, v0}, Lcom/octo/android/robospice/exception/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v1}, Lcom/octo/android/robospice/request/b;->a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/persistence/exception/SpiceException;)V

    .line 159
    :goto_2
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V

    goto/16 :goto_0

    .line 148
    :cond_5
    :try_start_2
    const-string v0, "Calling netwok request."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 149
    sget-object v0, Lcom/octo/android/robospice/request/listener/RequestStatus;->LOADING_FROM_NETWORK:Lcom/octo/android/robospice/request/listener/RequestStatus;

    invoke-virtual {p1, v0}, Lcom/octo/android/robospice/request/a;->a(Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    .line 150
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->a()Ljava/lang/Object;

    move-result-object v1

    .line 151
    const-string v0, "Network request call ended."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 167
    :try_start_3
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V
    :try_end_3
    .catch Lcom/octo/android/robospice/persistence/exception/SpiceException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 181
    :catch_2
    move-exception v0

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An exception occurred during service execution :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/octo/android/robospice/persistence/exception/SpiceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lc/a/a/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 183
    iget-boolean v4, p0, Lcom/octo/android/robospice/request/b;->d:Z

    if-eqz v4, :cond_9

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/octo/android/robospice/request/b;->a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/persistence/exception/SpiceException;)V

    .line 185
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V

    goto/16 :goto_0

    .line 157
    :cond_6
    const-string v0, "An exception occurred during request network execution but request was cancelled, so listeners are not called."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2

    .line 171
    :cond_7
    :try_start_4
    const-string v0, "Start caching content..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 172
    sget-object v0, Lcom/octo/android/robospice/request/listener/RequestStatus;->WRITING_TO_CACHE:Lcom/octo/android/robospice/request/listener/RequestStatus;

    invoke-virtual {p1, v0}, Lcom/octo/android/robospice/request/a;->a(Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    .line 173
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/octo/android/robospice/request/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 174
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V

    goto/16 :goto_0

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->f:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1, v1}, Lcom/octo/android/robospice/request/e;->b(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;)V

    .line 179
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V
    :try_end_4
    .catch Lcom/octo/android/robospice/persistence/exception/SpiceException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 188
    :cond_9
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->g()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 189
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V

    goto/16 :goto_0

    .line 197
    :cond_a
    iget-object v2, p0, Lcom/octo/android/robospice/request/b;->f:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v2, p1, v1}, Lcom/octo/android/robospice/request/e;->b(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lcom/octo/android/robospice/request/b;->b:Lcom/octo/android/robospice/persistence/b;

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/octo/android/robospice/persistence/b;->a(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 200
    const-string v1, "Cache file deleted."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc/a/a/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 206
    :cond_b
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->f:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1, v1}, Lcom/octo/android/robospice/request/e;->b(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;)V

    .line 207
    invoke-static {v2, v3, p1}, Lcom/octo/android/robospice/request/b;->a(JLcom/octo/android/robospice/request/a;)V

    goto/16 :goto_0
.end method

.method protected c(Lcom/octo/android/robospice/request/a;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/octo/android/robospice/request/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/octo/android/robospice/request/b$1;

    invoke-direct {v1, p0, p1}, Lcom/octo/android/robospice/request/b$1;-><init>(Lcom/octo/android/robospice/request/b;Lcom/octo/android/robospice/request/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 230
    invoke-virtual {p1, v0}, Lcom/octo/android/robospice/request/a;->a(Ljava/util/concurrent/Future;)V

    .line 231
    return-void
.end method
