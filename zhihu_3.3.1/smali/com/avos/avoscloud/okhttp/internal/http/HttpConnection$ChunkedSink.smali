.class final Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;
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
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

.field private final timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Lcom/avos/avoscloud/okio/ForwardingTimeout;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSink;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/okio/ForwardingTimeout;-><init>(Lcom/avos/avoscloud/okio/Timeout;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z

    .line 349
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 350
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;

    #calls: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->detachTimeout(Lcom/avos/avoscloud/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$400(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okio/ForwardingTimeout;)V

    .line 351
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x3

    #setter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$502(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 344
    :goto_0
    monitor-exit p0

    return-void

    .line 343
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->timeout:Lcom/avos/avoscloud/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 336
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 337
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/BufferedSink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 338
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    goto :goto_0
.end method
