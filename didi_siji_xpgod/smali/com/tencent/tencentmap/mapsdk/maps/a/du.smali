.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/du;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 13
    .parameter "zipFile"
    .parameter "folderPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, desDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_0
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 48
    .local v10, zf:Ljava/util/zip/ZipFile;
    const v11, 0xc000

    new-array v0, v11, [B

    .line 50
    .local v0, buffer:[B
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 51
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 52
    .local v4, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 53
    .local v6, in:Ljava/io/InputStream;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, str:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, desFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 57
    .local v5, fileParentDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 58
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 62
    .end local v5           #fileParentDir:Ljava/io/File;
    :cond_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v7, out:Ljava/io/OutputStream;
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, realLength:I
    if-lez v8, :cond_3

    .line 64
    const/4 v11, 0x0

    invoke-virtual {v7, v0, v11, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 67
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 68
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 70
    .end local v2           #desFile:Ljava/io/File;
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #out:Ljava/io/OutputStream;
    .end local v8           #realLength:I
    .end local v9           #str:Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 71
    return-void
.end method
