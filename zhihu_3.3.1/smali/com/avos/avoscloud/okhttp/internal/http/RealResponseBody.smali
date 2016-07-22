.class public final Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;
.super Lcom/avos/avoscloud/okhttp/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final headers:Lcom/avos/avoscloud/okhttp/Headers;

.field private final source:Lcom/avos/avoscloud/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okio/BufferedSource;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;->headers:Lcom/avos/avoscloud/okhttp/Headers;

    .line 29
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    .line 30
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;->headers:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->contentLength(Lcom/avos/avoscloud/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/avos/avoscloud/okhttp/MediaType;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;->headers:Lcom/avos/avoscloud/okhttp/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public source()Lcom/avos/avoscloud/okio/BufferedSource;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/RealResponseBody;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    return-object v0
.end method
