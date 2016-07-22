.class public Lorg/egret/android/util/launcher/Md5Util;
.super Ljava/lang/Object;
.source "Md5Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMd5(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "file"
    .parameter "md5String"

    .prologue
    const/4 v1, 0x0

    .line 11
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 15
    :cond_0
    :goto_0
    return v1

    .line 14
    :cond_1
    invoke-static {p0}, Lorg/egret/android/util/launcher/Md5Util;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, hash:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getMd5String([B)Ljava/lang/String;
    .locals 7
    .parameter "md"

    .prologue
    .line 47
    const/16 v5, 0x10

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    .line 49
    .local v1, hexDigits:[C
    array-length v3, p0

    .line 50
    .local v3, j:I
    mul-int/lit8 v5, v3, 0x2

    new-array v4, v5, [C

    .line 51
    .local v4, str:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 56
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 52
    :cond_0
    aget-byte v0, p0, v2

    .line 53
    .local v0, hex:B
    mul-int/lit8 v5, v2, 0x2

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    aput-char v6, v4, v5

    .line 54
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v0, 0xf

    aget-char v6, v1, v6

    aput-char v6, v4, v5

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .parameter "file"

    .prologue
    const/4 v6, 0x0

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-object v6

    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 24
    .local v3, in:Ljava/io/FileInputStream;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 25
    .local v5, md5:Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 27
    .end local v3           #in:Ljava/io/FileInputStream;
    .local v4, in:Ljava/io/FileInputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    .line 28
    .local v1, buffer:[B
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .local v0, b:I
    if-gtz v0, :cond_2

    .line 31
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lorg/egret/android/util/launcher/Md5Util;->getMd5String([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 37
    if-eqz v4, :cond_0

    .line 38
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v7, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 32
    .end local v0           #b:I
    .end local v1           #buffer:[B
    :catch_1
    move-exception v2

    move-object v3, v4

    .line 33
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v5           #md5:Ljava/security/MessageDigest;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37
    if-eqz v3, :cond_0

    .line 38
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 40
    :catch_2
    move-exception v2

    .line 41
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 37
    :goto_3
    if-eqz v3, :cond_3

    .line 38
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 43
    :cond_3
    :goto_4
    throw v6

    .line 40
    :catch_3
    move-exception v2

    .line 41
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 35
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v5       #md5:Ljava/security/MessageDigest;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 32
    .end local v5           #md5:Ljava/security/MessageDigest;
    :catch_4
    move-exception v2

    goto :goto_2
.end method
