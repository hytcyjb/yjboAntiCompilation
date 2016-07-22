.class public abstract Lcom/avos/avoscloud/okhttp/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->contentType()Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public static create(Lcom/avos/avoscloud/okhttp/MediaType;JLcom/avos/avoscloud/okio/BufferedSource;)Lcom/avos/avoscloud/okhttp/ResponseBody;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/okhttp/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/ResponseBody$1;-><init>(Lcom/avos/avoscloud/okhttp/MediaType;JLcom/avos/avoscloud/okio/BufferedSource;)V

    return-object v0
.end method

.method public static create(Lcom/avos/avoscloud/okhttp/MediaType;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/ResponseBody;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 100
    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object p0

    .line 107
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v1}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;JLcom/avos/avoscloud/okio/BufferedSource;)Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/avos/avoscloud/okhttp/MediaType;[B)Lcom/avos/avoscloud/okhttp/ResponseBody;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 113
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->write([B)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    .line 114
    array-length v1, p1

    int-to-long v2, v1

    invoke-static {p0, v2, v3, v0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;JLcom/avos/avoscloud/okio/BufferedSource;)Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->source()Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 6

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 49
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 50
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->source()Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v2

    .line 56
    :try_start_0
    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSource;->readByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 58
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    array-length v2, v3

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 63
    :cond_1
    return-object v3
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    .line 73
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->source()Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->close()V

    .line 92
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lcom/avos/avoscloud/okhttp/MediaType;
.end method

.method public abstract source()Lcom/avos/avoscloud/okio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
