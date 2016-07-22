.class final Lcom/avos/avoscloud/okhttp/RequestBody$1;
.super Lcom/avos/avoscloud/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/avos/avoscloud/okio/ByteString;

.field final synthetic val$contentType:Lcom/avos/avoscloud/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/MediaType;Lcom/avos/avoscloud/okio/ByteString;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/RequestBody$1;->val$contentType:Lcom/avos/avoscloud/okhttp/MediaType;

    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/RequestBody$1;->val$content:Lcom/avos/avoscloud/okio/ByteString;

    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/RequestBody$1;->val$content:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/avos/avoscloud/okhttp/MediaType;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/RequestBody$1;->val$contentType:Lcom/avos/avoscloud/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/avos/avoscloud/okio/BufferedSink;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/RequestBody$1;->val$content:Lcom/avos/avoscloud/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->write(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 72
    return-void
.end method
