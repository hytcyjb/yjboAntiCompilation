.class public Lcom/google/api/client/http/GZipEncoding;
.super Ljava/lang/Object;
.source "GZipEncoding.java"

# interfaces
.implements Lcom/google/api/client/http/HttpEncoding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/api/client/util/StreamingContent;Ljava/io/OutputStream;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/client/http/GZipEncoding$1;

    invoke-direct {v0, p0, p2}, Lcom/google/api/client/http/GZipEncoding$1;-><init>(Lcom/google/api/client/http/GZipEncoding;Ljava/io/OutputStream;)V

    .line 48
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    invoke-interface {p1, v1}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V

    .line 51
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 52
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "gzip"

    return-object v0
.end method
