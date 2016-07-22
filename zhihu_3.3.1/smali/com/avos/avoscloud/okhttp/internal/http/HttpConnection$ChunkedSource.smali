.class Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;
.super Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final NO_CHUNK_YET:J = -0x1L


# instance fields
.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field private final httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V

    .line 444
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    .line 449
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    .line 450
    return-void
.end method

.method private readChunkSize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 473
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$600(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 477
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$600(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    .line 478
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$600(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_2
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    .line 488
    new-instance v0, Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/Headers$Builder;-><init>()V

    .line 489
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/avos/avoscloud/okhttp/Headers$Builder;)V

    .line 490
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->httpEngine:Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->build()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/avos/avoscloud/okhttp/Headers;)V

    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->endOfInput(Z)V

    .line 493
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->closed:Z

    if-eqz v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->discard(Lcom/avos/avoscloud/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->unexpectedEndOfInput()V

    .line 500
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->closed:Z

    goto :goto_0
.end method

.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 453
    cmp-long v2, p2, v4

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->closed:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_1
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    if-nez v2, :cond_3

    .line 468
    :cond_2
    :goto_0
    return-wide v0

    .line 457
    :cond_3
    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_5

    .line 458
    :cond_4
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->readChunkSize()V

    .line 459
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    if-eqz v2, :cond_2

    .line 462
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$600(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v2

    iget-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lcom/avos/avoscloud/okio/BufferedSource;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v2

    .line 463
    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .line 464
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->unexpectedEndOfInput()V

    .line 465
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_6
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    move-wide v0, v2

    .line 468
    goto :goto_0
.end method
