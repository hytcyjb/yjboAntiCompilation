.class public Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;
.super Ljava/lang/Object;
.source "OfflineMapManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/gj;


# static fields
.field public static final STATE_COMPLETE:I = 0x1

.field public static final STATE_DOWNLOAD:I = 0x3

.field public static final STATE_FAIL:I = 0x7

.field public static final STATE_NODATA:I = 0x0

.field public static final STATE_PAUSE:I = 0x5

.field public static final STATE_SETUP:I = 0x6

.field public static final STATE_UPDATE:I = 0x2

.field public static final STATE_WAITING:I = 0x4

.field private static f:[B

.field private static g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

.field private c:Landroid/content/Context;

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->f:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "mCon"

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    .line 76
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    .line 78
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    .line 116
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    .line 129
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager$2;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;)V

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gk;

    .line 143
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v2, "sdk_city_ver.json"

    const-string v3, "sdk_city_ver.json"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    .line 149
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gj;)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .locals 11
    .parameter "targetId"

    .prologue
    const/4 v9, 0x0

    .line 622
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    if-nez v10, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-object v9

    .line 625
    :cond_1
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a()Z

    .line 626
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 629
    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    .line 630
    .local v7, mTempEntireCityList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 631
    .local v4, iProvinceSize:I
    if-eqz v4, :cond_0

    .line 635
    const/4 v8, 0x0

    .line 636
    .local v8, offlineData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v0, 0x0

    .line 637
    .local v0, cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v3, 0x0

    .line 638
    .local v3, iChildCount:I
    const/4 v1, 0x0

    .line 639
    .local v1, cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v9, 0x0

    .line 641
    .local v9, offlineFound:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v6, 0x0

    .line 642
    .local v6, listChildren:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 643
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #offlineData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v8, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 644
    .restart local v8       #offlineData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v8, :cond_3

    .line 645
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 649
    .restart local v1       #cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v1, :cond_3

    .line 650
    iget-object v10, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 653
    move-object v9, v8

    .line 654
    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v6

    .line 658
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 659
    const/4 v5, 0x0

    .local v5, k:I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 660
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 661
    .restart local v0       #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v0, :cond_4

    .line 662
    iget-object v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 665
    move-object v9, v0

    .line 642
    .end local v5           #k:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 659
    .restart local v5       #k:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private static a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    .locals 3
    .parameter "citydata"

    .prologue
    .line 507
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;-><init>()V

    .line 509
    .local v0, cityNew:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->name:Ljava/lang/String;

    .line 510
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->provinceName:Ljava/lang/String;

    .line 511
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->l:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->targetVersion:I

    .line 512
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->m:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->curVersion:I

    .line 513
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->targetSize:J

    .line 514
    iget-wide v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->o:J

    iput-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->curSize:J

    .line 515
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->mState:I

    .line 516
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->areacode:Ljava/lang/String;

    .line 517
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->C:Z

    iput-boolean v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->haveOfflineData:Z

    .line 518
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->pinyin:Ljava/lang/String;

    .line 519
    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "mcontex"
    .parameter "dir"
    .parameter "fileName"
    .parameter "fileId"

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, inStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 198
    .local v4, outStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 201
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .local v3, outFile:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 203
    .end local v4           #outStream:Ljava/io/OutputStream;
    .local v5, outStream:Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 206
    .local v0, data_atime:[B
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 207
    .local v2, len:I
    if-lez v2, :cond_1

    .line 208
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 210
    :cond_1
    if-gtz v2, :cond_0

    .line 214
    if-eqz v1, :cond_2

    .line 216
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 222
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 231
    .end local v0           #data_atime:[B
    .end local v2           #len:I
    .end local v3           #outFile:Ljava/io/File;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    :cond_3
    :goto_1
    return-void

    .line 217
    .end local v4           #outStream:Ljava/io/OutputStream;
    .restart local v0       #data_atime:[B
    .restart local v2       #len:I
    .restart local v3       #outFile:Ljava/io/File;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 225
    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 227
    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 211
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

    .line 214
    if-eqz v1, :cond_4

    .line 216
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 222
    :cond_4
    :goto_3
    if-eqz v4, :cond_3

    .line 224
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 225
    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 217
    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 214
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_5

    .line 216
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 222
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 224
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 227
    :cond_6
    :goto_6
    throw v6

    .line 217
    :catch_5
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 225
    :catch_6
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 214
    .end local v4           #outStream:Ljava/io/OutputStream;
    .restart local v3       #outFile:Ljava/io/File;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 211
    .end local v4           #outStream:Ljava/io/OutputStream;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 599
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    if-nez v2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 604
    :cond_2
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    .line 611
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gn;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/gn;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 613
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    .line 616
    goto :goto_0

    :cond_3
    move v0, v1

    .line 618
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;
    .locals 2
    .parameter "mcontex"

    .prologue
    .line 106
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;

    .line 109
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;

    return-object v0
.end method


# virtual methods
.method public addDownLoadCity(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;)Z
    .locals 2
    .parameter "cityDownload"

    .prologue
    const/4 v0, 0x0

    .line 781
    if-nez p1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    iget-boolean v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->haveOfflineData:Z

    if-eqz v1, :cond_0

    .line 785
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->pinyin:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->addDownLoadCityByPinyin(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public addDownLoadCityByPinyin(Ljava/lang/String;)Z
    .locals 4
    .parameter "iPinyin"

    .prologue
    .line 753
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v1, :cond_0

    .line 754
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    invoke-direct {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    .line 766
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-result-object v0

    .line 767
    .local v0, offlineData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-nez v0, :cond_1

    .line 768
    const/4 v1, 0x0

    .line 770
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z

    move-result v1

    goto :goto_0
.end method

.method public deleteCityOfflineData(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;)Z
    .locals 2
    .parameter "city"

    .prologue
    .line 882
    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->pinyin:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-result-object v0

    .line 883
    .local v0, offlineData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-nez v0, :cond_0

    .line 884
    const/4 v1, 0x0

    .line 886
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z

    move-result v1

    goto :goto_0
.end method

.method public finishedDownloadCitys(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1107
    return-void
.end method

.method public getAllOfflineMapCityInfo()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 255
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    if-nez v11, :cond_1

    .line 302
    :cond_0
    return-object v8

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a()Z

    .line 259
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    if-eqz v11, :cond_0

    .line 262
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    .line 263
    .local v9, mTempEntireCityList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 264
    .local v5, iProvinceSize:I
    if-eqz v5, :cond_0

    .line 268
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v8, listProvince:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;>;"
    const/4 v1, 0x0

    .line 270
    .local v1, cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v0, 0x0

    .line 271
    .local v0, cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v4, 0x0

    .line 273
    .local v4, iChildCount:I
    const/4 v7, 0x0

    .line 274
    .local v7, listChildren:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 275
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 277
    .restart local v1       #cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v1, :cond_4

    .line 278
    new-instance v10, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;

    invoke-direct {v10}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;-><init>()V

    .line 282
    .local v10, provinceObj:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;
    iget-object v11, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->name:Ljava/lang/String;

    .line 283
    iget-object v11, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->pinyin:Ljava/lang/String;

    .line 284
    iget-boolean v11, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->C:Z

    iput-boolean v11, v10, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->haveOfflineData:Z

    .line 285
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v7

    .line 288
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 289
    const/4 v6, 0x0

    .local v6, k:I
    :goto_1
    if-ge v6, v4, :cond_4

    .line 290
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 291
    .restart local v0       #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v0, :cond_3

    .line 292
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    move-result-object v2

    .line 296
    .local v2, citySub:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    iget-object v11, v10, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->listCities:Ljava/util/List;

    if-nez v11, :cond_2

    .line 297
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->listCities:Ljava/util/List;

    .line 299
    :cond_2
    iget-object v11, v10, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->listCities:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v2           #citySub:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 274
    .end local v6           #k:I
    .end local v10           #provinceObj:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getCityByCityName(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "cityname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 371
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    if-nez v11, :cond_1

    .line 431
    :cond_0
    return-object v8

    .line 374
    :cond_1
    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 378
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eq v11, v12, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a()Z

    .line 382
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    if-eqz v11, :cond_0

    .line 385
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    .line 386
    .local v9, mTempEntireCityList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 387
    .local v5, iProvinceSize:I
    if-eqz v5, :cond_0

    .line 391
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v8, listFoundCitys:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;>;"
    const/4 v1, 0x0

    .line 394
    .local v1, cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v0, 0x0

    .line 395
    .local v0, cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v4, 0x0

    .line 399
    .local v4, iChildCount:I
    const/4 v7, 0x0

    .line 400
    .local v7, listChildren:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    const/4 v10, 0x0

    .line 401
    .local v10, objCity:Ljava/lang/Object;
    const/4 v3, 0x0

    .end local v10           #objCity:Ljava/lang/Object;
    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 402
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 403
    .restart local v10       #objCity:Ljava/lang/Object;
    if-eqz v10, :cond_4

    move-object v1, v10

    .line 404
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 410
    iget-object v11, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v11, v12, :cond_2

    .line 412
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    move-result-object v2

    .line 413
    .local v2, cityFound:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v2           #cityFound:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v7

    .line 417
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 418
    const/4 v6, 0x0

    .local v6, k:I
    :goto_1
    if-ge v6, v4, :cond_4

    .line 419
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 420
    .restart local v0       #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v0, :cond_3

    .line 421
    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v11, v12, :cond_3

    .line 424
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    move-result-object v2

    .line 425
    .restart local v2       #cityFound:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v2           #cityFound:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 401
    .end local v6           #k:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getCityByPinyin(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    .locals 11
    .parameter "targetId"

    .prologue
    const/4 v9, 0x0

    .line 313
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    if-nez v10, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-object v9

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a()Z

    .line 317
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 320
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    .line 321
    .local v8, mTempEntireCityList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 322
    .local v5, iProvinceSize:I
    if-eqz v5, :cond_0

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v0, 0x0

    .line 328
    .local v0, cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v4, 0x0

    .line 330
    .local v4, iChildCount:I
    const/4 v2, 0x0

    .line 332
    .local v2, cityFound:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v7, 0x0

    .line 333
    .local v7, listChildren:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 334
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 336
    .restart local v1       #cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v1, :cond_5

    .line 337
    iget-object v10, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 340
    move-object v2, v1

    .line 362
    :cond_2
    if-eqz v2, :cond_0

    .line 366
    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    move-result-object v9

    goto :goto_0

    .line 344
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v7

    .line 345
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 346
    const/4 v6, 0x0

    .local v6, k:I
    :goto_2
    if-ge v6, v4, :cond_4

    .line 347
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 348
    .restart local v0       #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v0, :cond_6

    .line 349
    iget-object v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 352
    move-object v2, v0

    .line 357
    :cond_4
    if-nez v2, :cond_2

    .line 358
    .end local v6           #k:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 346
    .restart local v6       #k:I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public getCitysByOfflineMapDataStatus(I)Ljava/util/List;
    .locals 17
    .parameter "searchStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    if-nez v14, :cond_1

    .line 531
    const/4 v11, 0x0

    .line 588
    :cond_0
    :goto_0
    return-object v11

    .line 533
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a()Z

    .line 534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    if-nez v14, :cond_2

    .line 535
    const/4 v11, 0x0

    goto :goto_0

    .line 537
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    .line 538
    .local v12, mTempEntireCityList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    .line 539
    .local v8, iProvinceSize:I
    if-nez v8, :cond_3

    .line 540
    const/4 v11, 0x0

    goto :goto_0

    .line 543
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v11, listFoundCitys:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;>;"
    const/4 v4, 0x0

    .line 545
    .local v4, cityProvince:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v2, 0x0

    .line 546
    .local v2, cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v7, 0x0

    .line 548
    .local v7, iChildCount:I
    const/4 v14, 0x4

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v14, :cond_4

    .line 550
    new-instance v14, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    .line 553
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a()Ljava/util/List;

    move-result-object v14

    .line 554
    const/4 v13, 0x0

    .local v13, tempFound:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 555
    invoke-static {v14}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    move-result-object v1

    .line 556
    .local v1, aCity:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    const/4 v14, 0x4

    iput v14, v1, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->mState:I

    .line 557
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 562
    .end local v1           #aCity:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v13           #tempFound:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    :cond_5
    const/4 v10, 0x0

    .line 563
    .local v10, listChildren:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v8, :cond_0

    .line 564
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #cityProvince:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 566
    .restart local v4       #cityProvince:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v4, :cond_8

    .line 567
    iget v14, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_6

    .line 570
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    move-result-object v3

    .line 571
    .local v3, cityFound:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v3           #cityFound:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    :cond_6
    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v10

    .line 575
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 576
    const/4 v9, 0x0

    .local v9, k:I
    :goto_3
    if-ge v9, v7, :cond_8

    .line 577
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 578
    .restart local v2       #cityChild:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    if-eqz v2, :cond_7

    .line 579
    iget v14, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_7

    .line 582
    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    move-result-object v3

    .line 585
    .restart local v3       #cityFound:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    .end local v3           #cityFound:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 563
    .end local v9           #k:I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public isDownloadStarted()Z
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v0, :cond_0

    .line 827
    const/4 v0, 0x0

    .line 829
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public pauseDownLoad()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v0, :cond_0

    .line 869
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d()V

    goto :goto_0
.end method

.method public preScanLocalFiles()Z
    .locals 1

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f()V

    goto :goto_0
.end method

.method public removeDownLoadCity(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;)Z
    .locals 1
    .parameter "cityDownload"

    .prologue
    .line 816
    if-nez p1, :cond_0

    .line 817
    const/4 v0, 0x0

    .line 819
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->pinyin:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->removeDownLoadCityByPinyin(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeDownLoadCityByPinyin(Ljava/lang/String;)Z
    .locals 11
    .parameter "iPinyin"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 798
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v1, :cond_0

    move v1, v3

    .line 805
    :goto_0
    return v1

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 802
    .local v0, cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    move v1, v3

    .line 803
    goto :goto_0

    .line 801
    .end local v0           #cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :cond_2
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->a()Z

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_1

    move v5, v3

    move-object v2, v0

    :goto_2
    if-ge v5, v7, :cond_7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v4, v3

    :goto_4
    if-ge v4, v9, :cond_6

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    if-eqz v1, :cond_4

    iget-object v10, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v2, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    .line 805
    .restart local v0       #cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :cond_5
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z

    move-result v1

    goto :goto_0

    .end local v0           #cityData:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :cond_6
    move-object v1, v2

    goto :goto_5

    :cond_7
    move-object v1, v2

    goto :goto_3
.end method

.method public setOfflineMapListener(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;)V
    .locals 3
    .parameter "offlinelistener"

    .prologue
    .line 239
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;)V

    .line 247
    :cond_1
    return-void
.end method

.method public startDownload()V
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v0, :cond_0

    .line 844
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c()V

    .line 849
    return-void
.end method

.method public stopDownLoad()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    if-nez v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapManager;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e()V

    goto :goto_0
.end method
