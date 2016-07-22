.class public Lorg/egret/android/util/launcher/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v7, 0x0

    .line 16
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v7

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    .local v1, in:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 22
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 23
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 24
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 26
    .local v0, buffer:[B
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v2, v0, v8, v9}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    .local v6, read:I
    if-gtz v6, :cond_4

    .line 35
    if-eqz v2, :cond_2

    .line 36
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 38
    :cond_2
    if-eqz v5, :cond_3

    .line 39
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 29
    :cond_3
    :goto_2
    const/4 v7, 0x1

    goto :goto_0

    .line 27
    :cond_4
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 30
    .end local v0           #buffer:[B
    .end local v6           #read:I
    :catch_0
    move-exception v3

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 31
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    .local v3, ioe:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 35
    if-eqz v1, :cond_5

    .line 36
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 38
    :cond_5
    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 41
    :catch_1
    move-exception v3

    .line 42
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #read:I
    :catch_2
    move-exception v3

    .line 42
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 33
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .end local v6           #read:I
    .restart local v1       #in:Ljava/io/FileInputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    .line 35
    :goto_4
    if-eqz v1, :cond_6

    .line 36
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 38
    :cond_6
    if-eqz v4, :cond_7

    .line 39
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 44
    :cond_7
    :goto_5
    throw v7

    .line 41
    :catch_3
    move-exception v3

    .line 42
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 33
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 30
    :catch_4
    move-exception v3

    goto :goto_3

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static CopyToRoot(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .parameter "src"
    .parameter "dstRoot"

    .prologue
    .line 48
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    return v1

    .line 51
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v0, dst:Ljava/io/File;
    invoke-static {p0, v0}, Lorg/egret/android/util/launcher/FileUtil;->Copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static Move(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 56
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static MoveToRoot(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .parameter "src"
    .parameter "dstRoot"

    .prologue
    .line 60
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1

    .line 63
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v0, dst:Ljava/io/File;
    invoke-static {p0, v0}, Lorg/egret/android/util/launcher/FileUtil;->Move(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .parameter "file"

    .prologue
    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, fileReader:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 96
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 97
    .end local v3           #fileReader:Ljava/io/FileReader;
    .local v4, fileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 100
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v6, strBuffer:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 111
    if-eqz v1, :cond_0

    .line 112
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 114
    :cond_0
    if-eqz v4, :cond_1

    .line 115
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 108
    .end local v4           #fileReader:Ljava/io/FileReader;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #strBuffer:Ljava/lang/StringBuilder;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :goto_2
    return-object v7

    .line 103
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #strBuffer:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 106
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #strBuffer:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 107
    .end local v4           #fileReader:Ljava/io/FileReader;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 114
    :cond_3
    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 108
    :cond_4
    :goto_4
    const/4 v7, 0x0

    goto :goto_2

    .line 117
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #strBuffer:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    .line 118
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #strBuffer:Ljava/lang/StringBuilder;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 109
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 111
    :goto_5
    if-eqz v0, :cond_5

    .line 112
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 114
    :cond_5
    if-eqz v3, :cond_6

    .line 115
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 120
    :cond_6
    :goto_6
    throw v7

    .line 117
    :catch_3
    move-exception v2

    .line 118
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 109
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_5

    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_5

    .line 106
    :catch_4
    move-exception v2

    goto :goto_3

    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "dst"
    .parameter "content"

    .prologue
    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, out:Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 71
    .local v0, bufferedWriter:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .end local v3           #out:Ljava/io/FileWriter;
    .local v4, out:Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 73
    .end local v0           #bufferedWriter:Ljava/io/BufferedWriter;
    .local v1, bufferedWriter:Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 80
    if-eqz v1, :cond_0

    .line 81
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 83
    :cond_0
    if-eqz v4, :cond_1

    .line 84
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
    :cond_1
    :goto_0
    const/4 v5, 0x1

    move-object v0, v1

    .end local v1           #bufferedWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferedWriter:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 77
    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :goto_1
    return v5

    .line 86
    .end local v0           #bufferedWriter:Ljava/io/BufferedWriter;
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v1       #bufferedWriter:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 87
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1           #bufferedWriter:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v0       #bufferedWriter:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    .line 76
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 83
    :cond_2
    if-eqz v3, :cond_3

    .line 84
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 77
    :cond_3
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 86
    :catch_2
    move-exception v2

    .line 87
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 78
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 80
    :goto_4
    if-eqz v0, :cond_4

    .line 81
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 83
    :cond_4
    if-eqz v3, :cond_5

    .line 84
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 89
    :cond_5
    :goto_5
    throw v5

    .line 86
    :catch_3
    move-exception v2

    .line 87
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 78
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    goto :goto_4

    .end local v0           #bufferedWriter:Ljava/io/BufferedWriter;
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v1       #bufferedWriter:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1           #bufferedWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferedWriter:Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    goto :goto_4

    .line 75
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    goto :goto_2

    .end local v0           #bufferedWriter:Ljava/io/BufferedWriter;
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v1       #bufferedWriter:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferedWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferedWriter:Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    goto :goto_2
.end method
