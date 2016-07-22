.class public final Lcom/tencent/bugly/proguard/p;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/p;->a:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 183
    if-nez p1, :cond_1

    .line 185
    const-string v1, "no destUrl!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v1, v3

    .line 242
    :cond_0
    :goto_0
    return-object v1

    .line 194
    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 197
    :goto_1
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 198
    if-nez v5, :cond_4

    .line 200
    const-string v1, "no httpClient!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v1, v3

    .line 201
    goto :goto_0

    .line 194
    :cond_2
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 226
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    .line 228
    :goto_2
    :try_start_1
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 229
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " throw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 237
    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_0

    .line 205
    :cond_4
    :try_start_2
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 206
    :try_start_3
    const-string v2, "wup_version"

    const-string v6, "3.0"

    invoke-virtual {v4, v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 209
    if-eqz p4, :cond_6

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 211
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 213
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 226
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_2

    .line 216
    :cond_5
    const-string v1, "A37"

    invoke-virtual {v4, v1, p3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "A38"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/proguard/p;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_6
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 222
    invoke-interface {v5, v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 223
    :try_start_4
    const-string v3, "http.request"

    invoke-interface {v1, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    .line 224
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 237
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    move-object v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_7

    .line 239
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_7
    throw v1

    .line 237
    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v4, v3

    goto :goto_4

    .line 226
    :catch_2
    move-exception v1

    move-object v3, v4

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 4
    .parameter

    .prologue
    .line 318
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 319
    const/16 v0, 0x7530

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 320
    const/16 v0, 0x2710

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 321
    const/16 v0, 0x7d0

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 324
    const-string v0, "http.protocol.handle-redirects"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/params/BasicHttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 326
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 329
    new-instance v1, Lcom/tencent/bugly/proguard/p$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/p$1;-><init>(Lcom/tencent/bugly/proguard/p;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 340
    if-eqz p1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 343
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 345
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 346
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 362
    :goto_0
    return-object v0

    .line 350
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 358
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/HttpResponse;)[B
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 252
    if-nez p0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 258
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 260
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 261
    const-string v3, "response code:%d , line:%s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 266
    if-nez v1, :cond_3

    .line 268
    const-string v1, "no response datas!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 277
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 281
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    .line 288
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 289
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    :cond_4
    if-eqz v2, :cond_0

    .line 297
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 300
    :catch_1
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 283
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 284
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    .line 295
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 300
    :catch_2
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 295
    :goto_3
    if-eqz v2, :cond_6

    .line 297
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 303
    :cond_6
    :goto_4
    throw v0

    .line 300
    :catch_3
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 293
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 286
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/q;Ljava/util/Map;)[B
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/tencent/bugly/proguard/q;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 71
    const-string v0, "rqdp{  no destUrl!}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 72
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 77
    if-nez p2, :cond_2

    const-wide/16 v0, 0x0

    .line 79
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 81
    const/4 v2, 0x0

    move v6, v4

    move-object v5, p1

    .line 82
    :goto_2
    add-int/lit8 v4, v6, 0x1

    const/4 v7, 0x3

    if-ge v6, v7, :cond_11

    const/4 v6, 0x2

    if-ge v3, v6, :cond_11

    .line 85
    if-eqz v2, :cond_3

    .line 87
    const/4 v2, 0x0

    .line 99
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/tencent/bugly/proguard/p;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 100
    if-nez v6, :cond_4

    .line 102
    const-string v6, "req but network not avail,so drop!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v6, v4

    .line 103
    goto :goto_2

    .line 77
    :cond_2
    array-length v0, p2

    int-to-long v0, v0

    goto :goto_1

    .line 89
    :cond_3
    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "try time "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 94
    const-wide/16 v6, 0x2710

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 106
    :cond_4
    if-eqz p3, :cond_5

    .line 107
    invoke-interface {p3, v0, v1}, Lcom/tencent/bugly/proguard/q;->a(J)V

    .line 110
    :cond_5
    invoke-direct {p0, v5, p2, v6, p4}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 113
    if-eqz v7, :cond_f

    .line 115
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 116
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 118
    const/16 v6, 0xc8

    if-ne v9, v6, :cond_8

    .line 121
    invoke-static {v7}, Lcom/tencent/bugly/proguard/p;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object v2

    .line 122
    if-eqz p3, :cond_6

    .line 123
    if-nez v2, :cond_7

    const-wide/16 v0, 0x0

    :goto_4
    invoke-interface {p3, v0, v1}, Lcom/tencent/bugly/proguard/q;->b(J)V

    :cond_6
    move-object v0, v2

    .line 124
    goto/16 :goto_0

    .line 123
    :cond_7
    array-length v0, v2

    int-to-long v0, v0

    goto :goto_4

    .line 126
    :cond_8
    const/16 v6, 0x12d

    if-eq v9, v6, :cond_9

    const/16 v6, 0x12e

    if-eq v9, v6, :cond_9

    const/16 v6, 0x12f

    if-eq v9, v6, :cond_9

    const/16 v6, 0x133

    if-ne v9, v6, :cond_a

    :cond_9
    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_c

    .line 128
    const/4 v2, 0x1

    .line 129
    const-string v4, "Location"

    invoke-interface {v7, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 130
    if-nez v5, :cond_b

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rqdp{  redirect code:}"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rqdp{   Location is null! return}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 134
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 126
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 139
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 140
    const/4 v4, 0x0

    .line 141
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 142
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 146
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 149
    const-wide/16 v6, 0x0

    .line 150
    if-eqz v8, :cond_d

    .line 152
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 153
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_d

    const-wide/16 v6, 0x0

    .line 156
    :cond_d
    if-eqz p3, :cond_e

    .line 157
    invoke-interface {p3, v6, v7}, Lcom/tencent/bugly/proguard/q;->b(J)V

    :cond_e
    move v6, v4

    .line 159
    goto/16 :goto_2

    .line 162
    :cond_f
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 164
    if-eqz p3, :cond_10

    .line 165
    const-wide/16 v6, 0x0

    invoke-interface {p3, v6, v7}, Lcom/tencent/bugly/proguard/q;->b(J)V

    :cond_10
    move v6, v4

    .line 167
    goto/16 :goto_2

    .line 170
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
