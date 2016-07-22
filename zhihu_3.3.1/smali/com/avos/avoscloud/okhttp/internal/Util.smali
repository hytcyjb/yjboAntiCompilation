.class public final Lcom/avos/avoscloud/okhttp/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    new-array v0, v1, [B

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 45
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 48
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 57
    :cond_1
    return-void
.end method

.method public static closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_1

    .line 128
    :cond_1
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 129
    :cond_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 130
    :cond_3
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 131
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 119
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    if-eqz p0, :cond_0

    .line 71
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    throw v0

    .line 74
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    if-eqz p0, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    throw v0

    .line 106
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    if-eqz p0, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    throw v0

    .line 91
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 297
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 298
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 300
    return-object v0
.end method

.method public static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static discard(Lcom/avos/avoscloud/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/Util;->skipAll(Lcom/avos/avoscloud/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 143
    :goto_0
    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hostHeader(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static immutableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    array-length v4, p0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, p0, v2

    .line 249
    array-length v6, p1

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, p1, v0

    .line 250
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 251
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 249
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_2
    return-object v3
.end method

.method public static intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p1, p2}, Lcom/avos/avoscloud/okhttp/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 177
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 178
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->of([B)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/ByteString;->hex()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    :goto_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 180
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static sha1(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/ByteString;
    .locals 2
    .parameter

    .prologue
    .line 199
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 201
    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->of([B)Lcom/avos/avoscloud/okio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static shaBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 188
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 189
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->of([B)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/ByteString;->base64()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    :goto_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 191
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static skipAll(Lcom/avos/avoscloud/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 153
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 156
    :goto_0
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v4

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/avos/avoscloud/okio/Timeout;->deadlineNanoTime(J)Lcom/avos/avoscloud/okio/Timeout;

    .line 158
    :try_start_0
    new-instance v4, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v4}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 159
    :goto_1
    const-wide/16 v8, 0x800

    invoke-interface {p0, v4, v8, v9}, Lcom/avos/avoscloud/okio/Source;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    .line 160
    invoke-virtual {v4}, Lcom/avos/avoscloud/okio/Buffer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v4

    .line 164
    const/4 v4, 0x0

    .line 166
    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 167
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->clearDeadline()Lcom/avos/avoscloud/okio/Timeout;

    :goto_2
    move v0, v4

    .line 169
    :goto_3
    return v0

    :cond_0
    move-wide v0, v2

    .line 153
    goto :goto_0

    .line 162
    :cond_1
    const/4 v4, 0x1

    .line 166
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 167
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->clearDeadline()Lcom/avos/avoscloud/okio/Timeout;

    :goto_4
    move v0, v4

    .line 169
    goto :goto_3

    :cond_2
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/okio/Timeout;->deadlineNanoTime(J)Lcom/avos/avoscloud/okio/Timeout;

    goto :goto_4

    :cond_3
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/okio/Timeout;->deadlineNanoTime(J)Lcom/avos/avoscloud/okio/Timeout;

    goto :goto_2

    .line 166
    :catchall_0
    move-exception v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 167
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->clearDeadline()Lcom/avos/avoscloud/okio/Timeout;

    .line 169
    :goto_5
    throw v4

    :cond_4
    invoke-interface {p0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/okio/Timeout;->deadlineNanoTime(J)Lcom/avos/avoscloud/okio/Timeout;

    goto :goto_5
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/okhttp/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x7f

    const/16 v5, 0x1f

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    .line 269
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 270
    if-le v2, v5, :cond_0

    if-ge v2, v6, :cond_0

    .line 268
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 272
    :cond_0
    new-instance v4, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v4}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 273
    invoke-virtual {v4, p0, v1, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/Buffer;

    move v2, v0

    .line 274
    :goto_1
    if-ge v2, v3, :cond_2

    .line 275
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 276
    if-le v1, v5, :cond_1

    if-ge v1, v6, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 274
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    .line 276
    :cond_1
    const/16 v0, 0x3f

    goto :goto_2

    .line 278
    :cond_2
    invoke-virtual {v4}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    .line 280
    :cond_3
    return-object p0
.end method
