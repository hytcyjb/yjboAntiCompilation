.class Lnet/tsz/afinal/core/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/tsz/afinal/core/AsyncTask;-><init>()V
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
.field final synthetic this$0:Lnet/tsz/afinal/core/AsyncTask;


# direct methods
.method constructor <init>(Lnet/tsz/afinal/core/AsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    .local p2, $anonymous0:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lnet/tsz/afinal/core/AsyncTask$3;->this$0:Lnet/tsz/afinal/core/AsyncTask;

    .line 150
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/core/AsyncTask$3;->this$0:Lnet/tsz/afinal/core/AsyncTask;

    invoke-virtual {p0}, Lnet/tsz/afinal/core/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v2

    #calls: Lnet/tsz/afinal/core/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lnet/tsz/afinal/core/AsyncTask;->access$3(Lnet/tsz/afinal/core/AsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 163
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 157
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    .line 159
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 158
    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 160
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 161
    .local v0, e:Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lnet/tsz/afinal/core/AsyncTask$3;->this$0:Lnet/tsz/afinal/core/AsyncTask;

    const/4 v2, 0x0

    #calls: Lnet/tsz/afinal/core/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lnet/tsz/afinal/core/AsyncTask;->access$3(Lnet/tsz/afinal/core/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0
.end method
