.class public Lorg/egret/android/util/launcher/ZipClass;
.super Ljava/lang/Object;
.source "ZipClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/android/util/launcher/ZipClass$OnZipListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ZipClass"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/android/util/launcher/ZipClass$OnZipListener;)Z
    .locals 20
    .parameter "src"
    .parameter "dstRoot"
    .parameter "listener"

    .prologue
    .line 38
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 39
    :cond_0
    const-string v17, "ZipClass"

    const-string v18, "src or dstRoot may be null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/16 v17, 0x0

    .line 114
    :goto_0
    return v17

    .line 44
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-nez v17, :cond_3

    .line 45
    const-string v17, "ZipClass"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "fail to mkdir "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz p3, :cond_2

    .line 47
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "fail to mkdir "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    .line 49
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 52
    :cond_3
    const/4 v15, 0x0

    .line 53
    .local v15, zipfile:Ljava/util/zip/ZipFile;
    const/4 v7, 0x0

    .line 54
    .local v7, in:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 56
    .local v9, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v16, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 57
    .end local v15           #zipfile:Ljava/util/zip/ZipFile;
    .local v16, zipfile:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->size()I

    move-result v13

    .line 58
    .local v13, size:I
    const/4 v2, 0x0

    .line 59
    .local v2, count:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .local v5, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    move-object v10, v9

    .line 61
    .end local v9           #out:Ljava/io/FileOutputStream;
    .local v10, out:Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-nez v17, :cond_9

    .line 103
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    .line 104
    const-string v17, "ZipClass"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "success to unzip "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz p3, :cond_5

    .line 106
    invoke-interface/range {p3 .. p3}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onSuccess()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 117
    :cond_5
    if-eqz v16, :cond_6

    .line 118
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    .line 120
    :cond_6
    if-eqz v7, :cond_7

    .line 121
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_7
    if-eqz v10, :cond_8

    .line 124
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 108
    :cond_8
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 62
    :cond_9
    if-eqz p3, :cond_d

    :try_start_4
    invoke-static {}, Lorg/egret/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/android/util/launcher/ExecutorLab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/egret/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v17

    if-nez v17, :cond_d

    .line 63
    const-string v17, "zip thread is cancelled"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 117
    if-eqz v16, :cond_a

    .line 118
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    .line 120
    :cond_a
    if-eqz v7, :cond_b

    .line 121
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_b
    if-eqz v10, :cond_c

    .line 124
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 64
    :cond_c
    :goto_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 126
    :catch_0
    move-exception v4

    .line 127
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    if-eqz p3, :cond_c

    .line 129
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_3

    .line 66
    .end local v4           #e:Ljava/io/IOException;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 67
    if-eqz p3, :cond_e

    .line 68
    :try_start_6
    move-object/from16 v0, p3

    invoke-interface {v0, v2, v13}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onProgress(II)V

    .line 70
    :cond_e
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 71
    .local v6, entry:Ljava/util/zip/ZipEntry;
    new-instance v14, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v14, target:Ljava/io/File;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 73
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-nez v17, :cond_4

    .line 74
    const-string v17, "ZipClass"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "fail to mkdir "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz p3, :cond_f

    .line 76
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "fail to mkdir "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 117
    :cond_f
    if-eqz v16, :cond_10

    .line 118
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    .line 120
    :cond_10
    if-eqz v7, :cond_11

    .line 121
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_11
    if-eqz v10, :cond_12

    .line 124
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 78
    :cond_12
    :goto_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v4

    .line 127
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    if-eqz p3, :cond_12

    .line 129
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_4

    .line 83
    .end local v4           #e:Ljava/io/IOException;
    :cond_13
    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v8, v0

    .line 84
    .local v8, length:I
    const/4 v11, 0x0

    .line 85
    .local v11, progress:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 86
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 87
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    :try_start_9
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 89
    .local v3, data:[B
    :cond_14
    :goto_5
    const/16 v17, 0x0

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .local v12, read:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_15

    .line 100
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 101
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    move-object v10, v9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 90
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :cond_15
    if-eqz p3, :cond_19

    invoke-static {}, Lorg/egret/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/android/util/launcher/ExecutorLab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/egret/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v17

    if-nez v17, :cond_19

    .line 91
    const-string v17, "zip thread is cancelled"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 117
    if-eqz v16, :cond_16

    .line 118
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    .line 120
    :cond_16
    if-eqz v7, :cond_17

    .line 121
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_17
    if-eqz v9, :cond_18

    .line 124
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 92
    :cond_18
    :goto_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 126
    :catch_2
    move-exception v4

    .line 127
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    if-eqz p3, :cond_18

    .line 129
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_6

    .line 94
    .end local v4           #e:Ljava/io/IOException;
    :cond_19
    const/16 v17, 0x0

    :try_start_b
    move/from16 v0, v17

    invoke-virtual {v9, v3, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 95
    add-int/2addr v11, v12

    .line 96
    if-eqz p3, :cond_14

    .line 97
    move-object/from16 v0, p3

    invoke-interface {v0, v11, v8}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onFileProgress(II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_5

    .line 109
    .end local v2           #count:I
    .end local v3           #data:[B
    .end local v5           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #length:I
    .end local v11           #progress:I
    .end local v12           #read:I
    .end local v13           #size:I
    .end local v14           #target:Ljava/io/File;
    :catch_3
    move-exception v4

    move-object/from16 v15, v16

    .line 110
    .end local v16           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v4       #e:Ljava/io/IOException;
    .restart local v15       #zipfile:Ljava/util/zip/ZipFile;
    :goto_7
    :try_start_c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    if-eqz p3, :cond_1a

    .line 112
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 117
    :cond_1a
    if-eqz v15, :cond_1b

    .line 118
    :try_start_d
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    .line 120
    :cond_1b
    if-eqz v7, :cond_1c

    .line 121
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_1c
    if-eqz v9, :cond_1d

    .line 124
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 114
    :cond_1d
    :goto_8
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 126
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v15           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v2       #count:I
    .restart local v5       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10       #out:Ljava/io/FileOutputStream;
    .restart local v13       #size:I
    .restart local v16       #zipfile:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v4

    .line 127
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    if-eqz p3, :cond_8

    .line 129
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 126
    .end local v2           #count:I
    .end local v5           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v10           #out:Ljava/io/FileOutputStream;
    .end local v13           #size:I
    .end local v16           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    .restart local v15       #zipfile:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v4

    .line 127
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    if-eqz p3, :cond_1d

    .line 129
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_8

    .line 115
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 117
    :goto_9
    if-eqz v15, :cond_1e

    .line 118
    :try_start_e
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    .line 120
    :cond_1e
    if-eqz v7, :cond_1f

    .line 121
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_1f
    if-eqz v9, :cond_20

    .line 124
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 132
    :cond_20
    :goto_a
    throw v17

    .line 126
    :catch_6
    move-exception v4

    .line 127
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    if-eqz p3, :cond_20

    .line 129
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_a

    .line 115
    .end local v4           #e:Ljava/io/IOException;
    .end local v15           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v16       #zipfile:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v17

    move-object/from16 v15, v16

    .end local v16           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v15       #zipfile:Ljava/util/zip/ZipFile;
    goto :goto_9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v15           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v2       #count:I
    .restart local v5       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10       #out:Ljava/io/FileOutputStream;
    .restart local v13       #size:I
    .restart local v16       #zipfile:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v17

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v15       #zipfile:Ljava/util/zip/ZipFile;
    goto :goto_9

    .line 109
    .end local v2           #count:I
    .end local v5           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v13           #size:I
    :catch_7
    move-exception v4

    goto :goto_7

    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v15           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v2       #count:I
    .restart local v5       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10       #out:Ljava/io/FileOutputStream;
    .restart local v13       #size:I
    .restart local v16       #zipfile:Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v4

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v15       #zipfile:Ljava/util/zip/ZipFile;
    goto :goto_7
.end method


# virtual methods
.method public unzip(Ljava/io/File;Ljava/io/File;Lorg/egret/android/util/launcher/ZipClass$OnZipListener;)V
    .locals 2
    .parameter "src"
    .parameter "dstRoot"
    .parameter "listener"

    .prologue
    .line 30
    if-nez p3, :cond_0

    .line 31
    const-string v0, "ZipClass"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/egret/android/util/launcher/ZipClass;->doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/android/util/launcher/ZipClass$OnZipListener;)Z

    .line 34
    return-void
.end method

.method public unzip(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .parameter "src"
    .parameter "dstRoot"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/egret/android/util/launcher/ZipClass;->doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/android/util/launcher/ZipClass$OnZipListener;)Z

    move-result v0

    return v0
.end method
