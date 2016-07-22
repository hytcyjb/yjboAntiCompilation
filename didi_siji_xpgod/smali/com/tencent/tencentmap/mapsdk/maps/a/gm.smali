.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gm;
.super Ljava/lang/Object;
.source "OfflineDataDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

.field private b:Ljava/lang/Thread;

.field private c:Z

.field private d:Z

.field private e:[B

.field private f:Landroid/content/Context;

.field private g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:[B

.field private m:Lcom/tencent/tencentmap/mapsdk/maps/a/gj;

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;)V
    .locals 3
    .parameter "mCon"
    .parameter "ainterface"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c:Z

    .line 42
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    .line 43
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e:[B

    .line 45
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f:Landroid/content/Context;

    .line 50
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    .line 58
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->l:[B

    .line 1090
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->n:Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    .line 66
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 10
    .parameter "strUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 919
    const/4 v6, 0x0

    .line 922
    .local v6, con:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->createRangeConnection(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 924
    const-string v0, "Content-Range"

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 930
    .local v8, fileLen:J
    if-eqz v6, :cond_0

    .line 931
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 935
    :cond_0
    return-wide v8

    .line 926
    .end local v8           #fileLen:J
    :catch_0
    move-exception v7

    .line 927
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 928
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 931
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0
.end method

.method private a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/io/File;)J
    .locals 19
    .parameter "strUrl"
    .parameter "start"
    .parameter "end"
    .parameter "totalLength"
    .parameter "iPinyin"
    .parameter "strCityName"
    .parameter "fileDest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    const/4 v10, 0x0

    .line 795
    .local v10, con:Ljava/net/HttpURLConnection;
    const/4 v14, 0x0

    .line 796
    .local v14, in:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 798
    .local v12, fileOutputStr:Ljava/io/FileOutputStream;
    const-wide/16 v17, 0x0

    .line 802
    .local v17, realDataSize:J
    :try_start_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->createRangeConnection(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/net/HttpURLConnection;

    move-result-object v10

    .line 804
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 805
    .local v16, rc:I
    const/16 v1, 0xc8

    move/from16 v0, v16

    if-eq v0, v1, :cond_2

    const/16 v1, 0xce

    move/from16 v0, v16

    if-eq v0, v1, :cond_2

    .line 807
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net error: rc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 886
    .end local v16           #rc:I
    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :catchall_0
    move-exception v1

    :goto_1
    if-eqz v14, :cond_0

    .line 894
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 898
    :cond_0
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 903
    :goto_2
    if-eqz v10, :cond_1

    .line 906
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v1

    .line 811
    .restart local v16       #rc:I
    :cond_2
    :try_start_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->isWAPFeePage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 813
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 814
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 818
    :cond_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 819
    if-nez v14, :cond_7

    .line 820
    new-instance v1, Ljava/io/IOException;

    const-string v2, "InputStream is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    .line 889
    .end local v16           #rc:I
    :catch_1
    move-exception v1

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 891
    const-wide/16 v17, 0x0

    .line 893
    if-eqz v14, :cond_4

    .line 894
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 898
    :cond_4
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 903
    :goto_4
    if-eqz v10, :cond_5

    .line 906
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    :goto_5
    move-wide/from16 v1, v17

    .line 910
    :cond_6
    :goto_6
    return-wide v1

    .line 823
    .restart local v16       #rc:I
    :cond_7
    const/16 v1, 0x5000

    :try_start_6
    new-array v8, v1, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    .line 827
    .local v8, buffer:[B
    :try_start_7
    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    move-object/from16 v0, p10

    invoke-direct {v13, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1

    .line 829
    .end local v12           #fileOutputStr:Ljava/io/FileOutputStream;
    .local v13, fileOutputStr:Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 830
    .local v9, cityDownloading:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    if-eqz v1, :cond_8

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    move-object/from16 v0, p8

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;->a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_a

    move-result-object v9

    .line 837
    :cond_8
    :goto_7
    :try_start_9
    invoke-virtual {v14, v8}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .local v15, len:I
    if-lez v15, :cond_11

    .line 839
    invoke-virtual/range {p10 .. p10}, Ljava/io/File;->exists()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_a

    move-result v1

    if-eqz v1, :cond_10

    .line 840
    int-to-long v1, v15

    add-long v17, v17, v1

    .line 843
    int-to-long v1, v15

    const/4 v3, 0x0

    long-to-int v1, v1

    :try_start_a
    invoke-virtual {v13, v8, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_a

    .line 845
    :try_start_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;

    if-eqz v1, :cond_9

    .line 846
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;

    add-long v6, p2, v17

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide/from16 v4, p6

    invoke-interface/range {v1 .. v7}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;->onDownLoad(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 850
    :cond_9
    if-eqz v9, :cond_a

    .line 851
    add-long v1, p2, v17

    iput-wide v1, v9, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->o:J

    .line 854
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->k:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 857
    :cond_b
    if-eqz v10, :cond_c

    .line 858
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 860
    :cond_c
    if-eqz v14, :cond_d

    .line 861
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_a

    .line 865
    :cond_d
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_a

    .line 870
    :goto_8
    const/4 v12, 0x0

    .line 872
    .end local v13           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v12       #fileOutputStr:Ljava/io/FileOutputStream;
    add-long v1, p2, v17

    .line 893
    if-eqz v14, :cond_e

    .line 894
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 898
    :cond_e
    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 903
    :goto_9
    if-eqz v10, :cond_6

    .line 906
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 843
    .end local v12           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStr:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_a

    .line 880
    .end local v15           #len:I
    :catch_3
    move-exception v1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_a

    move-object v12, v13

    .line 893
    .end local v9           #cityDownloading:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .end local v13           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v12       #fileOutputStr:Ljava/io/FileOutputStream;
    :goto_a
    if-eqz v14, :cond_f

    .line 894
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 898
    :cond_f
    :try_start_10
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 903
    :goto_b
    if-eqz v10, :cond_5

    .line 906
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 866
    .end local v12           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v9       #cityDownloading:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .restart local v13       #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v15       #len:I
    :catch_4
    move-exception v1

    :try_start_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_8

    .line 883
    .end local v15           #len:I
    :catch_5
    move-exception v1

    move-object v12, v13

    .end local v9           #cityDownloading:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .end local v13           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v12       #fileOutputStr:Ljava/io/FileOutputStream;
    :goto_c
    const/4 v11, 0x0

    .local v11, e:Ljava/io/FileNotFoundException;
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_1

    goto :goto_a

    .line 899
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .restart local v9       #cityDownloading:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .restart local v15       #len:I
    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 875
    .end local v12           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStr:Ljava/io/FileOutputStream;
    :cond_10
    :try_start_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Ljava/io/File;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_a

    .line 876
    const-wide/16 p2, 0x0

    .line 877
    const-wide/16 v17, 0x0

    goto/16 :goto_7

    :cond_11
    move-object v12, v13

    .line 882
    .end local v13           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v12       #fileOutputStr:Ljava/io/FileOutputStream;
    goto :goto_a

    .line 899
    .end local v9           #cityDownloading:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .end local v15           #len:I
    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .end local v8           #buffer:[B
    .end local v16           #rc:I
    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 893
    .end local v12           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v8       #buffer:[B
    .restart local v9       #cityDownloading:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .restart local v13       #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v16       #rc:I
    :catchall_1
    move-exception v1

    move-object v12, v13

    .end local v13           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v12       #fileOutputStr:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 889
    .end local v12           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStr:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v1

    move-object v12, v13

    .end local v13           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v12       #fileOutputStr:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 886
    .end local v12           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v13       #fileOutputStr:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v1

    move-object v12, v13

    .end local v13           #fileOutputStr:Ljava/io/FileOutputStream;
    .restart local v12       #fileOutputStr:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 883
    .end local v9           #cityDownloading:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    :catch_c
    move-exception v1

    goto :goto_c
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "mcontex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 441
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 448
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V
    .locals 4
    .parameter "city"
    .parameter "state"

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    .line 405
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    iget v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;->onOfflineMapStateChanged(Ljava/lang/String;Ljava/lang/String;I)V

    .line 409
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)V
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Ljava/io/File;)Z
    .locals 3
    .parameter "mContext"
    .parameter "offlineData"
    .parameter "zipFile"

    .prologue
    const/4 v1, 0x0

    .line 584
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return v1

    .line 587
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->x:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->x:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    :try_start_0
    invoke-static {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/go;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 603
    .local v0, fileMd5:Ljava/lang/String;
    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->x:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    const/4 v1, 0x1

    goto :goto_0

    .line 596
    .end local v0           #fileMd5:Ljava/lang/String;
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 599
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 6
    .parameter "mcontex"
    .parameter "zipFile"

    .prologue
    .line 541
    const/4 v1, 0x0

    .line 543
    .local v1, ret:Z
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 544
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gp;->a(Ljava/io/File;)J

    .line 547
    invoke-static {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/du;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 548
    const/4 v1, 0x1

    .line 558
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 550
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_0

    .line 552
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 554
    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Landroid/content/Context;)Z
    .locals 17
    .parameter "offlinedata"
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 270
    :cond_0
    const/4 v8, 0x0

    .line 350
    :goto_0
    return v8

    .line 272
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Ljava/io/File;

    move-result-object v7

    .line 273
    .local v7, fileSingleTem:Ljava/io/File;
    if-nez v7, :cond_2

    .line 274
    const/4 v8, 0x0

    goto :goto_0

    .line 281
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->A:Ljava/lang/String;

    .line 282
    .local v4, strUrl:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 289
    .local v5, lTotalLength:J
    const-wide/16 v10, 0x0

    cmp-long v2, v5, v10

    if-nez v2, :cond_3

    .line 290
    const/4 v8, 0x0

    goto :goto_0

    .line 285
    .end local v5           #lTotalLength:J
    :catch_0
    move-exception v9

    .line 286
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    throw v9

    .line 293
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v5       #lTotalLength:J
    :cond_3
    move-object/from16 v3, p1

    .line 295
    .local v3, cityDataInfo:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    move-object/from16 v2, p0

    .line 299
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Ljava/lang/String;JLjava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 302
    if-nez v2, :cond_4

    .line 303
    const/4 v8, 0x0

    goto :goto_0

    .line 306
    :catch_1
    move-exception v9

    .line 307
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 308
    throw v9

    .line 313
    .end local v9           #e:Ljava/io/IOException;
    :cond_4
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    .line 316
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Ljava/io/File;)Z

    move-result v2

    .line 317
    if-nez v2, :cond_5

    .line 320
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    .line 321
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 322
    const/4 v8, 0x0

    goto :goto_0

    .line 324
    :cond_5
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v8

    .line 325
    .local v8, boResult:Z
    if-nez v8, :cond_6

    .line 328
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 329
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    .line 330
    const/4 v8, 0x0

    goto :goto_0

    .line 334
    :cond_6
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    array-length v12, v10

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v12, :cond_8

    aget-object v13, v10, v2

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".temp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/tencent/tencentmap/mapsdk/maps/a/gp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v14, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/gp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_2
    move-exception v13

    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 335
    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 338
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 339
    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 342
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 346
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 348
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Ljava/lang/String;JLjava/io/File;)Z
    .locals 20
    .parameter "cityDt"
    .parameter "strUrl"
    .parameter "lTotalSize"
    .parameter "fileDest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_0

    .line 633
    const/4 v2, 0x0

    .line 688
    :goto_0
    return v2

    .line 635
    :cond_0
    if-nez p5, :cond_1

    .line 636
    const/4 v2, 0x0

    goto :goto_0

    .line 638
    :cond_1
    const-wide/16 v14, 0x0

    .line 639
    .local v14, lCurrentSize:J
    const-wide/16 v4, 0x0

    .line 640
    .local v4, lFromSize:J
    const-wide/16 v6, 0x0

    .line 642
    .local v6, lToSize:J
    const-wide/16 v18, 0x0

    .line 643
    .local v18, lReceiveByteCount:J
    const-wide/16 v16, 0x0

    .line 645
    .local v16, lDesiredSize:J
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c:Z

    if-eqz v2, :cond_8

    .line 646
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 647
    cmp-long v2, v14, p3

    if-lez v2, :cond_3

    .line 649
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->delete()Z

    .line 650
    const/4 v2, 0x0

    goto :goto_0

    .line 651
    :cond_3
    cmp-long v2, v14, p3

    if-nez v2, :cond_4

    .line 653
    const/4 v2, 0x1

    goto :goto_0

    .line 656
    :cond_4
    move-wide v4, v14

    .line 657
    const-wide/16 v2, 0x1

    sub-long v6, p3, v2

    .line 659
    sub-long v2, v6, v4

    const-wide/16 v8, 0x1

    add-long v16, v2, v8

    .line 662
    :try_start_0
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-wide/from16 v8, p3

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/io/File;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 672
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 674
    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    .line 677
    const/4 v2, 0x0

    goto :goto_0

    .line 680
    :cond_5
    cmp-long v2, v18, v16

    if-eqz v2, :cond_2

    .line 681
    const/4 v2, 0x0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v13

    .line 668
    .local v13, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 669
    const-wide/16 v18, 0x0

    .line 670
    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    .end local v13           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 674
    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    .line 677
    const/4 v2, 0x0

    goto :goto_0

    .line 680
    :cond_6
    cmp-long v3, v18, v16

    if-eqz v3, :cond_7

    .line 681
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    throw v2

    .line 688
    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "mcontex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V
    .locals 2
    .parameter "city"
    .parameter "state"

    .prologue
    .line 1043
    if-eqz p1, :cond_0

    .line 1044
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;->a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(I)V

    .line 1045
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e:[B

    return-object v0
.end method

.method private static d(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Ljava/io/File;
    .locals 2
    .parameter "cityDataInfo"

    .prologue
    .line 948
    :try_start_0
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 955
    :goto_0
    return-object v0

    .line 953
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    return-object v0
.end method

.method private static e(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Ljava/io/File;
    .locals 3
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 965
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->y:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->y:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    .line 968
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->y:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    .local v0, storageDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 970
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 972
    :cond_2
    return-object v0
.end method

.method static synthetic e(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->l:[B

    return-object v0
.end method

.method private static f(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Ljava/io/File;
    .locals 3
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 976
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 978
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :cond_0
    :goto_0
    return-object v0

    .line 981
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Lcom/tencent/tencentmap/mapsdk/maps/a/gj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gj;

    return-object v0
.end method

.method private g(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z
    .locals 6
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 1053
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, fileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1057
    .local v0, cityFile:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #cityFile:Ljava/io/File;
    .local v1, cityFile:Ljava/io/File;
    move-object v0, v1

    .line 1061
    .end local v1           #cityFile:Ljava/io/File;
    .restart local v0       #cityFile:Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1062
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1063
    const-wide/16 v4, 0x0

    iput-wide v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->o:J

    .line 1064
    iput v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->m:I

    .line 1065
    const/4 v3, 0x1

    .line 1067
    :cond_0
    return v3

    .line 1058
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    return-object v0
.end method

.method private static h(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z
    .locals 4
    .parameter "city"

    .prologue
    const/4 v1, 0x1

    .line 1078
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->z:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1079
    .local v0, fileSingleTem:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1080
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    .end local v0           #fileSingleTem:Ljava/io/File;
    :goto_0
    return v1

    .line 1083
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1087
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/gi;>;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    return-object v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/gj;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gj;

    .line 76
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->g:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/OfflineMapListener;

    .line 89
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z
    .locals 4
    .parameter "city"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 191
    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    if-nez v2, :cond_2

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    .line 202
    :cond_2
    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->l:[B

    monitor-enter v2

    .line 206
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_3

    .line 207
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 210
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_4

    .line 211
    monitor-exit v2

    goto :goto_0

    .line 213
    :cond_4
    iget v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    if-ne v3, v1, :cond_5

    .line 214
    monitor-exit v2

    goto :goto_0

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    :cond_6
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    iput v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->q:I

    .line 224
    :cond_7
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    .line 226
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 227
    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z
    .locals 4
    .parameter "city"

    .prologue
    const/4 v3, 0x1

    .line 231
    if-nez p1, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 235
    .local v0, boRemove:Z
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->l:[B

    monitor-enter v2

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d()V

    .line 242
    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->k:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 245
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 246
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a()I

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c()V

    .line 256
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 250
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 252
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 253
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a()I

    goto :goto_1

    .line 258
    :cond_4
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 259
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 260
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a()I

    .line 263
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->n:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    .line 104
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c:Z

    .line 105
    iput-boolean v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    .line 106
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c:Z

    .line 109
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    if-ne v0, v2, :cond_1

    .line 110
    iput-boolean v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    .line 111
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e:[B

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e:[B

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z
    .locals 6
    .parameter "city"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 989
    if-nez p1, :cond_0

    .line 1032
    :goto_0
    return v2

    .line 992
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b()Z

    move-result v1

    .line 998
    .local v1, sholdstartDownload:Z
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->l:[B

    monitor-enter v4

    .line 999
    :try_start_0
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1000
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_1

    .line 1001
    if-eqz v1, :cond_5

    .line 1002
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d()V

    .line 1005
    iget-object v5, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->k:Ljava/lang/String;

    .line 1006
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1014
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1016
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1019
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->g(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z

    move-result v4

    .line 1023
    if-nez v4, :cond_3

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    move v0, v3

    .line 1026
    .local v0, deleteFiles:Z
    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;I)V

    .line 1028
    if-ne v1, v3, :cond_4

    .line 1029
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c()V

    :cond_4
    move v2, v0

    .line 1032
    goto :goto_0

    .line 1010
    .end local v0           #deleteFiles:Z
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1019
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_6
    move v0, v2

    .line 1023
    goto :goto_2
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c:Z

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e:[B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c:Z

    .line 179
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    if-nez v0, :cond_1

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->l:[B

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f:Landroid/content/Context;

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
