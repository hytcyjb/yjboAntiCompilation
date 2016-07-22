.class Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;
.super Lcom/didi/common/cache/AsyncTask;
.source "BtsImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/imageloader/BtsImageLoader;
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
        "Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;",
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
    .line 61
    invoke-direct {p0}, Lcom/didi/common/cache/AsyncTask;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;->mImageView:Landroid/widget/ImageView;

    .line 63
    iput-object p1, p0, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    .line 68
    iget-object v6, p0, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/io/File;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v8, 0x1e00000

    invoke-static {v6, v7, v8, v9}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/didi/beatles/imageloader/BtsDiskLruCache;

    move-result-object v2

    .line 69
    .local v2, diskCache:Lcom/didi/beatles/imageloader/BtsDiskLruCache;
    new-instance v1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;-><init>(Lcom/didi/beatles/imageloader/BtsImageLoader$1;)V

    .line 70
    .local v1, bitmapWithKey:Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;
    aget-object v6, p1, v10

    iput-object v6, v1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mKey:Ljava/lang/String;

    .line 71
    if-eqz v2, :cond_0

    .line 72
    aget-object v6, p1, v10

    invoke-virtual {v2, v6}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    :cond_0
    iget-object v6, v1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    :cond_1
    const/4 v5, 0x0

    .line 75
    .local v5, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 77
    .local v3, out:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 79
    if-eqz v2, :cond_4

    .line 80
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 81
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v2, v6}, Lcom/didi/beatles/imageloader/BtsDiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    if-eqz v5, :cond_2

    .line 89
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91
    :cond_2
    if-eqz v3, :cond_3

    .line 93
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    .end local v3           #out:Ljava/io/BufferedOutputStream;
    .end local v4           #url:Ljava/net/URL;
    .end local v5           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_3
    :goto_1
    return-object v1

    .line 83
    .restart local v3       #out:Ljava/io/BufferedOutputStream;
    .restart local v4       #url:Ljava/net/URL;
    .restart local v5       #urlConnection:Ljava/net/HttpURLConnection;
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 85
    .end local v4           #url:Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 88
    if-eqz v5, :cond_5

    .line 89
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91
    :cond_5
    if-eqz v3, :cond_3

    .line 93
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 94
    :catch_1
    move-exception v6

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_6

    .line 89
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91
    :cond_6
    if-eqz v3, :cond_7

    .line 93
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 95
    :cond_7
    :goto_2
    throw v6

    .line 94
    .restart local v4       #url:Ljava/net/URL;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v4           #url:Ljava/net/URL;
    :catch_3
    move-exception v7

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mKey:Ljava/lang/String;

    .line 107
    .local v0, bitmapKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/imageloader/BtsImageLoader$DownloadBitmapAsyncTask;->onPostExecute(Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;)V

    return-void
.end method
