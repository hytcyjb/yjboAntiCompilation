.class public Lcom/android/volley/toolbox/g;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/volley/toolbox/g$a;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/g;-><init>(Lcom/android/volley/toolbox/g$a;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/g$a;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/g;-><init>(Lcom/android/volley/toolbox/g$a;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/g$a;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/volley/toolbox/g;->a:Lcom/android/volley/toolbox/g$a;

    .line 85
    iput-object p2, p0, Lcom/android/volley/toolbox/g;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    return-void
.end method

.method private a(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/g;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 181
    invoke-virtual {p2}, Lcom/android/volley/Request;->u()I

    move-result v0

    .line 182
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 183
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 188
    const-string v0, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/volley/toolbox/g;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 189
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/android/volley/toolbox/g;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 192
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .locals 4
    .parameter

    .prologue
    .line 151
    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 154
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 159
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 160
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 162
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/android/volley/Request;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown method type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->n()[B

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 208
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 209
    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 214
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 220
    :pswitch_1
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_2
    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_3
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 227
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/g;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 230
    :pswitch_4
    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 231
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/g;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 234
    :pswitch_5
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_6
    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_7
    const-string v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_8
    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 244
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/g;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-gt v0, p1, :cond_0

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x130

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/android/volley/Request;->r()[B

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 256
    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 258
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 259
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public a(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 91
    invoke-virtual {p1}, Lcom/android/volley/Request;->d()Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/android/volley/Request;->j()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 94
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 95
    iget-object v0, p0, Lcom/android/volley/toolbox/g;->a:Lcom/android/volley/toolbox/g$a;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/volley/toolbox/g;->a:Lcom/android/volley/toolbox/g$a;

    invoke-interface {v0, v1}, Lcom/android/volley/toolbox/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL blocked by rewriter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    .line 102
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v1, p1}, Lcom/android/volley/toolbox/g;->a(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 104
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {v3, p1}, Lcom/android/volley/toolbox/g;->a(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 109
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 110
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 111
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 114
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 118
    new-instance v2, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v2, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 119
    invoke-virtual {p1}, Lcom/android/volley/Request;->a()I

    move-result v0

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    invoke-static {v3}, Lcom/android/volley/toolbox/g;->a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 124
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v4}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1

    .line 128
    :cond_6
    return-object v2
.end method
