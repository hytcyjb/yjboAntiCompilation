.class final Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

.field private final timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Lcom/avos/avoscloud/okio/ForwardingTimeout;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSink;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/okio/ForwardingTimeout;-><init>(Lcom/avos/avoscloud/okio/Timeout;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;

    .line 286
    iput-wide p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;JLcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    .line 312
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;

    #calls: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->detachTimeout(Lcom/avos/avoscloud/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$400(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okio/ForwardingTimeout;)V

    .line 314
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x3

    #setter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$502(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;I)I

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V

    goto :goto_0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 296
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 297
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/BufferedSink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 301
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    .line 302
    return-void
.end method
