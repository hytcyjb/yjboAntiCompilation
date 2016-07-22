.class final Lcom/didi/im/helper/IMImageHelper$1;
.super Lthread/Job;
.source "IMImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/helper/IMImageHelper;->loadBitmap(Ljava/lang/String;Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/im/helper/IMImageHelper$1;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/im/helper/IMImageHelper$1;->val$callback:Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 6

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/didi/im/helper/IMImageHelper$1;->val$key:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/im/helper/IMImageHelper;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 59
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    iget-object v3, p0, Lcom/didi/im/helper/IMImageHelper$1;->val$callback:Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;

    invoke-interface {v3, v0}, Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/didi/im/helper/IMImageHelper$1;->val$key:Ljava/lang/String;

    .line 67
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/helper/ImageFetcher;->fetchBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 70
    iget-object v3, p0, Lcom/didi/im/helper/IMImageHelper$1;->val$callback:Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;

    invoke-interface {v3, v0}, Lcom/didi/im/helper/IMImageHelper$BitmapLoaderCallback;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/didi/common/util/ImageUtil;->writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;

    goto :goto_0
.end method
