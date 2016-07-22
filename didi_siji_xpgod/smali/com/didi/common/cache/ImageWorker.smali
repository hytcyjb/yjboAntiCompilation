.class public abstract Lcom/didi/common/cache/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/cache/ImageWorker$ImageloadCallback;,
        Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;,
        Lcom/didi/common/cache/ImageWorker$AsyncDrawable;,
        Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;,
        Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final FADE_IN_TIME:I = 0xc8

.field private static final MESSAGE_CLEAR:I = 0x0

.field private static final MESSAGE_CLOSE:I = 0x3

.field private static final MESSAGE_FLUSH:I = 0x2

.field private static final MESSAGE_INIT_DISK_CACHE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageWorker"


# instance fields
.field private mExitTasksEarly:Z

.field private mFadeInBitmap:Z

.field private mImageCache:Lcom/didi/common/cache/ImageCache;

.field private mImageCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field protected mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/cache/ImageWorker;->mFadeInBitmap:Z

    .line 46
    iput-boolean v1, p0, Lcom/didi/common/cache/ImageWorker;->mExitTasksEarly:Z

    .line 47
    iput-boolean v1, p0, Lcom/didi/common/cache/ImageWorker;->mPauseWork:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/cache/ImageWorker;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/cache/ImageWorker;)Lcom/didi/common/cache/ImageCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/cache/ImageWorker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/didi/common/cache/ImageWorker;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$400(Lcom/didi/common/cache/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/didi/common/cache/ImageWorker;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ImageView;)Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/didi/common/cache/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 4
    .parameter "data"
    .parameter "imageView"

    .prologue
    const/4 v2, 0x1

    .line 237
    invoke-static {p1}, Lcom/didi/common/cache/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 239
    .local v1, bitmapWorkerTask:Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_1

    .line 240
    #getter for: Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;
    invoke-static {v1}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->access$000(Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, bitmapData:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 242
    :cond_0
    invoke-virtual {v1, v2}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 248
    .end local v0           #bitmapData:Ljava/lang/Object;
    :cond_1
    :goto_0
    return v2

    .line 245
    .restart local v0       #bitmapData:Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "imageView"

    .prologue
    .line 223
    invoke-static {p0}, Lcom/didi/common/cache/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 224
    .local v0, bitmapWorkerTask:Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;
    if-eqz v0, :cond_0

    .line 225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 227
    :cond_0
    return-void
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;
    .locals 3
    .parameter "imageView"

    .prologue
    .line 258
    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/didi/common/cache/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 261
    check-cast v0, Lcom/didi/common/cache/ImageWorker$AsyncDrawable;

    .line 262
    .local v0, asyncDrawable:Lcom/didi/common/cache/ImageWorker$AsyncDrawable;
    invoke-virtual {v0}, Lcom/didi/common/cache/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    .line 265
    .end local v0           #asyncDrawable:Lcom/didi/common/cache/ImageWorker$AsyncDrawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "imageView"
    .parameter "drawable"

    .prologue
    .line 516
    iget-boolean v1, p0, Lcom/didi/common/cache/ImageWorker;->mFadeInBitmap:Z

    if-eqz v1, :cond_0

    .line 518
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 524
    .local v0, td:Landroid/graphics/drawable/TransitionDrawable;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/didi/common/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 532
    .end local v0           #td:Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addImageCache(Lcom/didi/common/cache/ImageCache$ImageCacheParams;)V
    .locals 4
    .parameter "cacheParams"

    .prologue
    const/4 v3, 0x1

    .line 183
    iput-object p1, p0, Lcom/didi/common/cache/ImageWorker;->mImageCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    .line 184
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCacheParams:Lcom/didi/common/cache/ImageCache$ImageCacheParams;

    invoke-static {v0}, Lcom/didi/common/cache/ImageCache;->getInstance(Lcom/didi/common/cache/ImageCache$ImageCacheParams;)Lcom/didi/common/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    .line 185
    new-instance v0, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;-><init>(Lcom/didi/common/cache/ImageWorker;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;

    .line 186
    return-void
.end method

.method public clearCache()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 607
    new-instance v0, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;-><init>(Lcom/didi/common/cache/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;

    .line 608
    return-void
.end method

.method protected clearCacheInternal()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/ImageCache;->clearCache()V

    .line 587
    :cond_0
    return-void
.end method

.method public closeCache()V
    .locals 4

    .prologue
    .line 615
    new-instance v0, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;-><init>(Lcom/didi/common/cache/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;

    .line 616
    return-void
.end method

.method protected closeCacheInternal()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/ImageCache;->close()V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    .line 600
    :cond_0
    return-void
.end method

.method public flushCache()V
    .locals 4

    .prologue
    .line 611
    new-instance v0, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;-><init>(Lcom/didi/common/cache/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/didi/common/cache/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;

    .line 612
    return-void
.end method

.method protected flushCacheInternal()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/ImageCache;->flush()V

    .line 593
    :cond_0
    return-void
.end method

.method protected getImageCache()Lcom/didi/common/cache/ImageCache;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    return-object v0
.end method

.method protected initDiskCacheInternal()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    invoke-virtual {v0}, Lcom/didi/common/cache/ImageCache;->initDiskCache()V

    .line 581
    :cond_0
    return-void
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 5
    .parameter "data"
    .parameter "imageView"

    .prologue
    .line 73
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v2, 0x0

    .line 79
    .local v2, value:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imagecache: loadimage url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 85
    :cond_2
    if-eqz v2, :cond_3

    .line 86
    const-string v3, "imagecache: loadimage from cache image "

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-static {p1, p2}, Lcom/didi/common/cache/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const-string v3, "imagecache: loadimage from net or disk "

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;-><init>(Lcom/didi/common/cache/ImageWorker;Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 94
    .local v1, task:Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;
    new-instance v0, Lcom/didi/common/cache/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Lcom/didi/common/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/didi/common/cache/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v1}, Lcom/didi/common/cache/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;)V

    .line 96
    .local v0, asyncDrawable:Lcom/didi/common/cache/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    sget-object v3, Lcom/didi/common/cache/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v4}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;

    goto :goto_0
.end method

.method public loadImageCallback(Ljava/lang/Object;Lcom/didi/common/cache/ImageWorker$ImageloadCallback;)V
    .locals 4
    .parameter "data"
    .parameter "callback"

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, value:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/didi/common/cache/ImageWorker;->mImageCache:Lcom/didi/common/cache/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/common/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 117
    :cond_1
    if-eqz v1, :cond_2

    .line 119
    invoke-interface {p2, v1}, Lcom/didi/common/cache/ImageWorker$ImageloadCallback;->onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;-><init>(Lcom/didi/common/cache/ImageWorker;Ljava/lang/Object;Lcom/didi/common/cache/ImageWorker$ImageloadCallback;)V

    .line 127
    .local v0, task:Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;
    sget-object v2, Lcom/didi/common/cache/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/didi/common/cache/ImageWorker$BitmapWorkerCallbackTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;

    goto :goto_0
.end method

.method protected abstract processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public setExitTasksEarly(Z)V
    .locals 1
    .parameter "exitTasksEarly"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/didi/common/cache/ImageWorker;->mExitTasksEarly:Z

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/common/cache/ImageWorker;->setPauseWork(Z)V

    .line 198
    return-void
.end method

.method public setImageFadeIn(Z)V
    .locals 0
    .parameter "fadeIn"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/didi/common/cache/ImageWorker;->mFadeInBitmap:Z

    .line 193
    return-void
.end method

.method public setLoadingImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 148
    return-void
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/didi/common/cache/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 139
    return-void
.end method

.method public setPauseWork(Z)V
    .locals 2
    .parameter "pauseWork"

    .prologue
    .line 547
    iget-object v1, p0, Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_0
    iput-boolean p1, p0, Lcom/didi/common/cache/ImageWorker;->mPauseWork:Z

    .line 549
    iget-boolean v0, p0, Lcom/didi/common/cache/ImageWorker;->mPauseWork:Z

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/didi/common/cache/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 552
    :cond_0
    monitor-exit v1

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
