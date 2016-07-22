.class public Lcom/didi/common/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static zipInputStream:Ljava/util/zip/ZipInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"
    .parameter "str"

    .prologue
    .line 210
    invoke-static {p0}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 216
    .local v3, outStream:Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 217
    .local v0, b:[B
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 218
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 219
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v0           #b:[B
    .end local v3           #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static byte2AudioFile([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "b"
    .parameter "fileName"

    .prologue
    .line 616
    :try_start_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/didi/common/base/BaseApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 617
    .local v1, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 618
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 619
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v1           #outStream:Ljava/io/FileOutputStream;
    .end local p1
    :goto_0
    return-object p1

    .line 621
    .restart local p1
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 624
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static closeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 672
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 673
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeInputStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 585
    if-nez p0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 588
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeOutStream(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"

    .prologue
    .line 595
    if-nez p0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 598
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 544
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 547
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 548
    .local v1, bos:Ljava/io/BufferedOutputStream;
    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->getAvailableSize(Ljava/io/InputStream;)I

    move-result v4

    new-array v2, v4, [B

    .line 549
    .local v2, buf:[B
    const/4 v3, 0x0

    .line 550
    .local v3, i:I
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 551
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 553
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 554
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    const/4 v7, 0x0

    .line 917
    const/4 v2, 0x0

    .line 918
    .local v2, bytesum:I
    const/4 v1, 0x0

    .line 919
    .local v1, byteread:I
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 920
    .local v6, oldfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 921
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 922
    .local v5, inStream:Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 923
    .local v4, fs:Ljava/io/FileOutputStream;
    const/16 v8, 0x5a4

    new-array v0, v8, [B

    .line 924
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 925
    add-int/2addr v2, v1

    .line 926
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(I)V

    .line 927
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 934
    .end local v0           #buffer:[B
    .end local v4           #fs:Ljava/io/FileOutputStream;
    .end local v5           #inStream:Ljava/io/InputStream;
    .end local v6           #oldfile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 935
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 936
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return v7

    .line 929
    .restart local v0       #buffer:[B
    .restart local v4       #fs:Ljava/io/FileOutputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    .restart local v6       #oldfile:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 930
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "fileName"
    .parameter "isOver"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    .line 107
    .local v0, b:Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, file:Ljava/io/File;
    if-eqz p1, :cond_2

    .line 110
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static cutTheTailOfTheFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ".tmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x0

    const-string v3, ".tmp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, str:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 89
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public static deleExpireFile(J)V
    .locals 11
    .parameter "keepTimes"

    .prologue
    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 753
    .local v1, currentTimes:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/didi/common/util/Constant;->TRACE_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".log"

    invoke-static {v9, v10}, Lcom/didi/common/util/FileUtil;->getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 754
    .local v3, fileList:[Ljava/io/File;
    if-eqz v3, :cond_1

    .line 755
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, v0, v5

    .line 756
    .local v4, files:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 757
    .local v7, m:J
    sub-long v9, v1, v7

    cmp-long v9, v9, p0

    if-lez v9, :cond_0

    .line 758
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 755
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 762
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #files:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #m:J
    :cond_1
    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-static {p0}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 0
    .parameter "dir"

    .prologue
    .line 703
    invoke-static {p0}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 704
    return-void
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 0
    .parameter "dir"

    .prologue
    .line 777
    invoke-static {p0}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 778
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 686
    if-nez p0, :cond_1

    .line 700
    :cond_0
    return-void

    .line 689
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 690
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 691
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 692
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 694
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 695
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 694
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static getAvailableSize(Ljava/io/InputStream;)I
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    if-nez p0, :cond_1

    .line 559
    const/4 v0, 0x0

    .line 561
    :cond_0
    :goto_0
    return v0

    .line 560
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 561
    .local v0, available:I
    if-gtz v0, :cond_0

    const/16 v0, 0x400

    goto :goto_0
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v9, 0x0

    .line 953
    const/4 v7, 0x0

    .line 954
    .local v7, cursor:Landroid/database/Cursor;
    const-string v6, "_data"

    .line 955
    .local v6, column:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 960
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 962
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 964
    .local v8, index:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 967
    if-eqz v7, :cond_0

    .line 968
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 970
    .end local v8           #index:I
    :cond_0
    :goto_0
    return-object v0

    .line 967
    :cond_1
    if-eqz v7, :cond_2

    .line 968
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 970
    goto :goto_0

    .line 967
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 968
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getExtensionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 830
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 831
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 832
    .local v0, dot:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 833
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 836
    .end local v0           #dot:I
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .parameter "file"

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x400

    .line 514
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 534
    :goto_0
    return-object v7

    .line 518
    :cond_0
    const/4 v2, 0x0

    .line 519
    .local v2, digest:Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 520
    .local v4, in:Ljava/io/FileInputStream;
    new-array v1, v9, [B

    .line 523
    .local v1, buffer:[B
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 524
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 525
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, len:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 526
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 529
    .end local v6           #len:I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 530
    .end local v5           #in:Ljava/io/FileInputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 528
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v6       #len:I
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 533
    new-instance v0, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 534
    .local v0, bigInt:Ljava/math/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 529
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v6           #len:I
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 652
    const-string v7, ""

    .line 653
    .local v7, path:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 661
    :goto_0
    return-object v7

    .line 656
    :cond_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 657
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 658
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 659
    invoke-static {v6}, Lcom/didi/common/util/FileUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 5
    .parameter "fileName"

    .prologue
    const-wide/16 v2, 0x0

    .line 492
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 504
    :goto_0
    return-wide v2

    .line 496
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 501
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 502
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFiles4Filter(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;
    .locals 2
    .parameter "path"
    .parameter "suffix"

    .prologue
    .line 715
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    :cond_0
    const/4 v1, 0x0

    .line 726
    :goto_0
    return-object v1

    .line 718
    :cond_1
    new-instance v0, Lcom/didi/common/util/FileUtil$1;

    invoke-direct {v0, p1}, Lcom/didi/common/util/FileUtil$1;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, filter:Ljava/io/FileFilter;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static getImageFile(Ljava/lang/String;Lcom/didi/frame/business/Business;)Ljava/io/File;
    .locals 3
    .parameter "filename"
    .parameter "business"

    .prologue
    .line 787
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_0

    .line 788
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_TAXI_IMG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 794
    :goto_0
    return-object v0

    .line 789
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_1

    .line 790
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_CAR_IMG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_2

    .line 792
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_DDRIVE_IMG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/didi/common/util/Constant;->ANNOUNCEMENT_FLIER_IMG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .parameter "uri"

    .prologue
    .line 635
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 641
    :goto_0
    return-object v1

    .line 638
    :cond_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLogFileSize(Ljava/lang/String;)J
    .locals 5
    .parameter "fileName"

    .prologue
    const-wide/16 v1, 0x0

    .line 478
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-wide v1

    .line 482
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    goto :goto_0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "uri"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 843
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 846
    .local v3, isKitKat:Z
    :goto_0
    if-eqz v3, :cond_7

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 848
    invoke-static {p1}, Lcom/didi/common/util/FileUtil;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 849
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, docId:Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 851
    .local v6, split:[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 853
    .local v7, type:Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 854
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 902
    .end local v1           #docId:Ljava/lang/String;
    .end local v6           #split:[Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .end local v3           #isKitKat:Z
    :cond_1
    move v3, v10

    .line 843
    goto :goto_0

    .line 859
    .restart local v3       #isKitKat:Z
    :cond_2
    invoke-static {p1}, Lcom/didi/common/util/FileUtil;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 860
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 861
    .local v2, id:Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 864
    .local v0, contentUri:Landroid/net/Uri;
    invoke-static {p0, v0, v8, v8}, Lcom/didi/common/util/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 867
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v2           #id:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/didi/common/util/FileUtil;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 868
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 869
    .restart local v1       #docId:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 870
    .restart local v6       #split:[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 872
    .restart local v7       #type:Ljava/lang/String;
    const/4 v0, 0x0

    .line 873
    .restart local v0       #contentUri:Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 874
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 881
    :cond_4
    :goto_2
    const-string v4, "_id=?"

    .line 882
    .local v4, selection:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aget-object v8, v6, v9

    aput-object v8, v5, v10

    .line 886
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-static {p0, v0, v8, v5}, Lcom/didi/common/util/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 875
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    :cond_5
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 876
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 877
    :cond_6
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 878
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 890
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #docId:Ljava/lang/String;
    .end local v6           #split:[Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_7
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 892
    invoke-static {p1}, Lcom/didi/common/util/FileUtil;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 893
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 895
    :cond_8
    invoke-static {p0, p1, v8, v8}, Lcom/didi/common/util/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 898
    :cond_9
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 899
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public static getTempFileName(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "httpResponse"

    .prologue
    .line 65
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 68
    :cond_0
    const-string v4, "content-disposition"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 69
    .local v1, header:Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, val:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 71
    const-string v4, ".*filename=(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 72
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    .end local v1           #header:Lorg/apache/http/Header;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #val:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 77
    .restart local v1       #header:Lorg/apache/http/Header;
    .restart local v3       #val:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .end local v1           #header:Lorg/apache/http/Header;
    .end local v3           #val:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getUrlFromTxt(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "filePath"

    .prologue
    .line 801
    const/4 v3, 0x0

    .line 802
    .local v3, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 803
    .local v0, br:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 804
    .local v7, strXmlLine:Ljava/lang/String;
    const-string v6, ""

    .line 805
    .local v6, strXmlInfo:Ljava/lang/String;
    const/4 v5, 0x0

    .line 807
    .local v5, str:[Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 808
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 809
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 810
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 812
    :cond_0
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v5

    .line 818
    if-eqz v1, :cond_3

    .line 820
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 826
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :cond_1
    :goto_1
    return-object v5

    .line 821
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #file:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 822
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 823
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_1

    .line 813
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 814
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 818
    if-eqz v0, :cond_1

    .line 820
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 821
    :catch_2
    move-exception v2

    .line 822
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 815
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 816
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 818
    if-eqz v0, :cond_1

    .line 820
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 821
    :catch_4
    move-exception v2

    .line 822
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 818
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_2

    .line 820
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 823
    :cond_2
    :goto_5
    throw v8

    .line 821
    :catch_5
    move-exception v2

    .line 822
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 818
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #file:Ljava/io/File;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_4

    .line 815
    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #file:Ljava/io/File;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_3

    .line 813
    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #file:Ljava/io/File;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #file:Ljava/io/File;
    :cond_3
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_1
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 987
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 126
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    .line 129
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 979
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFindFile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->TRACE_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "traceLog.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 733
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    .end local v1           #fileName:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #fileName:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 1003
    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 995
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isNull(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mkDir(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 174
    :goto_0
    return v1

    .line 169
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const/4 v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 233
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 253
    :goto_0
    return-object v6

    .line 236
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 240
    .local v3, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    .local v5, outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 242
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 243
    .local v4, len:I
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 244
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 250
    .end local v0           #buffer:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #len:I
    .end local v5           #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #len:I
    .restart local v5       #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 247
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 248
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 249
    const-string v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method public static readFileToByte(Ljava/lang/String;)[B
    .locals 8
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 257
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 277
    :goto_0
    return-object v6

    .line 260
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 264
    .local v3, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 265
    .local v5, outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 266
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 267
    .local v4, len:I
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 268
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 274
    .end local v0           #buffer:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #len:I
    .end local v5           #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 275
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #len:I
    .restart local v5       #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 271
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 272
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 273
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method public static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "inStream"

    .prologue
    const/4 v4, 0x0

    .line 284
    if-nez p0, :cond_0

    .line 301
    :goto_0
    return-object v4

    .line 287
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    .local v3, outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 289
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 291
    .local v2, len:I
    :goto_1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 292
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 294
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 295
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 296
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 297
    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "oldFileName"
    .parameter "newFileName"

    .prologue
    .line 741
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    :goto_0
    return-void

    .line 744
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v1, source:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->TRACE_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    .local v0, newFileNm:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public static save(Landroid/net/Uri;[B)V
    .locals 4
    .parameter "uri"
    .parameter "data"

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, path:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 574
    .local v0, baos:Ljava/io/BufferedOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 575
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 576
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 582
    .end local v0           #baos:Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 579
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 580
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static save(Ljava/io/File;Ljava/lang/Object;)V
    .locals 4
    .parameter "file"
    .parameter "obj"

    .prologue
    .line 765
    const/4 v1, 0x0

    .line 767
    .local v1, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .local v2, oos:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 772
    invoke-static {v2}, Lcom/didi/common/util/FileUtil;->closeOutStream(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 774
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 772
    invoke-static {v1}, Lcom/didi/common/util/FileUtil;->closeOutStream(Ljava/io/OutputStream;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/didi/common/util/FileUtil;->closeOutStream(Ljava/io/OutputStream;)V

    throw v3

    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 769
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method public static saveFile(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter "fileName"
    .parameter "is"

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/didi/common/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 306
    return-void
.end method

.method public static saveFile(Ljava/lang/String;Ljava/io/InputStream;Z)V
    .locals 5
    .parameter "fileName"
    .parameter "is"
    .parameter "append"

    .prologue
    .line 317
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 322
    .local v3, outStream:Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 323
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 324
    .local v2, len:I
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 325
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 330
    .end local v0           #buffer:[B
    .end local v2           #len:I
    .end local v3           #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 331
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 327
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v2       #len:I
    .restart local v3       #outStream:Ljava/io/OutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 328
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 329
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static saveFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "fileName"
    .parameter "content"
    .parameter "append"

    .prologue
    .line 336
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0, p2}, Lcom/didi/common/util/FileUtil;->saveFile(Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto :goto_0
.end method

.method public static sequenceFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "file1"
    .parameter "file2"
    .parameter "file3"

    .prologue
    .line 353
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, f1:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v2, f2:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v3, f3:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 362
    .local v4, in1:Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 363
    .local v5, in2:Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 364
    .local v6, outStream:Ljava/io/OutputStream;
    new-instance v7, Ljava/io/SequenceInputStream;

    invoke-direct {v7, v4, v5}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 365
    .local v7, sis:Ljava/io/SequenceInputStream;
    const/4 v8, 0x0

    .line 366
    .local v8, temp:I
    :goto_1
    invoke-virtual {v7}, Ljava/io/SequenceInputStream;->read()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 367
    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 373
    .end local v4           #in1:Ljava/io/InputStream;
    .end local v5           #in2:Ljava/io/InputStream;
    .end local v6           #outStream:Ljava/io/OutputStream;
    .end local v7           #sis:Ljava/io/SequenceInputStream;
    .end local v8           #temp:I
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 369
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #in1:Ljava/io/InputStream;
    .restart local v5       #in2:Ljava/io/InputStream;
    .restart local v6       #outStream:Ljava/io/OutputStream;
    .restart local v7       #sis:Ljava/io/SequenceInputStream;
    .restart local v8       #temp:I
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 370
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 371
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 372
    invoke-virtual {v7}, Ljava/io/SequenceInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static unZipFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "zipFile"
    .parameter "fileName"

    .prologue
    .line 453
    invoke-static {p1}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p0}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v4, outFile:Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 461
    .local v7, zpFile:Ljava/util/zip/ZipFile;
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v8, Lcom/didi/common/util/FileUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    .line 462
    sget-object v8, Lcom/didi/common/util/FileUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 463
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v7, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 464
    .local v3, input:Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 465
    .local v5, output:Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 466
    .local v6, temp:I
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 467
    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 471
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #input:Ljava/io/InputStream;
    .end local v5           #output:Ljava/io/OutputStream;
    .end local v6           #temp:I
    .end local v7           #zpFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 469
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #input:Ljava/io/InputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    .restart local v6       #temp:I
    .restart local v7       #zpFile:Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 470
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"
    .parameter "str"

    .prologue
    .line 186
    invoke-static {p0}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 192
    .local v3, outStream:Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 193
    .local v0, b:[B
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 194
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 195
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v0           #b:[B
    .end local v3           #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"
    .parameter "zipFile"

    .prologue
    .line 421
    invoke-static {p0}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    :cond_0
    const/4 p1, 0x0

    .line 441
    .end local p1
    :goto_0
    return-object p1

    .line 424
    .restart local p1
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v1, file:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v5, zf:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 428
    .local v2, inputStream:Ljava/io/InputStream;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 429
    .local v3, out:Ljava/util/zip/ZipOutputStream;
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 430
    const-string v6, "Zip File"

    invoke-virtual {v3, v6}, Ljava/util/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    .line 431
    const/4 v4, 0x0

    .line 432
    .local v4, tmp:I
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 433
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 438
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #out:Ljava/util/zip/ZipOutputStream;
    .end local v4           #tmp:I
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v3       #out:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #tmp:I
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 436
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 437
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static zipFile([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "srcfile"
    .parameter "zipFile"

    .prologue
    .line 387
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/FileUtil;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    :cond_0
    const/4 p1, 0x0

    .line 409
    .end local p1
    :goto_0
    return-object p1

    .line 391
    .restart local p1
    :cond_1
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 393
    .local v0, buf:[B
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, file:Ljava/io/File;
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 395
    .local v6, out:Ljava/util/zip/ZipOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_3

    .line 396
    new-instance v4, Ljava/io/FileInputStream;

    aget-object v7, p0, v3

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 397
    .local v4, in:Ljava/io/FileInputStream;
    new-instance v7, Ljava/util/zip/ZipEntry;

    aget-object v8, p0, v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 399
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_2

    .line 400
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 406
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i:I
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v5           #len:I
    .end local v6           #out:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v1

    .line 407
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 402
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #i:I
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v5       #len:I
    .restart local v6       #out:Ljava/util/zip/ZipOutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 403
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 395
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 405
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v5           #len:I
    :cond_3
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
