.class public Lcom/didi/common/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readRandomByte(Ljava/lang/String;)[B
    .locals 11
    .parameter "fileName"

    .prologue
    const v9, 0xc800

    .line 47
    new-array v0, v9, [B

    .line 48
    .local v0, begin:[B
    new-array v6, v9, [B

    .line 49
    .local v6, middle:[B
    new-array v3, v9, [B

    .line 52
    .local v3, end:[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 53
    .local v4, fis:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v7

    .line 54
    .local v7, t:I
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v1, bis:Ljava/io/BufferedInputStream;
    const-wide/16 v9, -0x1

    invoke-virtual {v1, v9, v10}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 56
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v1, v0, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 58
    div-int/lit8 v9, v7, 0x2

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 59
    const/4 v9, 0x0

    array-length v10, v6

    invoke-virtual {v1, v6, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 61
    array-length v9, v3

    sub-int v9, v7, v9

    int-to-long v9, v9

    invoke-virtual {v1, v9, v10}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 62
    const/4 v9, 0x0

    array-length v10, v3

    invoke-virtual {v1, v3, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 64
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 65
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #t:I
    :goto_0
    array-length v9, v0

    array-length v10, v6

    add-int/2addr v9, v10

    array-length v10, v3

    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 73
    .local v8, total:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v0

    if-ge v5, v9, :cond_0

    .line 74
    aget-byte v9, v0, v5

    aput-byte v9, v8, v5

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    .end local v5           #i:I
    .end local v8           #total:[B
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 69
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i:I
    .restart local v8       #total:[B
    :cond_0
    const/4 v5, 0x0

    :goto_2
    array-length v9, v6

    if-ge v5, v9, :cond_1

    .line 77
    array-length v9, v0

    add-int/2addr v9, v5

    aget-byte v10, v6, v5

    aput-byte v10, v8, v9

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 79
    :cond_1
    const/4 v5, 0x0

    :goto_3
    array-length v9, v3

    if-ge v5, v9, :cond_2

    .line 80
    array-length v9, v0

    add-int/2addr v9, v5

    array-length v10, v6

    add-int/2addr v9, v10

    aget-byte v10, v3, v5

    aput-byte v10, v8, v9

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 82
    :cond_2
    return-object v8
.end method

.method public static toMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "psd"

    .prologue
    .line 15
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 17
    .local v3, md5StrBuff:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 18
    .local v4, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 19
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 21
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 22
    .local v0, byteArray:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 23
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v0, v2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    .end local v0           #byteArray:[B
    .end local v2           #i:I
    .end local v4           #messageDigest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 26
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 30
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 27
    :catch_1
    move-exception v1

    .line 28
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static toMD5([B)Ljava/lang/String;
    .locals 8
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 35
    .local v3, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 36
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 39
    .local v0, byteArray:[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v2, md5StrBuff:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 41
    const-string v4, "%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v0, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toMD5ForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 90
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 113
    .end local p0
    :goto_0
    return-object p0

    .line 93
    .restart local p0
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, fis:Ljava/io/FileInputStream;
    const/high16 v8, 0x2

    new-array v0, v8, [B

    .line 96
    .local v0, buffer:[B
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v7, outStream:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 98
    .local v4, len:I
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 99
    invoke-virtual {v7, v0, v11, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 102
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 103
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 105
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 106
    .local v6, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 107
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 109
    .local v1, byteArray:[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v5, md5StrBuff:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v8, v1

    if-ge v3, v8, :cond_2

    .line 111
    const-string v8, "%02X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aget-byte v10, v1, v3

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
