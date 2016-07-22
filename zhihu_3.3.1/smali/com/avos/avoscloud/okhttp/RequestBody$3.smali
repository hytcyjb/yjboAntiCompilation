.class final Lcom/avos/avoscloud/okhttp/RequestBody$3;
.super Lcom/avos/avoscloud/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;Ljava/io/File;)Lcom/avos/avoscloud/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lcom/avos/avoscloud/okhttp/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/MediaType;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/RequestBody$3;->val$contentType:Lcom/avos/avoscloud/okhttp/MediaType;

    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/avos/avoscloud/okhttp/MediaType;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/RequestBody$3;->val$contentType:Lcom/avos/avoscloud/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/avos/avoscloud/okio/BufferedSink;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->source(Ljava/io/File;)Lcom/avos/avoscloud/okio/Source;

    move-result-object v1

    .line 118
    invoke-interface {p1, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeAll(Lcom/avos/avoscloud/okio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
