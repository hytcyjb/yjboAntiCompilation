.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dg;
.super Ljava/lang/Object;
.source "HttpExecutor.java"


# static fields
.field private static a:I

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a:I

    .line 18
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Z)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    .locals 13
    .parameter "con"
    .parameter "isGetOrPost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v2, 0x0

    .line 242
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;

    invoke-direct {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;-><init>()V

    .line 243
    .local v4, response:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, contentType:Ljava/lang/String;
    const-string v7, "GBK"

    if-eqz v0, :cond_0

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_6

    :cond_0
    :goto_1
    iput-object v7, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->b:Ljava/lang/String;

    .line 245
    if-eqz p1, :cond_1

    .line 246
    if-eqz v0, :cond_8

    const-string v7, "vnd.wap.wml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_1

    .line 247
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 248
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 252
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_4

    .line 255
    const/4 v7, 0x0

    new-array v7, v7, [B

    iput-object v7, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B

    .line 256
    const/4 v6, 0x0

    .line 257
    .local v6, total:I
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 260
    .local v1, data_atime:[B
    :cond_2
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 261
    .local v3, len:I
    if-lez v3, :cond_3

    .line 262
    add-int/2addr v6, v3

    .line 263
    new-array v5, v6, [B

    .line 264
    .local v5, temp:[B
    iget-object v7, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B

    array-length v10, v10

    invoke-static {v7, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    const/4 v7, 0x0

    iget-object v8, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B

    array-length v8, v8

    invoke-static {v1, v7, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iput-object v5, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v5           #temp:[B
    :cond_3
    if-gtz v3, :cond_2

    .line 272
    .end local v1           #data_atime:[B
    .end local v3           #len:I
    .end local v6           #total:I
    :cond_4
    if-eqz v2, :cond_5

    .line 274
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    :cond_5
    :goto_3
    return-object v4

    .line 244
    :cond_6
    :try_start_2
    aget-object v11, v9, v8

    const-string v12, "charset"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v8, "="

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    const/4 v7, 0x1

    aget-object v7, v8, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 246
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 271
    .end local v0           #contentType:Ljava/lang/String;
    .end local v4           #response:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    :catchall_0
    move-exception v7

    .line 272
    if-eqz v2, :cond_9

    .line 274
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 278
    :cond_9
    :goto_4
    throw v7

    .restart local v0       #contentType:Ljava/lang/String;
    .restart local v4       #response:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    :catch_0
    move-exception v7

    goto :goto_3

    .end local v0           #contentType:Ljava/lang/String;
    .end local v4           #response:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    :catch_1
    move-exception v8

    goto :goto_4
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;[B)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    .locals 10
    .parameter "isGetOrPost"
    .parameter "url"
    .parameter "userAgent"
    .parameter "postData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    const/4 v4, 0x0

    .line 151
    .local v4, rc:I
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->e()Z

    move-result v8

    if-nez v8, :cond_0

    .line 152
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/a/dh;

    invoke-direct {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/dh;-><init>()V

    throw v6

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 156
    .local v0, con:Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 158
    .local v2, out:Ljava/io/DataOutputStream;
    const/4 v8, 0x1

    :try_start_0
    invoke-static {p1, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 160
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/di;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 161
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-static {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/di;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 169
    :cond_1
    :goto_0
    if-eqz p0, :cond_a

    .line 170
    const-string v8, "GET"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 174
    :goto_1
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 175
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->b()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 176
    const-string v8, "User-Agent"

    invoke-virtual {v0, v8, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 178
    if-eqz p0, :cond_2

    move v7, v6

    :cond_2
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 179
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 180
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a(Ljava/net/HttpURLConnection;)V

    .line 185
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 186
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->c()V

    .line 188
    if-nez p0, :cond_3

    if-eqz p3, :cond_3

    array-length v7, p3

    if-eqz v7, :cond_3

    .line 189
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/tencent/tencentmap/mapsdk/maps/a/df; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .end local v2           #out:Ljava/io/DataOutputStream;
    .local v3, out:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 191
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 192
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/tencent/tencentmap/mapsdk/maps/a/df; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 193
    const/4 v2, 0x0

    .line 195
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 197
    const/16 v7, 0xc8

    if-eq v4, v7, :cond_4

    .line 198
    const/16 v7, 0xce

    if-ne v4, v7, :cond_b

    .line 199
    :cond_4
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->d()V

    .line 200
    invoke-static {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(Ljava/net/HttpURLConnection;Z)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;

    move-result-object v5

    .line 201
    .local v5, response:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    if-eqz v5, :cond_5

    iget-object v7, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B

    if-eqz v7, :cond_5

    iget-object v6, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B

    array-length v6, v6

    :cond_5
    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/tencent/tencentmap/mapsdk/maps/a/df; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 226
    if-eqz v0, :cond_6

    .line 230
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 204
    :cond_6
    return-object v5

    .line 166
    .end local v5           #response:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    :cond_7
    :try_start_3
    const-string v8, "Host"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/tencent/tencentmap/mapsdk/maps/a/df; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Lcom/tencent/tencentmap/mapsdk/maps/a/df;
    :goto_2
    const/4 v6, 0x1

    :try_start_4
    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a(Z)V

    .line 221
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    .end local v1           #e:Lcom/tencent/tencentmap/mapsdk/maps/a/df;
    :catchall_0
    move-exception v6

    .line 226
    :goto_3
    if-eqz v2, :cond_8

    .line 227
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 229
    :cond_8
    if-eqz v0, :cond_9

    .line 230
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 232
    :cond_9
    throw v6

    .line 172
    :cond_a
    :try_start_5
    const-string v8, "POST"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/tencent/tencentmap/mapsdk/maps/a/df; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 222
    :catch_1
    move-exception v1

    .line 223
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x0

    :try_start_6
    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/da;->a(Z)V

    .line 224
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 205
    .end local v1           #e:Ljava/lang/Exception;
    :cond_b
    const/16 v6, 0xca

    if-eq v4, v6, :cond_c

    .line 206
    const/16 v6, 0xc9

    if-eq v4, v6, :cond_c

    .line 207
    const/16 v6, 0xcc

    if-eq v4, v6, :cond_c

    .line 208
    const/16 v6, 0xcd

    if-eq v4, v6, :cond_c

    .line 209
    const/16 v6, 0x130

    if-eq v4, v6, :cond_c

    .line 210
    const/16 v6, 0x131

    if-eq v4, v6, :cond_c

    .line 211
    const/16 v6, 0x198

    if-eq v4, v6, :cond_c

    .line 212
    const/16 v6, 0x1f6

    if-eq v4, v6, :cond_c

    .line 213
    const/16 v6, 0x1f8

    if-eq v4, v6, :cond_c

    .line 214
    const/16 v6, 0x1f7

    if-ne v4, v6, :cond_d

    .line 215
    :cond_c
    :try_start_7
    new-instance v6, Ljava/io/IOException;

    const-string v7, "doGetOrPost retry"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 217
    :cond_d
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/a/df;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "response code is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/df;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/tencent/tencentmap/mapsdk/maps/a/df; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 225
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 222
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 219
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter "urlStr"
    .parameter "isRetried"

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v0, url:Ljava/net/URL;
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    if-nez v1, :cond_4

    .line 61
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .end local v0           #url:Ljava/net/URL;
    :goto_1
    return-object v1

    .line 53
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v1, v2

    .line 55
    goto :goto_1

    .line 59
    .restart local v0       #url:Ljava/net/URL;
    :cond_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/dc;->a()I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    :goto_2
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/di;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_0

    .line 62
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 64
    goto :goto_1

    .line 69
    :cond_4
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a:I

    if-nez v1, :cond_6

    .line 71
    sget-boolean v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->b:Z

    if-nez v1, :cond_6

    sput-boolean v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->b:Z

    :try_start_2
    new-instance v4, Ljava/net/URL;

    const-string v1, "http://ls.map.soso.com/monitor/monitor.html"

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    if-ne v1, v6, :cond_5

    const/16 v1, 0x50

    :cond_5
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v3, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :try_start_3
    invoke-virtual {v4, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x3a98

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xafc8

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "User-Agent"

    const-string v4, "QQ Map Mobile"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(Ljava/net/HttpURLConnection;)Z

    move-result v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    :cond_6
    :goto_4
    :try_start_5
    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a:I

    packed-switch v1, :pswitch_data_0

    .line 81
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    if-ne v1, v6, :cond_7

    const/16 v1, 0x50

    :cond_7
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 71
    :catch_2
    move-exception v1

    sput-boolean v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->b:Z

    goto :goto_4

    :cond_8
    const/4 v3, 0x2

    :try_start_6
    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_0
    move-exception v1

    :goto_6
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v1

    .line 78
    :pswitch_0
    :try_start_8
    invoke-static {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v1

    goto/16 :goto_1

    .line 83
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 85
    goto/16 :goto_1

    .line 71
    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v3, v2

    goto :goto_5

    .line 76
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 10
    .parameter "url"
    .parameter "urlStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 421
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, proxyHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    .line 423
    .local v4, proxyPort:I
    if-ne v4, v9, :cond_0

    .line 424
    const/16 v4, 0x50

    .line 427
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 429
    .local v2, port:I
    if-ne v2, v9, :cond_1

    .line 430
    const/16 v2, 0x50

    .line 434
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_2

    .line 435
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, tempStr:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .local v6, tempUrl:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 449
    .local v0, conn:Ljava/net/HttpURLConnection;
    const-string v7, "X-Online-Host"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v6           #tempUrl:Ljava/net/URL;
    :goto_1
    return-object v0

    .line 437
    .end local v5           #tempStr:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #tempStr:Ljava/lang/String;
    goto :goto_0

    .line 444
    :catch_0
    move-exception v7

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(I)V
    .locals 1
    .parameter "wapApproach"

    .prologue
    .line 309
    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a:I

    if-ne v0, p0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    sput p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a:I

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Z
    .locals 5
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 388
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 389
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 392
    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 405
    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 393
    :cond_0
    const/4 v2, 0x0

    .line 403
    :cond_1
    :goto_0
    return v2

    .line 396
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 397
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gtz v3, :cond_3

    .line 401
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 402
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 403
    .local v2, isValidate:Z
    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 398
    .end local v2           #isValidate:Z
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 404
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    .line 405
    if-eqz v1, :cond_4

    .line 406
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 408
    :cond_4
    throw v3
.end method
