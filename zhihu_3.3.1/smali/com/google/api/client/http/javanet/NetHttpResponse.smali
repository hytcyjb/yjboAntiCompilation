.class final Lcom/google/api/client/http/javanet/NetHttpResponse;
.super Lcom/google/api/client/http/LowLevelHttpResponse;
.source "NetHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;
    }
.end annotation


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final headerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headerValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCode:I

.field private final responseMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 6
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerValues:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    .line 37
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 38
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseCode:I

    .line 39
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseMessage:Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    .line 41
    iget-object v3, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerValues:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    if-eqz v1, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    if-eqz v0, :cond_2

    .line 47
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 88
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 94
    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;-><init>(Lcom/google/api/client/http/javanet/NetHttpResponse;Ljava/io/InputStream;)V

    goto :goto_1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseCode:I

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    const-string v1, "HTTP/1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
