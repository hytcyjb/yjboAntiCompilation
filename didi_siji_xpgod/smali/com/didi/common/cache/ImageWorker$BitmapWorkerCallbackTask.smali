.class Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;
.super Lcom/didi/common/cache/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/cache/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerCallbackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/cache/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;

.field private final mImageLoadCallback:Lcom/didi/common/cache/ImageWorker$ImageloadCallback;

.field final synthetic this$0:Lcom/didi/common/cache/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/didi/common/cache/ImageWorker;Ljava/lang/Object;Lcom/didi/common/cache/ImageWorker$ImageloadCallback;)V
    .locals 0
    .parameter
    .parameter "data"
    .parameter "callback"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    invoke-direct {p0}, Lcom/didi/common/cache/AsyncTask;-><init>()V

    .line 398
    iput-object p2, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->mData:Ljava/lang/Object;

    .line 399
    iput-object p3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->mImageLoadCallback:Lcom/didi/common/cache/ImageWorker$ImageloadCallback;

    .line 400
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "params"

    .prologue
    .line 409
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->mData:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, dataString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 411
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 414
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$100(Lcom/didi/common/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 415
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    iget-boolean v3, v3, Lcom/didi/common/cache/ImageWorker;->mPauseWork:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 417
    :try_start_1
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$100(Lcom/didi/common/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v3

    goto :goto_0

    .line 420
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$200(Lcom/didi/common/cache/ImageWorker;)Lcom/didi/common/cache/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$300(Lcom/didi/common/cache/ImageWorker;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$200(Lcom/didi/common/cache/ImageWorker;)Lcom/didi/common/cache/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/didi/common/cache/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 434
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$300(Lcom/didi/common/cache/ImageWorker;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 435
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    iget-object v4, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->mData:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/didi/common/cache/ImageWorker;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 442
    :cond_2
    if-eqz v0, :cond_3

    .line 443
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasHoneycomb()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 445
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    iget-object v3, v3, Lcom/didi/common/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 452
    .restart local v2       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$200(Lcom/didi/common/cache/ImageWorker;)Lcom/didi/common/cache/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 453
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$200(Lcom/didi/common/cache/ImageWorker;)Lcom/didi/common/cache/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/didi/common/cache/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 457
    :cond_3
    return-object v2

    .line 420
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 449
    :cond_4
    new-instance v2, Lcom/didi/common/cache/RecyclingBitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    iget-object v3, v3, Lcom/didi/common/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Lcom/didi/common/cache/RecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v2       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 393
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 480
    invoke-super {p0, p1}, Lcom/didi/common/cache/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/didi/common/cache/ImageWorker;->access$100(Lcom/didi/common/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/didi/common/cache/ImageWorker;->access$100(Lcom/didi/common/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 483
    monitor-exit v1

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 393
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v0}, Lcom/didi/common/cache/ImageWorker;->access$300(Lcom/didi/common/cache/ImageWorker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    const/4 p1, 0x0

    .line 472
    :cond_1
    if-eqz p1, :cond_2

    .line 473
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->mImageLoadCallback:Lcom/didi/common/cache/ImageWorker$ImageloadCallback;

    invoke-interface {v0, p1}, Lcom/didi/common/cache/ImageWorker$ImageloadCallback;->onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 476
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 393
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
