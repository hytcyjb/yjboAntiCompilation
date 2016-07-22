.class Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;
.super Ljava/lang/Thread;
.source "BtsHandlePicTransparentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizePhotoThread"
.end annotation


# instance fields
.field private final mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

.field private final mObject:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;


# direct methods
.method private constructor <init>(Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;)V
    .locals 0
    .parameter "handler"
    .parameter "object"

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;->mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    .line 425
    iput-object p2, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;->mObject:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;

    .line 426
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;-><init>(Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;)V

    return-void
.end method

.method private resizePhoto(ILjava/lang/String;)Z
    .locals 10
    .parameter "maxSize"
    .parameter "path"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 446
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 447
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 448
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 449
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v4, v7, v8

    .line 450
    .local v4, sumSize:I
    if-gt v4, p1, :cond_0

    .line 476
    :goto_0
    return v5

    .line 453
    :cond_0
    int-to-float v7, v4

    mul-float/2addr v7, v9

    int-to-float v8, p1

    div-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 454
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 455
    const/4 v0, 0x0

    .line 457
    :try_start_0
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 461
    if-nez v0, :cond_1

    move v5, v6

    .line 462
    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/OutOfMemoryError;
    move v5, v6

    .line 459
    goto :goto_0

    .line 466
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 467
    .local v3, out:Ljava/io/OutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {v0, v7, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 468
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 471
    .end local v3           #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    :goto_1
    move v5, v6

    .line 476
    goto :goto_0

    .line 473
    :catch_2
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    const/high16 v1, 0x10

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;->mObject:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;

    iget-object v2, v2, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;->mPhotoPath:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;->resizePhoto(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;->mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 436
    .local v0, msg:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;->mObject:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;->mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;->sendMessage(Landroid/os/Message;)Z

    .line 438
    return-void

    .line 434
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;->mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method
