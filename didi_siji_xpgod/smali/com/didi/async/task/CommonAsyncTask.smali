.class public Lcom/didi/async/task/CommonAsyncTask;
.super Landroid/os/AsyncTask;
.source "CommonAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/didi/async/task/AsyncListenrInter;


# direct methods
.method public constructor <init>(Lcom/didi/async/task/AsyncListenrInter;)V
    .locals 0
    .parameter "inter"

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/didi/async/task/CommonAsyncTask;->mListener:Lcom/didi/async/task/AsyncListenrInter;

    .line 10
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/async/task/CommonAsyncTask;->cancel(Z)Z

    .line 24
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "params"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/async/task/CommonAsyncTask;->mListener:Lcom/didi/async/task/AsyncListenrInter;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/didi/async/task/CommonAsyncTask;->mListener:Lcom/didi/async/task/AsyncListenrInter;

    invoke-interface {v0}, Lcom/didi/async/task/AsyncListenrInter;->doInBack()V

    .line 30
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/async/task/CommonAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 20
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/async/task/CommonAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 15
    return-void
.end method
