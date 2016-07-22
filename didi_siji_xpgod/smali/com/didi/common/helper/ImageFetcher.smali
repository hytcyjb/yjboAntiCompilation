.class public Lcom/didi/common/helper/ImageFetcher;
.super Ljava/lang/Object;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/didi/common/helper/ImageFetcher;->download(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/didi/common/helper/ImageFetcher;->download(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static download(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "urlString"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 83
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 85
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 86
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 87
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 88
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v6

    .line 100
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    :cond_0
    if-eqz v4, :cond_1

    .line 104
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .end local v5           #url:Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v6

    .line 105
    .restart local v5       #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 106
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 91
    .local v3, e1:Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    :cond_2
    if-eqz v4, :cond_3

    .line 104
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    move-object v6, v7

    .line 107
    goto :goto_0

    .line 105
    :catch_2
    move-exception v2

    .line 106
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e1:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v2

    .line 94
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    if-eqz v1, :cond_4

    .line 101
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    :cond_4
    if-eqz v4, :cond_5

    .line 104
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_2
    move-object v6, v7

    .line 107
    goto :goto_0

    .line 105
    :catch_4
    move-exception v2

    .line 106
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 96
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 97
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 100
    if-eqz v1, :cond_6

    .line 101
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    :cond_6
    if-eqz v4, :cond_7

    .line 104
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    :goto_3
    move-object v6, v7

    .line 107
    goto :goto_0

    .line 105
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 106
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 100
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_8

    .line 101
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    :cond_8
    if-eqz v4, :cond_9

    .line 104
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 107
    :cond_9
    :goto_4
    throw v6

    .line 105
    :catch_7
    move-exception v2

    .line 106
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private static download(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "urlString"
    .parameter "callback"
    .parameter "op"

    .prologue
    const/4 v7, 0x0

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 115
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 117
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 118
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 119
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 120
    const/4 v6, 0x0

    invoke-static {v4, v6, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 128
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 130
    :cond_0
    if-eqz v4, :cond_1

    .line 132
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v5           #url:Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v6

    .line 133
    .restart local v5       #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 134
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 122
    .local v3, e1:Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 130
    :cond_2
    if-eqz v4, :cond_3

    .line 132
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    move-object v6, v7

    .line 135
    goto :goto_0

    .line 133
    :catch_2
    move-exception v2

    .line 134
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e1:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v2

    .line 125
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    if-eqz v1, :cond_4

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 130
    :cond_4
    if-eqz v4, :cond_5

    .line 132
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_2
    move-object v6, v7

    .line 135
    goto :goto_0

    .line 133
    :catch_4
    move-exception v2

    .line 134
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_6

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 130
    :cond_6
    if-eqz v4, :cond_7

    .line 132
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 135
    :cond_7
    :goto_3
    throw v6

    .line 133
    :catch_5
    move-exception v2

    .line 134
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static fetch(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 47
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/DidiApp;->getmImageFetcher()Lcom/didi/common/cache/ImageFetcher;

    move-result-object v0

    .line 48
    .local v0, imageFetcher:Lcom/didi/common/cache/ImageFetcher;
    invoke-virtual {v0, p0, p1}, Lcom/didi/common/cache/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 49
    return-void
.end method

.method public static fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V
    .locals 1
    .parameter "url"
    .parameter "callback"

    .prologue
    .line 28
    new-instance v0, Lcom/didi/common/helper/ImageFetcher$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/helper/ImageFetcher$1;-><init>(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 43
    .local v0, job:Lthread/Job;
    invoke-static {v0}, Lthread/pool/ImageThreadPool;->submit(Lthread/Job;)V

    .line 44
    return-void
.end method

.method public static fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .parameter "url"
    .parameter "callback"
    .parameter "op"

    .prologue
    .line 57
    new-instance v0, Lcom/didi/common/helper/ImageFetcher$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/common/helper/ImageFetcher$2;-><init>(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    .line 72
    .local v0, job:Lthread/Job;
    invoke-static {v0}, Lthread/pool/ImageThreadPool;->submit(Lthread/Job;)V

    .line 73
    return-void
.end method

.method public static fetchBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/didi/common/helper/ImageFetcher;->download(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static fetchCallback(Ljava/lang/String;Lcom/didi/common/cache/ImageWorker$ImageloadCallback;)V
    .locals 2
    .parameter "url"
    .parameter "callback"

    .prologue
    .line 52
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/DidiApp;->getmImageFetcher()Lcom/didi/common/cache/ImageFetcher;

    move-result-object v0

    .line 53
    .local v0, imageFetcher:Lcom/didi/common/cache/ImageFetcher;
    invoke-virtual {v0, p0, p1}, Lcom/didi/common/cache/ImageFetcher;->loadImageCallback(Ljava/lang/Object;Lcom/didi/common/cache/ImageWorker$ImageloadCallback;)V

    .line 54
    return-void
.end method
