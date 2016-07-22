.class public Lcom/zhihu/android/bumblebee/http/g;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "MultipartFormDataContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/bumblebee/http/g$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zhihu/android/bumblebee/http/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    const-string v1, "boundary"

    const-string v2, "__END_OF_PART__"

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/bumblebee/http/g;->a:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/HttpMediaType;)Lcom/zhihu/android/bumblebee/http/g;
    .locals 0
    .parameter

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    .line 147
    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcom/zhihu/android/bumblebee/http/g;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/zhihu/android/bumblebee/http/g$a;",
            ">;)",
            "Lcom/zhihu/android/bumblebee/http/g;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zhihu/android/bumblebee/http/g;->a:Ljava/util/ArrayList;

    .line 159
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/zhihu/android/bumblebee/http/g;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    const-string v1, "boundary"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrySupported()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/bumblebee/http/g$a;

    .line 134
    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/http/g$a;->c()Lcom/google/api/client/http/HttpContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/zhihu/android/bumblebee/http/g;->a(Lcom/google/api/client/http/HttpMediaType;)Lcom/zhihu/android/bumblebee/http/g;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/zhihu/android/bumblebee/http/g;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v5, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 56
    invoke-virtual {p0}, Lcom/zhihu/android/bumblebee/http/g;->a()Ljava/lang/String;

    move-result-object v6

    .line 58
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/bumblebee/http/g$a;

    .line 60
    new-instance v2, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v2}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpHeaders;->setAcceptEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v8

    .line 62
    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/http/g$a;->d()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/http/g$a;->d()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/api/client/http/HttpHeaders;->fromHttpHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 67
    :cond_1
    invoke-virtual {v8, v1}, Lcom/google/api/client/http/HttpHeaders;->setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpHeaders;->setContentLength(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    const-string v3, "Content-Disposition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "form-data; name=\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/http/g$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\"; filename=\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/http/g$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 70
    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/http/g$a;->c()Lcom/google/api/client/http/HttpContent;

    move-result-object v4

    .line 74
    if-eqz v4, :cond_5

    .line 76
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 78
    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/http/g$a;->e()Lcom/google/api/client/http/HttpEncoding;

    move-result-object v2

    .line 82
    if-nez v2, :cond_3

    .line 84
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v2

    move-object v0, v4

    .line 97
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v4, v2, v10

    if-eqz v4, :cond_2

    .line 99
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/api/client/http/HttpHeaders;->setContentLength(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;

    .line 104
    :cond_2
    :goto_2
    const-string v2, "--"

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    const-string v2, "\r\n"

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    invoke-static {v8, v1, v1, v5}, Lcom/google/api/client/http/HttpHeaders;->serializeHeadersForMultipartRequests(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ljava/io/Writer;)V

    .line 112
    if-eqz v0, :cond_0

    .line 114
    const-string v2, "\r\n"

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 116
    invoke-interface {v0, p1}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V

    .line 117
    const-string v0, "\r\n"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_3
    invoke-interface {v2}, Lcom/google/api/client/http/HttpEncoding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/api/client/http/HttpHeaders;->setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 92
    new-instance v0, Lcom/google/api/client/http/HttpEncodingStreamingContent;

    invoke-direct {v0, v4, v2}, Lcom/google/api/client/http/HttpEncodingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Lcom/google/api/client/http/HttpEncoding;)V

    .line 94
    invoke-static {v4}, Lcom/google/api/client/http/AbstractHttpContent;->computeLength(Lcom/google/api/client/http/HttpContent;)J

    move-result-wide v2

    goto :goto_1

    .line 122
    :cond_4
    const-string v0, "--"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 124
    const-string v0, "--"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    const-string v0, "\r\n"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 127
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
