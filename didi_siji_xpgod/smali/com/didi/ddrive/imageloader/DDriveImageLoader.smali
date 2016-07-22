.class public Lcom/didi/ddrive/imageloader/DDriveImageLoader;
.super Ljava/lang/Object;
.source "DDriveImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/imageloader/DDriveImageLoader$1;,
        Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;,
        Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;
    }
.end annotation


# static fields
.field private static final DDRIVE_IAMGE_CACHE_DIR:Ljava/lang/String; = "/ddrive_image_cache/"

.field private static sInstance:Lcom/didi/ddrive/imageloader/DDriveImageLoader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 8
    .parameter "url"
    .parameter "imageView"
    .parameter "defaultRes"

    .prologue
    .line 39
    const-string v5, ""

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 40
    if-lez p2, :cond_0

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/didi/ddrive/imageloader/DDriveMd5FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->getInstance()Lcom/didi/ddrive/imageloader/DDriveImageLoader;

    move-result-object v3

    .line 48
    .local v3, loader:Lcom/didi/ddrive/imageloader/DDriveImageLoader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/ddrive/imageloader/DDriveImageLoaderUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ddrive_image_cache/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, dirFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_2
    new-instance v4, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;

    iget-object v5, v3, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1}, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 53
    .local v4, task:Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;
    iget-object v5, v3, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;

    goto :goto_0
.end method

.method public static getDownloadedBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v5

    .line 59
    :cond_1
    invoke-static {p1}, Lcom/didi/ddrive/imageloader/DDriveMd5FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, key:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/ddrive/imageloader/DDriveImageLoaderUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ddrive_image_cache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, dir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, dirFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 64
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v7, 0x1e00000

    invoke-static {p0, v6, v7, v8}, Lcom/didi/ddrive/imageloader/DDriveDiskLruCache;->openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/didi/ddrive/imageloader/DDriveDiskLruCache;

    move-result-object v3

    .line 65
    .local v3, diskCache:Lcom/didi/ddrive/imageloader/DDriveDiskLruCache;
    new-instance v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;

    invoke-direct {v0, v5}, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;-><init>(Lcom/didi/ddrive/imageloader/DDriveImageLoader$1;)V

    .line 66
    .local v0, bitmapWithKey:Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;
    iput-object v4, v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mKey:Ljava/lang/String;

    .line 67
    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {v3, v4}, Lcom/didi/ddrive/imageloader/DDriveDiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    .line 69
    :cond_3
    iget-object v6, v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    iget-object v5, v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/didi/ddrive/imageloader/DDriveImageLoader;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/didi/ddrive/imageloader/DDriveImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->sInstance:Lcom/didi/ddrive/imageloader/DDriveImageLoader;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/ddrive/imageloader/DDriveImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->sInstance:Lcom/didi/ddrive/imageloader/DDriveImageLoader;

    .line 26
    :cond_0
    sget-object v0, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->sInstance:Lcom/didi/ddrive/imageloader/DDriveImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
