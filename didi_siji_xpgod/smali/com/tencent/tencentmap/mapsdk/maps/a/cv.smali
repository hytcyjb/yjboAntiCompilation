.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cv;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# direct methods
.method public static a([B)[B
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 147
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    .local v1, is:Ljava/util/zip/InflaterInputStream;
    new-array v3, v7, [B

    .line 149
    .local v3, rdata:[B
    const/4 v5, 0x0

    .line 150
    .local v5, total:I
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 154
    .local v0, data_atime:[B
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 159
    .local v2, len:I
    if-lez v2, :cond_1

    .line 160
    add-int/2addr v5, v2

    .line 161
    new-array v4, v5, [B

    .line 162
    .local v4, temp:[B
    array-length v6, v3

    invoke-static {v3, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    array-length v6, v3

    invoke-static {v0, v7, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    move-object v3, v4

    .line 152
    .end local v4           #temp:[B
    :cond_1
    if-gtz v2, :cond_0

    move-object v6, v3

    .line 168
    .end local v2           #len:I
    :goto_0
    return-object v6

    .line 156
    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    const/4 v6, 0x0

    goto :goto_0
.end method
