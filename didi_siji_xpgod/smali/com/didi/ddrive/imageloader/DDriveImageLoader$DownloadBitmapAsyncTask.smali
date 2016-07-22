.class Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;
.super Lcom/didi/common/cache/AsyncTask;
.source "DDriveImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/imageloader/DDriveImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadBitmapAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/cache/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/InternalError;",
        "Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "context"
    .parameter "imageView"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/didi/common/cache/AsyncTask;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;->mImageView:Landroid/widget/ImageView;

    .line 81
    iput-object p1, p0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    .line 86
    iget-object v6, p0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/io/File;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v8, 0x1e00000

    invoke-static {v6, v7, v8, v9}, Lcom/didi/ddrive/imageloader/DDriveDiskLruCache;->openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/didi/ddrive/imageloader/DDriveDiskLruCache;

    move-result-object v2

    .line 87
    .local v2, diskCache:Lcom/didi/ddrive/imageloader/DDriveDiskLruCache;
    new-instance v1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;-><init>(Lcom/didi/ddrive/imageloader/DDriveImageLoader$1;)V

    .line 88
    .local v1, bitmapWithKey:Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;
    aget-object v6, p1, v10

    iput-object v6, v1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mKey:Ljava/lang/String;

    .line 89
    if-eqz v2, :cond_0

    .line 90
    aget-object v6, p1, v10

    invoke-virtual {v2, v6}, Lcom/didi/ddrive/imageloader/DDriveDiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    .line 91
    :cond_0
    iget-object v6, v1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 92
    :cond_1
    const/4 v5, 0x0

    .line 93
    .local v5, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 95
    .local v3, out:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 97
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    if-eqz v2, :cond_2

    .line 99
    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget-object v7, v1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v7}, Lcom/didi/ddrive/imageloader/DDriveDiskLruCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_2
    if-eqz v5, :cond_3

    .line 104
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 106
    :cond_3
    if-eqz v3, :cond_4

    .line 108
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    .end local v3           #out:Ljava/io/BufferedOutputStream;
    .end local v4           #url:Ljava/net/URL;
    .end local v5           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_4
    :goto_0
    return-object v1

    .line 100
    .restart local v3       #out:Ljava/io/BufferedOutputStream;
    .restart local v5       #urlConnection:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v6

    .line 103
    if-eqz v5, :cond_5

    .line 104
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 106
    :cond_5
    if-eqz v3, :cond_4

    .line 108
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v6

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_6

    .line 104
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 106
    :cond_6
    if-eqz v3, :cond_7

    .line 108
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 110
    :cond_7
    :goto_1
    throw v6

    .line 109
    .restart local v4       #url:Ljava/net/URL;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v4           #url:Ljava/net/URL;
    :catch_3
    move-exception v7

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mKey:Ljava/lang/String;

    .line 122
    .local v0, bitmapKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/imageloader/DDriveImageLoader$DownloadBitmapAsyncTask;->onPostExecute(Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;)V

    return-void
.end method
