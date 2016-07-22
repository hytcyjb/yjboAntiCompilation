.class public Lcom/octo/android/robospice/priority/b;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PausableThreadPoolExecutor.java"


# direct methods
.method public constructor <init>(III)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/octo/android/robospice/priority/PausablePriorityBlockingQueue;

    invoke-direct {v7}, Lcom/octo/android/robospice/priority/PausablePriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/octo/android/robospice/priority/a;

    invoke-direct {v8, p3}, Lcom/octo/android/robospice/priority/a;-><init>(I)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 28
    return-void
.end method
