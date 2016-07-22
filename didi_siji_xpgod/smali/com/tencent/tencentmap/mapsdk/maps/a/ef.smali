.class public Lcom/tencent/tencentmap/mapsdk/maps/a/ef;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ca;
.source "GLMapView.java"


# instance fields
.field public a:Lcom/tencent/tencentmap/mapsdk/maps/a/af;

.field b:Lcom/tencent/tencentmap/mapsdk/maps/a/bz;

.field c:Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

.field d:Lcom/tencent/tencentmap/mapsdk/maps/a/ag;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Lcom/tencent/tencentmap/mapsdk/maps/a/gd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ca;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->e:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->f:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->g:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->h:I

    .line 37
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->i:Z

    .line 39
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gd;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gd;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/gd;

    .line 85
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/af;

    .line 111
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$2;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bz;

    .line 155
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$3;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

    .line 188
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$4;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$4;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ag;

    .line 49
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 9
    .parameter "path"

    .prologue
    .line 453
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 454
    .local v4, stfs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 455
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 457
    .local v0, availBlocks:J
    mul-long v5, v2, v0

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v0           #availBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #stfs:Landroid/os/StatFs;
    :goto_0
    return-wide v5

    :catch_0
    move-exception v5

    const-wide/16 v5, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "x0"
    .parameter "x1"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 29
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v3, "http://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const-string v4, ".jpg"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v4, v2

    if-nez v4, :cond_5

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    aget-object v1, v2, v6

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->h:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->h:I

    if-le v1, v0, :cond_6

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->h:I

    :cond_6
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->h:I

    if-le v1, v0, :cond_7

    :goto_1
    const-wide/high16 v5, 0x4000

    int-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v1, v5

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "http://mt"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".google.com/vt/lyrs=m@159000000&hl=zh-CN&gl=cn&x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&s=Gali"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mcontex"
    .parameter "dir"
    .parameter "fileName"
    .parameter "fileId"

    .prologue
    .line 345
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "contex"
    .parameter "strFileName"

    .prologue
    const/4 v0, 0x0

    .line 321
    if-nez p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    invoke-static {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 325
    .local v1, inputStr:Ljava/io/InputStream;
    if-nez v1, :cond_2

    .line 326
    invoke-static {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 328
    :cond_2
    if-eqz v1, :cond_0

    .line 331
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    .local v0, bmptem:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "mcontex"
    .parameter "dir"
    .parameter "fileName"
    .parameter "fileId"

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, inStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 356
    .local v4, outStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 359
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    .local v3, outFile:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 361
    .end local v4           #outStream:Ljava/io/OutputStream;
    .local v5, outStream:Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 364
    .local v0, data_atime:[B
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 365
    .local v2, len:I
    if-lez v2, :cond_1

    .line 366
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 368
    :cond_1
    if-gtz v2, :cond_0

    .line 372
    if-eqz v1, :cond_2

    .line 374
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 380
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 389
    .end local v0           #data_atime:[B
    .end local v2           #len:I
    .end local v3           #outFile:Ljava/io/File;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    :cond_3
    :goto_1
    return-void

    .line 375
    .end local v4           #outStream:Ljava/io/OutputStream;
    .restart local v0       #data_atime:[B
    .restart local v2       #len:I
    .restart local v3       #outFile:Ljava/io/File;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 383
    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 385
    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 369
    .end local v0           #data_atime:[B
    .end local v2           #len:I
    .end local v3           #outFile:Ljava/io/File;
    :catch_2
    move-exception v6

    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 372
    if-eqz v1, :cond_4

    .line 374
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 380
    :cond_4
    :goto_3
    if-eqz v4, :cond_3

    .line 382
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 383
    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 375
    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 372
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_5

    .line 374
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 380
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 382
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 385
    :cond_6
    :goto_6
    throw v6

    .line 375
    :catch_5
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 383
    :catch_6
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 372
    .end local v4           #outStream:Ljava/io/OutputStream;
    .restart local v3       #outFile:Ljava/io/File;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 369
    .end local v4           #outStream:Ljava/io/OutputStream;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)Lcom/tencent/tencentmap/mapsdk/maps/a/gd;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/gd;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->i:Z

    return v0
.end method


# virtual methods
.method public final i()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x5

    .line 52
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, strPath:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->f:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tencentmapsdk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "v3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "render"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->f:Ljava/lang/String;

    .line 59
    :cond_1
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->g:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tencentmapsdk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->g:Ljava/lang/String;

    .line 62
    :cond_2
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->e:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->e:Ljava/lang/String;

    .line 66
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->f:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, mapDataDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 71
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->g:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, satDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 76
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->e:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, mapConfigDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mapconfig.dat"

    const-string v6, "mapconfig.dat"

    invoke-static {v4, v0, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "rttcfg.dat"

    const-string v6, "rttcfg.dat"

    invoke-static {v4, v0, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/af;

    invoke-virtual {p0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/af;)V

    .line 83
    return-void

    .line 54
    .end local v0           #mapConfigDir:Ljava/io/File;
    .end local v1           #mapDataDir:Ljava/io/File;
    .end local v2           #satDir:Ljava/io/File;
    .end local v3           #strPath:Ljava/lang/String;
    :cond_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->a(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->a(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-gez v4, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method
