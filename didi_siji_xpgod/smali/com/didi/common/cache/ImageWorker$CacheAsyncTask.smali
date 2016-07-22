.class public Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;
.super Lcom/didi/common/cache/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/cache/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/cache/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/cache/ImageWorker;


# direct methods
.method protected constructor <init>(Lcom/didi/common/cache/ImageWorker;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    invoke-direct {p0}, Lcom/didi/common/cache/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 559
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 573
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 561
    :pswitch_0
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    invoke-virtual {v0}, Lcom/didi/common/cache/ImageWorker;->clearCacheInternal()V

    goto :goto_0

    .line 564
    :pswitch_1
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    invoke-virtual {v0}, Lcom/didi/common/cache/ImageWorker;->initDiskCacheInternal()V

    goto :goto_0

    .line 567
    :pswitch_2
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    invoke-virtual {v0}, Lcom/didi/common/cache/ImageWorker;->flushCacheInternal()V

    goto :goto_0

    .line 570
    :pswitch_3
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    invoke-virtual {v0}, Lcom/didi/common/cache/ImageWorker;->closeCacheInternal()V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
