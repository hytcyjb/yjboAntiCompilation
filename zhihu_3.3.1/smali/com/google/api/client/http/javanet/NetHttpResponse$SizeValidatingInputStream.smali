.class final Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;
.super Ljava/io/FilterInputStream;
.source "NetHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/javanet/NetHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SizeValidatingInputStream"
.end annotation


# instance fields
.field private bytesRead:J

.field final synthetic this$0:Lcom/google/api/client/http/javanet/NetHttpResponse;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/javanet/NetHttpResponse;Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->this$0:Lcom/google/api/client/http/javanet/NetHttpResponse;

    .line 159
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    .line 160
    return-void
.end method

.method private throwIfFalseEOF()V
    .locals 7

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->this$0:Lcom/google/api/client/http/javanet/NetHttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/javanet/NetHttpResponse;->getContentLength()J

    move-result-wide v0

    .line 192
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 205
    :cond_0
    return-void

    .line 201
    :cond_1
    iget-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 202
    new-instance v2, Ljava/io/IOException;

    iget-wide v4, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x66

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Connection closed prematurely: bytesRead = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Content-Length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public read()I
    .locals 6

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 181
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->throwIfFalseEOF()V

    .line 186
    :goto_0
    return v0

    .line 184
    :cond_0
    iget-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 170
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->throwIfFalseEOF()V

    .line 175
    :goto_0
    return v0

    .line 173
    :cond_0
    iget-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    goto :goto_0
.end method
