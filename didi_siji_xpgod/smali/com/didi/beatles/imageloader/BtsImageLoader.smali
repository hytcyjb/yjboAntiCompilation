.class public Lcom/didi/beatles/imageloader/BtsImageLoader;
.super Ljava/lang/Object;
.source "BtsImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/imageloader/BtsImageLoader$1;,
        Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;,
        Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;
    }
.end annotation


# static fields
.field private static final BTS_IAMGE_CACHE_DIR:Ljava/lang/String; = "/bts_image_cache/"

.field private static sInstance:Lcom/didi/beatles/imageloader/BtsImageLoader;


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

    iput-object v0, p0, Lcom/didi/beatles/imageloader/BtsImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/imageloader/BtsImageLoader;->mContext:Landroid/content/Context;

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
    invoke-static {p0}, Lcom/didi/beatles/imageloader/BtsMd5FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/didi/beatles/imageloader/BtsImageLoader;->getInstance()Lcom/didi/beatles/imageloader/BtsImageLoader;

    move-result-object v3

    .line 48
    .local v3, loader:Lcom/didi/beatles/imageloader/BtsImageLoader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/beatles/imageloader/BtsImageLoaderUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/bts_image_cache/"

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
    new-instance v4, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;

    iget-object v5, v3, Lcom/didi/beatles/imageloader/BtsImageLoader;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1}, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 53
    .local v4, task:Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;
    iget-object v5, v3, Lcom/didi/beatles/imageloader/BtsImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/didi/beatles/imageloader/BtsImageLoader;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/didi/beatles/imageloader/BtsImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/beatles/imageloader/BtsImageLoader;->sInstance:Lcom/didi/beatles/imageloader/BtsImageLoader;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/didi/beatles/imageloader/BtsImageLoader;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/beatles/imageloader/BtsImageLoader;->sInstance:Lcom/didi/beatles/imageloader/BtsImageLoader;

    .line 26
    :cond_0
    sget-object v0, Lcom/didi/beatles/imageloader/BtsImageLoader;->sInstance:Lcom/didi/beatles/imageloader/BtsImageLoader;
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
