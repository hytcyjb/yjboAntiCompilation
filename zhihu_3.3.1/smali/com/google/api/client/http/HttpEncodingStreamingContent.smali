.class public final Lcom/google/api/client/http/HttpEncodingStreamingContent;
.super Ljava/lang/Object;
.source "HttpEncodingStreamingContent.java"

# interfaces
.implements Lcom/google/api/client/util/StreamingContent;


# instance fields
.field private final content:Lcom/google/api/client/util/StreamingContent;

.field private final encoding:Lcom/google/api/client/http/HttpEncoding;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/StreamingContent;Lcom/google/api/client/http/HttpEncoding;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/StreamingContent;

    iput-object v0, p0, Lcom/google/api/client/http/HttpEncodingStreamingContent;->content:Lcom/google/api/client/util/StreamingContent;

    .line 47
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpEncoding;

    iput-object v0, p0, Lcom/google/api/client/http/HttpEncodingStreamingContent;->encoding:Lcom/google/api/client/http/HttpEncoding;

    .line 48
    return-void
.end method


# virtual methods
.method public getContent()Lcom/google/api/client/util/StreamingContent;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/api/client/http/HttpEncodingStreamingContent;->content:Lcom/google/api/client/util/StreamingContent;

    return-object v0
.end method

.method public getEncoding()Lcom/google/api/client/http/HttpEncoding;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/api/client/http/HttpEncodingStreamingContent;->encoding:Lcom/google/api/client/http/HttpEncoding;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/api/client/http/HttpEncodingStreamingContent;->encoding:Lcom/google/api/client/http/HttpEncoding;

    iget-object v1, p0, Lcom/google/api/client/http/HttpEncodingStreamingContent;->content:Lcom/google/api/client/util/StreamingContent;

    invoke-interface {v0, v1, p1}, Lcom/google/api/client/http/HttpEncoding;->encode(Lcom/google/api/client/util/StreamingContent;Ljava/io/OutputStream;)V

    .line 52
    return-void
.end method
