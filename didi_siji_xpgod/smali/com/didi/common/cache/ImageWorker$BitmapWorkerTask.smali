.class Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;
.super Lcom/didi/common/cache/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/cache/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
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
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/lang/Object;

.field final synthetic this$0:Lcom/didi/common/cache/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/didi/common/cache/ImageWorker;Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter "data"
    .parameter "imageView"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    invoke-direct {p0}, Lcom/didi/common/cache/AsyncTask;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    .line 277
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 378
    iget-object v2, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 379
    .local v1, imageView:Landroid/widget/ImageView;
    #calls: Lcom/didi/common/cache/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;
    invoke-static {v1}, Lcom/didi/common/cache/ImageWorker;->access$500(Landroid/widget/ImageView;)Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 381
    .local v0, bitmapWorkerTask:Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_0

    .line 385
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_0
    return-object v1

    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "params"

    .prologue
    .line 287
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, dataString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 289
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 292
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$100(Lcom/didi/common/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 293
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    iget-boolean v3, v3, Lcom/didi/common/cache/ImageWorker;->mPauseWork:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 295
    :try_start_1
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$100(Lcom/didi/common/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v3

    goto :goto_0

    .line 298
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$200(Lcom/didi/common/cache/ImageWorker;)Lcom/didi/common/cache/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$300(Lcom/didi/common/cache/ImageWorker;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$200(Lcom/didi/common/cache/ImageWorker;)Lcom/didi/common/cache/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/didi/common/cache/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imagecache: loadimage getBitmapFromDiskCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 314
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$300(Lcom/didi/common/cache/ImageWorker;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 316
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    iget-object v4, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/didi/common/cache/ImageWorker;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imagecache: loadimage processBitmap dataString "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 324
    :cond_2
    if-eqz v0, :cond_3

    .line 325
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasHoneycomb()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 327
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    iget-object v3, v3, Lcom/didi/common/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 328
    .restart local v2       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    const-string v3, "imagecache: loadimage hasHoneycomb new BitmapDrawable"

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 336
    :goto_2
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$200(Lcom/didi/common/cache/ImageWorker;)Lcom/didi/common/cache/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 337
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;
    invoke-static {v3}, Lcom/didi/common/cache/ImageWorker;->access$200(Lcom/didi/common/cache/ImageWorker;)Lcom/didi/common/cache/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/didi/common/cache/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 341
    :cond_3
    return-object v2

    .line 298
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 307
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 332
    :cond_5
    new-instance v2, Lcom/didi/common/cache/RecyclingBitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    iget-object v3, v3, Lcom/didi/common/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Lcom/didi/common/cache/RecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 333
    .restart local v2       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    const-string v3, "imagecache: loadimage has not Honeycomb new RecyclingBitmapDrawable"

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 271
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/didi/common/cache/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/didi/common/cache/ImageWorker;->access$100(Lcom/didi/common/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/didi/common/cache/ImageWorker;->access$100(Lcom/didi/common/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 370
    monitor-exit v1

    .line 371
    return-void

    .line 370
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
    .line 271
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #getter for: Lcom/didi/common/cache/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v1}, Lcom/didi/common/cache/ImageWorker;->access$300(Lcom/didi/common/cache/ImageWorker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    :cond_0
    const/4 p1, 0x0

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 356
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imagecache: loadimage onPostExecute value is null: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " imageview is null: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 358
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 359
    const-string v1, "imagecache: loadimage setImageDrawable done"

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/didi/common/cache/ImageWorker;

    #calls: Lcom/didi/common/cache/ImageWorker;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v1, v0, p1}, Lcom/didi/common/cache/ImageWorker;->access$400(Lcom/didi/common/cache/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 356
    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 271
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
