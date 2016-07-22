.class public final Lcom/octo/android/robospice/priority/e;
.super Lcom/octo/android/robospice/priority/b;
.source "PriorityThreadPoolExecutor.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/octo/android/robospice/priority/b;-><init>(III)V

    .line 24
    return-void
.end method

.method public static a(III)Lcom/octo/android/robospice/priority/e;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/octo/android/robospice/priority/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/octo/android/robospice/priority/e;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/octo/android/robospice/priority/c;

    move-object v0, p1

    check-cast v0, Lcom/octo/android/robospice/priority/d;

    invoke-interface {v0}, Lcom/octo/android/robospice/priority/d;->a()I

    move-result v0

    invoke-direct {v1, p1, v0, p2}, Lcom/octo/android/robospice/priority/c;-><init>(Ljava/lang/Runnable;ILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/octo/android/robospice/priority/e;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/octo/android/robospice/priority/e;->execute(Ljava/lang/Runnable;)V

    .line 75
    return-object v0
.end method
