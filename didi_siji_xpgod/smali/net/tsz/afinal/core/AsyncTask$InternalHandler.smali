.class Lnet/tsz/afinal/core/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/core/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 496
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 497
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 503
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;

    .line 504
    .local v0, result:Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 512
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget-object v1, v0, Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;->mTask:Lnet/tsz/afinal/core/AsyncTask;

    iget-object v2, v0, Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    #calls: Lnet/tsz/afinal/core/AsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lnet/tsz/afinal/core/AsyncTask;->access$0(Lnet/tsz/afinal/core/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    :pswitch_1
    iget-object v1, v0, Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;->mTask:Lnet/tsz/afinal/core/AsyncTask;

    iget-object v2, v0, Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/core/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
