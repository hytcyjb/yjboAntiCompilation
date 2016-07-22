.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/go;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/go;->a:[C

    return-void

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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 16
    .local v7, md5:Ljava/security/MessageDigest;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v10, 0x2000

    new-array v10, v10, [B

    :goto_0
    invoke-virtual {v9, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12, v11}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 17
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 19
    .local v4, checkBytes:[B
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v8, sb:Ljava/lang/StringBuffer;
    move-object v0, v4

    .local v0, arr$:[B
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-byte v1, v0, v5

    .line 22
    .local v1, b:B
    sget-object v9, Lcom/tencent/tencentmap/mapsdk/maps/a/go;->a:[C

    and-int/lit8 v10, v1, 0xf

    aget-char v2, v9, v10

    .line 23
    .local v2, c1:C
    sget-object v9, Lcom/tencent/tencentmap/mapsdk/maps/a/go;->a:[C

    ushr-int/lit8 v10, v1, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v3, v9, v10

    .line 24
    .local v3, c2:C
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 21
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 27
    .end local v1           #b:B
    .end local v2           #c1:C
    .end local v3           #c2:C
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
