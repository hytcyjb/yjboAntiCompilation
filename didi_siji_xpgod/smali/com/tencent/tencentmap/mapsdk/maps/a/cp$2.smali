.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cp$2;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    .local p2, $anonymous0:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    .line 114
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 4

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$2;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    .line 122
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 121
    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :catch_2
    move-exception v1

    goto :goto_0
.end method
