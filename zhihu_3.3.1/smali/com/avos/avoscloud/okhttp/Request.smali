.class public final Lcom/avos/avoscloud/okhttp/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/Request$1;,
        Lcom/avos/avoscloud/okhttp/Request$Builder;
    }
.end annotation


# instance fields
.field private final body:Lcom/avos/avoscloud/okhttp/RequestBody;

.field private volatile cacheControl:Lcom/avos/avoscloud/okhttp/CacheControl;

.field private final headers:Lcom/avos/avoscloud/okhttp/Headers;

.field private volatile javaNetUri:Ljava/net/URI;

.field private volatile javaNetUrl:Ljava/net/URL;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Lcom/avos/avoscloud/okhttp/HttpUrl;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/Request$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    #getter for: Lcom/avos/avoscloud/okhttp/Request$Builder;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->access$000(Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    .line 42
    #getter for: Lcom/avos/avoscloud/okhttp/Request$Builder;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->access$100(Lcom/avos/avoscloud/okhttp/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->method:Ljava/lang/String;

    .line 43
    #getter for: Lcom/avos/avoscloud/okhttp/Request$Builder;->headers:Lcom/avos/avoscloud/okhttp/Headers$Builder;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->access$200(Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->build()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->headers:Lcom/avos/avoscloud/okhttp/Headers;

    .line 44
    #getter for: Lcom/avos/avoscloud/okhttp/Request$Builder;->body:Lcom/avos/avoscloud/okhttp/RequestBody;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->access$300(Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->body:Lcom/avos/avoscloud/okhttp/RequestBody;

    .line 45
    #getter for: Lcom/avos/avoscloud/okhttp/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->access$400(Lcom/avos/avoscloud/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/avos/avoscloud/okhttp/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->access$400(Lcom/avos/avoscloud/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->tag:Ljava/lang/Object;

    .line 46
    return-void

    :cond_0
    move-object v0, p0

    .line 45
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/Request$Builder;Lcom/avos/avoscloud/okhttp/Request$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/Request;-><init>(Lcom/avos/avoscloud/okhttp/Request$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Headers;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->headers:Lcom/avos/avoscloud/okhttp/Headers;

    return-object v0
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/HttpUrl;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/okhttp/Request;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/RequestBody;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->body:Lcom/avos/avoscloud/okhttp/RequestBody;

    return-object v0
.end method

.method static synthetic access$900(Lcom/avos/avoscloud/okhttp/Request;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public body()Lcom/avos/avoscloud/okhttp/RequestBody;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->body:Lcom/avos/avoscloud/okhttp/RequestBody;

    return-object v0
.end method

.method public cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->cacheControl:Lcom/avos/avoscloud/okhttp/CacheControl;

    .line 104
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->headers:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/CacheControl;->parse(Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->cacheControl:Lcom/avos/avoscloud/okhttp/CacheControl;

    goto :goto_0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->headers:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lcom/avos/avoscloud/okhttp/Headers;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->headers:Lcom/avos/avoscloud/okhttp/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->headers:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    return-object v0
.end method

.method public isHttps()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/avos/avoscloud/okhttp/Request$Builder;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/avos/avoscloud/okhttp/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Request$1;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Request;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->tag:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->tag:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uri()Ljava/net/URI;
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->javaNetUri:Ljava/net/URI;

    .line 60
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->javaNetUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    .line 54
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    goto :goto_0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Request;->url:Lcom/avos/avoscloud/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
