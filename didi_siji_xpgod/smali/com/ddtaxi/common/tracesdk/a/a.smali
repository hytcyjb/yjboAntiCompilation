.class public Lcom/ddtaxi/common/tracesdk/a/a;
.super Ljava/lang/Thread;


# static fields
.field private static final e:Ljava/lang/String; = "--------------et567z"


# instance fields
.field private final a:Lcom/ddtaxi/common/tracesdk/a/c;

.field private final b:Lcom/ddtaxi/common/tracesdk/a/d;

.field private volatile c:Ljava/net/HttpURLConnection;

.field private d:I

.field private f:Lcom/ddtaxi/common/tracesdk/a/d;


# direct methods
.method public constructor <init>(Lcom/ddtaxi/common/tracesdk/a/d;Lcom/ddtaxi/common/tracesdk/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/a/a;->c:Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/a/a;->d:I

    new-instance v0, Lcom/ddtaxi/common/tracesdk/a/b;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/a/b;-><init>(Lcom/ddtaxi/common/tracesdk/a/a;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/a/a;->f:Lcom/ddtaxi/common/tracesdk/a/d;

    iput-object p2, p0, Lcom/ddtaxi/common/tracesdk/a/a;->a:Lcom/ddtaxi/common/tracesdk/a/c;

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->b:Lcom/ddtaxi/common/tracesdk/a/d;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/a/a;)Lcom/ddtaxi/common/tracesdk/a/d;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a/a;->b:Lcom/ddtaxi/common/tracesdk/a/d;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1800

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private a()Ljava/net/HttpURLConnection;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a/a;->a:Lcom/ddtaxi/common/tracesdk/a/c;

    iget-object v0, v0, Lcom/ddtaxi/common/tracesdk/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "User-Agent"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "host"

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->a:Lcom/ddtaxi/common/tracesdk/a/c;

    iget-object v1, v1, Lcom/ddtaxi/common/tracesdk/a/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Content-Type"

    const-string v2, "Multipart/form-data;boundary=--------------et567z"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Content-type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/a/a;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->c:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->c:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->f:Lcom/ddtaxi/common/tracesdk/a/d;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ddtaxi/common/tracesdk/a/d;->a(I)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->a:Lcom/ddtaxi/common/tracesdk/a/c;

    iget-object v1, v1, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->a:Lcom/ddtaxi/common/tracesdk/a/c;

    iget-object v1, v1, Lcom/ddtaxi/common/tracesdk/a/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->a:Lcom/ddtaxi/common/tracesdk/a/c;

    iget-object v1, v1, Lcom/ddtaxi/common/tracesdk/a/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const-string v1, "----------------et567z--\r\n"

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/a/a;->f:Lcom/ddtaxi/common/tracesdk/a/d;

    invoke-interface {v2, v1}, Lcom/ddtaxi/common/tracesdk/a/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->f:Lcom/ddtaxi/common/tracesdk/a/d;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/ddtaxi/common/tracesdk/a/d;->a(I)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "----------------et567z\r\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\"\r\n\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a/a;->a:Lcom/ddtaxi/common/tracesdk/a/c;

    iget-object v1, v1, Lcom/ddtaxi/common/tracesdk/a/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v5, "----------------et567z\r\n"

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Content-Disposition: form-data; name=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "Content-Type: application/x-www-form-urlencoded\r\n\r\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/a/a;->f:Lcom/ddtaxi/common/tracesdk/a/d;

    invoke-interface {v2, v1}, Lcom/ddtaxi/common/tracesdk/a/d;->a(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
