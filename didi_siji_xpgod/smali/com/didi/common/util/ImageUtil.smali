.class public Lcom/didi/common/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/util/ImageUtil$ImageListener;
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0x500

.field private static final TAG:Ljava/lang/String; = "ImageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    return-void
.end method

.method public static clear(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 685
    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 686
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 687
    :cond_0
    return-void
.end method

.method public static copy(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 949
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    :cond_0
    const/4 v0, 0x0

    .line 951
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 449
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 450
    :cond_0
    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    .line 451
    :cond_1
    const/4 v0, 0x0

    .line 453
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 485
    if-nez p0, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 494
    :goto_0
    return-object v0

    .line 487
    :cond_0
    const/4 v0, 0x0

    .line 489
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x500

    invoke-static {v2, p1, v3}, Lcom/didi/common/util/ImageUtil;->getBitmapOptions(Landroid/content/res/Resources;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 490
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 491
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "maxSize"

    .prologue
    const/4 v0, 0x0

    .line 510
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-object v0

    .line 512
    :cond_1
    invoke-static {p0, p1}, Lcom/didi/common/util/ImageUtil;->getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 513
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {p0, p1, p2}, Lcom/didi/common/util/ImageUtil;->getBitmapOptions(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 514
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 516
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 517
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v4, v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_0

    .line 518
    :cond_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 519
    .local v3, tmp:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    if-eq v3, v0, :cond_3

    .line 520
    invoke-static {v0}, Lcom/didi/common/util/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    .line 521
    :cond_3
    if-eqz v3, :cond_0

    .line 522
    move-object v0, v3

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 725
    const/16 v0, 0x500

    invoke-static {p0, p1, v0}, Lcom/didi/common/util/ImageUtil;->createBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "filename"
    .parameter "maxSize"

    .prologue
    .line 729
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    :cond_0
    const/4 v0, 0x0

    .line 732
    :goto_0
    return-object v0

    .line 731
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 732
    invoke-static {p1, p2}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "src"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"
    .parameter "filter"

    .prologue
    .line 790
    if-nez p0, :cond_0

    .line 791
    const/4 v0, 0x0

    .line 799
    :goto_0
    return-object v0

    .line 792
    :cond_0
    move-object v0, p0

    .line 795
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static/range {p0 .. p6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v1

    goto :goto_0

    .line 797
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static createBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "file"

    .prologue
    .line 445
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .line 461
    if-nez p0, :cond_0

    .line 469
    :goto_0
    return-object v0

    .line 463
    :cond_0
    const/4 v0, 0x0

    .line 465
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v2, 0x500

    :try_start_0
    invoke-static {p0, v2}, Lcom/didi/common/util/ImageUtil;->getBitmapOptions(Ljava/io/InputStream;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 466
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 467
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static createBitmap(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 473
    if-nez p0, :cond_0

    .line 474
    const/4 v0, 0x0

    .line 481
    :goto_0
    return-object v0

    .line 475
    :cond_0
    const/4 v0, 0x0

    .line 477
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "path"

    .prologue
    .line 411
    const/16 v0, 0x500

    invoke-static {p0, v0}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "path"
    .parameter "maxSize"

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-static {p0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object v2

    .line 417
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 420
    const/4 v2, 0x0

    .line 421
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, p1}, Lcom/didi/common/util/ImageUtil;->getBitmapOptions(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 422
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    .line 424
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 425
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    :try_start_1
    invoke-static {v1, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    .line 434
    if-eqz v1, :cond_3

    .line 436
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 439
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 437
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v3

    .line 438
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 439
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 427
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 429
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    if-eqz v0, :cond_0

    .line 436
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 437
    :catch_2
    move-exception v3

    .line 438
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 431
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 432
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 434
    if-eqz v0, :cond_0

    .line 436
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 437
    :catch_4
    move-exception v3

    .line 438
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 434
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    .line 436
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 439
    :cond_2
    :goto_4
    throw v6

    .line 437
    :catch_5
    move-exception v3

    .line 438
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 434
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 431
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 427
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_3
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0
.end method

.method public static createBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 736
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 737
    :cond_0
    const/4 v0, 0x0

    .line 753
    :cond_1
    :goto_0
    return-object v0

    .line 738
    :cond_2
    const/4 v0, 0x0

    .line 739
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 741
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 742
    invoke-static {v2}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 747
    if-eqz v2, :cond_1

    .line 748
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v1

    .line 750
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 743
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 744
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 747
    if-eqz v2, :cond_1

    .line 748
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 749
    :catch_2
    move-exception v1

    .line 750
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 746
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 747
    if-eqz v2, :cond_3

    .line 748
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 751
    :cond_3
    :goto_1
    throw v3

    .line 749
    :catch_3
    move-exception v1

    .line 750
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static createBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 757
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 758
    :cond_0
    const/4 v0, 0x0

    .line 774
    :cond_1
    :goto_0
    return-object v0

    .line 759
    :cond_2
    const/4 v0, 0x0

    .line 760
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 762
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 763
    invoke-static {v2}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 768
    if-eqz v2, :cond_1

    .line 769
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v1

    .line 771
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 764
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 765
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    if-eqz v2, :cond_1

    .line 769
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 770
    :catch_2
    move-exception v1

    .line 771
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 767
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 768
    if-eqz v2, :cond_3

    .line 769
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 772
    :cond_3
    :goto_1
    throw v3

    .line 770
    :catch_3
    move-exception v1

    .line 771
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static createDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "resId"

    .prologue
    .line 498
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createDrawable(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "file"

    .prologue
    const/4 v3, 0x0

    .line 1061
    const/4 v1, 0x0

    .line 1063
    .local v1, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 1067
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_0
    if-nez v1, :cond_0

    .line 1069
    :goto_1
    return-object v3

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1069
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    invoke-static {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public static createReflectedBitmap(Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "b"
    .parameter "reflectionFraction"
    .parameter "dropShadowRadius"
    .parameter "sideShadowColor"

    .prologue
    .line 974
    const/4 v2, 0x0

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 1014
    .end local p0
    :goto_0
    return-object p0

    .line 979
    .restart local p0
    :cond_0
    move/from16 v16, p2

    .line 983
    .local v16, padding:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v16, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v3, v16, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    add-float v5, v5, p1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 987
    .local v18, result:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 990
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 991
    .local v6, dropShadow:Landroid/graphics/Paint;
    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x100

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 992
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int v4, v4, v16

    int-to-float v4, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v5, v16

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 995
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 998
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 999
    .local v15, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1000
    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 1002
    .local v17, reflectionHeight:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    move/from16 v0, v17

    neg-int v4, v0

    sub-int v4, v4, v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int v5, v5, v16

    move/from16 v0, v16

    neg-int v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    move/from16 v0, v16

    invoke-direct {v3, v0, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1004
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1007
    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v9, v2

    const/4 v10, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v11, v2

    const/high16 v12, 0x4000

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v13, p3

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1008
    .local v7, shader:Landroid/graphics/LinearGradient;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 1009
    .local v13, paint:Landroid/graphics/Paint;
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1010
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1011
    move/from16 v0, v16

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v10, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v11, v2

    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    add-float v4, v4, p1

    mul-float/2addr v3, v4

    add-float v12, v2, v3

    move-object v8, v1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 p0, v18

    .line 1014
    goto/16 :goto_0
.end method

.method private static crop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "sourceBitmap"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "recycleSource"

    .prologue
    const/4 v6, 0x0

    .line 257
    if-nez p0, :cond_1

    .line 258
    const/4 v0, 0x0

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    const/4 v0, 0x0

    .line 263
    .local v0, croppedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 264
    .local v2, xDiff:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 265
    .local v4, yDiff:I
    div-int/lit8 v1, v2, 0x2

    .line 266
    .local v1, x:I
    div-int/lit8 v3, v4, 0x2

    .line 270
    .local v3, y:I
    :try_start_0
    invoke-static {p0, v1, v3, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    :goto_1
    if-eqz p3, :cond_0

    if-eq p0, v0, :cond_0

    .line 276
    invoke-static {p0}, Lcom/didi/common/util/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static crop(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmapPath"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-static {p0}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    .local v0, bitmap:Landroid/graphics/Bitmap;
    int-to-float v1, p1

    int-to-float v2, p2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/common/util/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    invoke-static {v0, p1, p2, v4}, Lcom/didi/common/util/ImageUtil;->crop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeWithOOMHandling(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "res"
    .parameter "imagePath"

    .prologue
    .line 955
    const/4 v1, 0x0

    .line 957
    .local v1, result:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 970
    .end local v1           #result:Landroid/graphics/drawable/BitmapDrawable;
    .local v2, result:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v2

    .line 961
    .end local v2           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #result:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #result:Landroid/graphics/drawable/BitmapDrawable;
    move-object v1, v2

    .end local v2           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #result:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    move-object v2, v1

    .line 970
    .end local v1           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #result:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 962
    .end local v2           #result:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #result:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 963
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageUtil"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 967
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 968
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1
.end method

.method public static decorate(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "dots"

    .prologue
    const/4 v9, 0x0

    .line 835
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object p0, v9

    .line 851
    .end local p0
    :goto_0
    return-object p0

    .line 837
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 838
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 840
    .local v7, h:I
    :try_start_0
    array-length v0, p1

    mul-int v1, v3, v7

    if-eq v0, v1, :cond_2

    move-object p0, v9

    .line 841
    goto :goto_0

    .line 842
    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    .line 843
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 846
    :catch_0
    move-exception v8

    .line 847
    .local v8, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    :goto_1
    move-object p0, v9

    .line 851
    goto :goto_0

    .line 848
    :catch_1
    move-exception v8

    .line 849
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static download(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "urlString"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    .line 1073
    const/4 v1, 0x0

    .line 1074
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 1076
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 1078
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1079
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 1080
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1082
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 1090
    if-eqz v1, :cond_0

    .line 1091
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1092
    :cond_0
    if-eqz v4, :cond_1

    .line 1094
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1097
    .end local v5           #url:Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v6

    .line 1095
    .restart local v5       #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 1096
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1083
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 1084
    .local v3, e1:Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1090
    if-eqz v1, :cond_2

    .line 1091
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1092
    :cond_2
    if-eqz v4, :cond_3

    .line 1094
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    move-object v6, v7

    .line 1097
    goto :goto_0

    .line 1095
    :catch_2
    move-exception v2

    .line 1096
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1086
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e1:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v2

    .line 1087
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1090
    if-eqz v1, :cond_4

    .line 1091
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1092
    :cond_4
    if-eqz v4, :cond_5

    .line 1094
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_2
    move-object v6, v7

    .line 1097
    goto :goto_0

    .line 1095
    :catch_4
    move-exception v2

    .line 1096
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1090
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_6

    .line 1091
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1092
    :cond_6
    if-eqz v4, :cond_7

    .line 1094
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1097
    :cond_7
    :goto_3
    throw v6

    .line 1095
    :catch_5
    move-exception v2

    .line 1096
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 75
    if-nez p0, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 80
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_2
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 80
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_2
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public static fetchBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 1102
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/didi/common/util/ImageUtil;->download(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapOptions(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "maxSize"

    .prologue
    const/4 v2, 0x0

    .line 371
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 384
    :goto_0
    return-object v1

    .line 373
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 375
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1}, Lcom/didi/common/util/ImageUtil;->getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 377
    .local v0, fd:Ljava/io/FileDescriptor;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 378
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 380
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_1
    div-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 382
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    goto :goto_0

    .line 380
    :cond_2
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1
.end method

.method public static getBitmapOptions(Landroid/content/res/Resources;II)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "res"
    .parameter "resId"
    .parameter "maxSize"

    .prologue
    .line 362
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 363
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 364
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 365
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    div-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 366
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 367
    return-object v0

    .line 365
    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method public static getBitmapOptions(Ljava/io/InputStream;I)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "is"
    .parameter "maxSize"

    .prologue
    .line 353
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 354
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 355
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 356
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    div-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 357
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 358
    return-object v0

    .line 356
    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method public static getBitmapOptions(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter "path"
    .parameter "maxSize"

    .prologue
    const/4 v3, 0x1

    .line 343
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 344
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 345
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 346
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    if-ge p1, v3, :cond_0

    const/16 p1, 0x500

    .end local p1
    :cond_0
    div-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 348
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 349
    return-object v0

    .line 346
    .restart local p1
    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method public static getFileDescriptor(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/FileDescriptor;
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 388
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 389
    :cond_0
    const/4 v2, 0x0

    .line 407
    :cond_1
    :goto_0
    return-object v2

    .line 390
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 392
    .local v4, res:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 393
    .local v3, parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 395
    .local v2, fd:Ljava/io/FileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 396
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 401
    if-eqz v3, :cond_1

    .line 402
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 397
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 398
    .local v1, e1:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    if-eqz v3, :cond_1

    .line 402
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 403
    :catch_2
    move-exception v0

    .line 404
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 400
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 401
    if-eqz v3, :cond_3

    .line 402
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 405
    :cond_3
    :goto_1
    throw v5

    .line 403
    :catch_3
    move-exception v0

    .line 404
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getImageNameByTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 905
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 906
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getImageNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "postfix"

    .prologue
    .line 920
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/didi/common/util/ImageUtil;->getImageNameFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageNameFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "postfix"
    .parameter "ignoreTag"

    .prologue
    .line 932
    invoke-static {p0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 945
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 934
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 935
    .local v2, lastIndex:I
    if-gez v2, :cond_2

    .line 936
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 937
    :cond_2
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 938
    .local v0, beginIndex:I
    const-string v4, "%2F"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v3, v4, 0x3

    .line 939
    .local v3, slashIndex:I
    const-string v4, "%252F"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x5

    .line 940
    .local v1, finalSlashIndex:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 942
    if-lt v0, v2, :cond_3

    .line 943
    const/4 p0, 0x0

    goto :goto_0

    .line 945
    :cond_3
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getIntArray(Landroid/graphics/Bitmap;)[I
    .locals 9
    .parameter "bitmap"

    .prologue
    .line 809
    if-nez p0, :cond_0

    .line 810
    const/4 v1, 0x0

    .line 822
    :goto_0
    return-object v1

    .line 811
    :cond_0
    const/4 v1, 0x0

    .line 812
    .local v1, pix:[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 813
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 815
    .local v7, h:I
    mul-int v0, v3, v7

    :try_start_0
    new-array v1, v0, [I

    .line 816
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 817
    :catch_0
    move-exception v8

    .line 818
    .local v8, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 819
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 820
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 195
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 208
    :goto_0
    return-object v0

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 200
    .local v0, resizedBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 205
    goto :goto_0

    .line 207
    :cond_2
    invoke-static {p0}, Lcom/didi/common/util/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static refresh(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;I)I
    .locals 2
    .parameter "iv"
    .parameter "imgTagId"
    .parameter "bitmap"
    .parameter "resId"

    .prologue
    .line 708
    if-nez p0, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 721
    :goto_0
    return v0

    .line 710
    :cond_0
    const/4 v0, 0x0

    .line 711
    .local v0, hashCode:I
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 712
    .local v1, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    if-eq v1, p2, :cond_1

    .line 713
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 714
    invoke-static {v1}, Lcom/didi/common/util/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    .line 716
    :cond_1
    if-nez p2, :cond_2

    .line 717
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 720
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 719
    :cond_2
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static refresh(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "iv"
    .parameter "imgTagId"
    .parameter "bitmap"
    .parameter "defaultBitmap"

    .prologue
    .line 698
    if-nez p0, :cond_0

    .line 705
    .end local p3
    :goto_0
    return-void

    .line 700
    .restart local p3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 701
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    if-eq v0, p2, :cond_1

    .line 702
    invoke-static {v0}, Lcom/didi/common/util/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    .line 703
    :cond_1
    if-nez p2, :cond_2

    .end local p3
    :goto_1
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 704
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .restart local p3
    :cond_2
    move-object p3, p2

    .line 703
    goto :goto_1
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "aMaxWidth"
    .parameter "aMaxHeight"

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 105
    .local v5, originWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 108
    .local v4, originHeight:I
    if-ge v5, p1, :cond_1

    if-ge v4, p2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object p0

    .line 112
    :cond_1
    move v3, v5

    .line 113
    .local v3, newWidth:I
    move v2, v4

    .line 115
    .local v2, newHeight:I
    if-le v5, p1, :cond_2

    .line 116
    move v3, p1

    .line 118
    int-to-double v7, v5

    const-wide/high16 v9, 0x3ff0

    mul-double/2addr v7, v9

    int-to-double v9, p1

    div-double v0, v7, v9

    .line 119
    .local v0, i:D
    int-to-double v7, v4

    div-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v2, v7

    .line 121
    const/4 v7, 0x1

    invoke-static {p0, v3, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 124
    .end local v0           #i:D
    :cond_2
    if-le v2, p2, :cond_0

    .line 125
    move v2, p2

    .line 127
    sub-int v7, v4, p2

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    double-to-int v6, v7

    .line 128
    .local v6, startPointY:I
    const/4 v7, 0x0

    invoke-static {p0, v7, v6, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static revise(Landroid/graphics/Bitmap;IIIZZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"

    .prologue
    .line 539
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/didi/common/util/ImageUtil;->revise(Landroid/graphics/Bitmap;IIIZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static revise(Landroid/graphics/Bitmap;IIIZZZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"
    .parameter "recycleSource"

    .prologue
    .line 591
    if-nez p0, :cond_1

    .line 592
    const/4 p0, 0x0

    .line 601
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 593
    .restart local p0
    :cond_1
    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    :cond_2
    if-lez p3, :cond_5

    if-gtz p1, :cond_3

    if-lez p2, :cond_5

    .line 594
    :cond_3
    invoke-static {p0, p1, p2, p6}, Lcom/didi/common/util/ImageUtil;->scaleAndCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 599
    :cond_4
    :goto_1
    if-lez p3, :cond_0

    .line 600
    invoke-static {p0, p1, p2, p3, p6}, Lcom/didi/common/util/ImageUtil;->round(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 595
    :cond_5
    if-eqz p5, :cond_6

    .line 596
    int-to-float v0, p1

    int-to-float v1, p2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-static {p0, v0, v1, v2, p6}, Lcom/didi/common/util/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 597
    :cond_6
    if-eqz p4, :cond_4

    .line 598
    invoke-static {p0, p1, p2, p6}, Lcom/didi/common/util/ImageUtil;->crop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1
.end method

.method public static revise(Ljava/lang/String;IIIZZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filepath"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"

    .prologue
    .line 633
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, v1}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 634
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 635
    const/4 v1, 0x0

    .line 636
    :goto_0
    return-object v1

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/didi/common/util/ImageUtil;->revise(Landroid/graphics/Bitmap;IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static revise(Ljava/lang/String;Landroid/content/Context;IIIZZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filename"
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"

    .prologue
    .line 617
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p0, v1}, Lcom/didi/common/util/ImageUtil;->createBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 618
    invoke-static/range {v0 .. v5}, Lcom/didi/common/util/ImageUtil;->revise(Landroid/graphics/Bitmap;IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static revise(Landroid/graphics/Bitmap;IIIZZLcom/didi/common/util/ImageUtil$ImageListener;)V
    .locals 8
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "needCrop"
    .parameter "needScale"
    .parameter "listener"

    .prologue
    .line 556
    new-instance v0, Lcom/didi/common/util/ImageUtil$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/didi/common/util/ImageUtil$1;-><init>(Landroid/graphics/Bitmap;IIIZZLcom/didi/common/util/ImageUtil$ImageListener;)V

    .line 574
    .local v0, job:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 575
    return-void
.end method

.method public static round(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "radius"
    .parameter "recycleSource"

    .prologue
    const/4 v6, 0x0

    .line 144
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v4, p0

    .line 170
    :cond_1
    :goto_0
    return-object v4

    .line 147
    :cond_2
    const/4 v4, 0x0

    .line 149
    .local v4, ret:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 153
    :goto_1
    if-nez v4, :cond_3

    .line 154
    const/4 v4, 0x0

    goto :goto_0

    .line 156
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 161
    .local v3, rectF:Landroid/graphics/RectF;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 163
    const v5, -0xbdbdbe

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    int-to-float v5, p3

    int-to-float v6, p3

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 166
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 167
    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 168
    if-eqz p4, :cond_1

    .line 169
    invoke-static {p0}, Lcom/didi/common/util/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 150
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #paint:Landroid/graphics/Paint;
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #rectF:Landroid/graphics/RectF;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "radius"
    .parameter "recycleSource"

    .prologue
    .line 181
    if-lez p1, :cond_0

    if-nez p0, :cond_1

    .line 183
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/didi/common/util/ImageUtil;->round(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static save(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "url"
    .parameter "fileName"
    .parameter "business"

    .prologue
    .line 1111
    new-instance v0, Lcom/didi/common/util/ImageUtil$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/common/util/ImageUtil$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    invoke-virtual {v0}, Lcom/didi/common/util/ImageUtil$2;->start()Lthread/Job;

    .line 1119
    return-void
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/didi/frame/business/Business;)V
    .locals 4
    .parameter "bitmap"
    .parameter "filename"
    .parameter "business"

    .prologue
    .line 1122
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1124
    :cond_0
    invoke-static {p1, p2}, Lcom/didi/common/util/FileUtil;->getImageFile(Ljava/lang/String;Lcom/didi/frame/business/Business;)Ljava/io/File;

    move-result-object v0

    .line 1125
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/didi/common/util/ImageUtil;->writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;

    goto :goto_0
.end method

.method public static saveToMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/location/Location;I[BLjava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "title"
    .parameter "location"
    .parameter "orientation"
    .parameter "jpeg"
    .parameter "path"

    .prologue
    .line 868
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 869
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 872
    .local v0, d:Ljava/util/Date;
    const-string v3, "datetaken"

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v3, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    const-string v3, "_data"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v3, "_size"

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    if-eqz p2, :cond_0

    .line 879
    const-string v3, "latitude"

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 880
    const-string v3, "longitude"

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 883
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 884
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 885
    const/4 v1, 0x0

    .line 887
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    return-object v1
.end method

.method public static scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "sourceBitmap"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleType"
    .parameter "recycleSource"

    .prologue
    .line 297
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    :cond_0
    const/4 p0, 0x0

    .line 339
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 300
    .restart local p0
    :cond_2
    const/4 v9, 0x0

    .line 304
    .local v9, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v12, v1

    .line 305
    .local v12, sourceWidth:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v10, v1

    .line 307
    .local v10, sourceHeight:F
    div-float v11, v12, v10

    .line 308
    .local v11, sourceRatio:F
    div-float v13, p1, p2

    .line 311
    .local v13, targetRatio:F
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_5

    .line 312
    cmpl-float v1, v11, v13

    if-lez v1, :cond_4

    div-float v8, p2, v10

    .line 317
    .local v8, scale:F
    :goto_1
    const/high16 v1, 0x3f80

    cmpl-float v1, v8, v1

    if-eqz v1, :cond_1

    .line 321
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 322
    .local v6, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v6, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 328
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 337
    :goto_2
    if-eqz p4, :cond_3

    if-eq p0, v9, :cond_3

    .line 338
    invoke-static {p0}, Lcom/didi/common/util/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    :cond_3
    move-object p0, v9

    .line 339
    goto :goto_0

    .line 312
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v8           #scale:F
    :cond_4
    div-float v8, p1, v12

    goto :goto_1

    .line 314
    :cond_5
    cmpg-float v1, v11, v13

    if-gez v1, :cond_6

    div-float v8, p2, v10

    .restart local v8       #scale:F
    :goto_3
    goto :goto_1

    .end local v8           #scale:F
    :cond_6
    div-float v8, p1, v12

    goto :goto_3

    .line 333
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    .restart local v8       #scale:F
    :catch_0
    move-exception v1

    goto :goto_2

    .line 332
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static scaleAndCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "recycleSource"

    .prologue
    .line 239
    int-to-float v0, p1

    int-to-float v1, p2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-static {p0, v0, v1, v2, p3}, Lcom/didi/common/util/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 240
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/didi/common/util/ImageUtil;->crop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toBytes(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 891
    if-nez p0, :cond_0

    .line 892
    const/4 v1, 0x0

    .line 901
    :goto_0
    return-object v1

    .line 893
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 894
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x41

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 895
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 897
    .local v1, bytes:[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v2

    .line 899
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .parameter "bitmap"
    .parameter "path"
    .parameter "quality"
    .parameter "recycleSource"

    .prologue
    const/4 v4, 0x0

    .line 649
    if-nez p0, :cond_1

    move-object p1, v4

    .line 676
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 653
    .restart local p1
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 655
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 656
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 659
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 661
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 662
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 663
    .local v3, fos:Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 664
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 665
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 673
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    if-eqz p3, :cond_0

    .line 674
    invoke-static {p0}, Lcom/didi/common/util/ImageUtil;->clear(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 667
    :catch_0
    move-exception v1

    .line 668
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object p1, v4

    .line 669
    goto :goto_0

    .line 670
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 671
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 1030
    if-nez p0, :cond_0

    .line 1031
    const/4 v7, 0x0

    .line 1042
    :goto_0
    return-object v7

    .line 1033
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1034
    .local v3, bmpWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1036
    .local v4, bmpHeight:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 1037
    .local v9, scaleWidth:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 1039
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1040
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1041
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1042
    .local v7, resizeBmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method
