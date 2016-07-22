.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;
.super Landroid/os/AsyncTask;
.source "BtsWeixinLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private c:Landroid/content/Context;

.field private filePath:Ljava/lang/String;

.field private listener:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageLoaderListener;

.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Landroid/content/Context;Ljava/lang/String;Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageLoaderListener;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->c:Landroid/content/Context;

    .line 417
    iput-object p3, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->url:Ljava/lang/String;

    .line 418
    iput-object p4, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->listener:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageLoaderListener;

    .line 419
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 407
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "arg0"

    .prologue
    const/4 v9, 0x0

    .line 423
    const/4 v3, 0x0

    .line 425
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->url:Ljava/lang/String;

    iget-object v7, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->c:Landroid/content/Context;

    invoke-virtual {p0, v6, v7}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->getBitmapFromURL(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->bitmap:Landroid/graphics/Bitmap;

    .line 426
    iget-object v6, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_1

    .line 454
    if-eqz v3, :cond_0

    .line 455
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 461
    :cond_0
    :goto_0
    return-object v9

    .line 430
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    const-string v7, "image"

    invoke-static {v6, v7}, Lcom/didi/common/cache/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 431
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 432
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 435
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v6, "save.jpg"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 437
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 440
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, path:Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 443
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_3
    iget-object v6, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->bitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {v6, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 444
    iget-object v6, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->bitmap:Landroid/graphics/Bitmap;

    .line 447
    iput-object v5, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->filePath:Ljava/lang/String;

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 454
    if-eqz v4, :cond_4

    .line 455
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    move-object v3, v4

    .line 458
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 457
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 459
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 450
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v5           #path:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 451
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 454
    if-eqz v3, :cond_0

    .line 455
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 457
    :catch_2
    move-exception v6

    goto :goto_0

    .line 453
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 454
    :goto_2
    if-eqz v3, :cond_5

    .line 455
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 458
    :cond_5
    :goto_3
    throw v6

    .line 457
    :catch_3
    move-exception v6

    goto :goto_0

    :catch_4
    move-exception v7

    goto :goto_3

    .line 453
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    .restart local v5       #path:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 450
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public getBitmapFromURL(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "link"
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    .line 477
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 478
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 479
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 480
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 481
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 482
    .local v2, input:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 489
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #url:Ljava/net/URL;
    :goto_0
    return-object v3

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    const-string v5, "getBmpFromUrl error: "

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 489
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 407
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->listener:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageLoaderListener;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->listener:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageLoaderListener;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageLoaderListener;->onImageDownloaded(Ljava/lang/String;)V

    .line 470
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 472
    invoke-static {}, Lcom/didi/common/util/TraceLog;->saveLog()V

    .line 473
    return-void
.end method
