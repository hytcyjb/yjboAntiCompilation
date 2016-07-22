.class Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;
.super Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V

    .line 405
    iput-wide p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 406
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->discard(Lcom/avos/avoscloud/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 437
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    goto :goto_0
.end method

.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    .line 412
    cmp-long v2, p2, v6

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

    .line 413
    :cond_0
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_1
    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 426
    :goto_0
    return-wide v0

    .line 416
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$600(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v2

    iget-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lcom/avos/avoscloud/okio/BufferedSource;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v2

    .line 417
    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 418
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 419
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_3
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 423
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    .line 424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    :cond_4
    move-wide v0, v2

    .line 426
    goto :goto_0
.end method
