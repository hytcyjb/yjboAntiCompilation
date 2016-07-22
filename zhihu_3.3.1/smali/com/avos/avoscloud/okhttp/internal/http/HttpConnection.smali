.class public final Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;,
        Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;,
        Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;,
        Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;,
        Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;,
        Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;,
        Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final ON_IDLE_CLOSE:I = 0x2

.field private static final ON_IDLE_HOLD:I = 0x0

.field private static final ON_IDLE_POOL:I = 0x1

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final connection:Lcom/avos/avoscloud/okhttp/Connection;

.field private onIdle:I

.field private final pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

.field private final sink:Lcom/avos/avoscloud/okio/BufferedSink;

.field private final socket:Ljava/net/Socket;

.field private final source:Lcom/avos/avoscloud/okio/BufferedSource;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Connection;Ljava/net/Socket;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    .line 81
    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 85
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    .line 86
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    .line 87
    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 88
    invoke-static {p3}, Lcom/avos/avoscloud/okio/Okio;->source(Ljava/net/Socket;)Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    .line 89
    invoke-static {p3}, Lcom/avos/avoscloud/okio/Okio;->sink(Ljava/net/Socket;)Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    .line 90
    return-void
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okio/ForwardingTimeout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->detachTimeout(Lcom/avos/avoscloud/okio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    return v0
.end method

.method static synthetic access$502(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    return p1
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSource;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->onIdle:I

    return v0
.end method

.method static synthetic access$702(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->onIdle:I

    return p1
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okhttp/ConnectionPool;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    return-object v0
.end method

.method static synthetic access$900(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okhttp/Connection;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    return-object v0
.end method

.method private detachTimeout(Lcom/avos/avoscloud/okio/ForwardingTimeout;)V
    .locals 2
    .parameter

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/avos/avoscloud/okio/ForwardingTimeout;->delegate()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/avos/avoscloud/okio/Timeout;->NONE:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/okio/ForwardingTimeout;->setDelegate(Lcom/avos/avoscloud/okio/Timeout;)Lcom/avos/avoscloud/okio/ForwardingTimeout;

    .line 275
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->clearDeadline()Lcom/avos/avoscloud/okio/Timeout;

    .line 276
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->clearTimeout()Lcom/avos/avoscloud/okio/Timeout;

    .line 277
    return-void
.end method


# virtual methods
.method public bufferSize()J
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->buffer()Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/avos/avoscloud/okhttp/Connection;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public closeOnIdle()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 123
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x6

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    .line 125
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 127
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V

    .line 140
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 152
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 153
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    :try_start_2
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 163
    :goto_0
    return v0

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    :catch_0
    move-exception v0

    move v0, v1

    .line 161
    goto :goto_0

    .line 162
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public newChunkedSink()Lcom/avos/avoscloud/okio/Sink;
    .locals 3

    .prologue
    .line 224
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    .line 226
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newChunkedSource(Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)Lcom/avos/avoscloud/okio/Source;
    .locals 3
    .parameter

    .prologue
    .line 248
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    .line 250
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$ChunkedSource;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lcom/avos/avoscloud/okio/Sink;
    .locals 3
    .parameter

    .prologue
    .line 230
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    .line 232
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;JLcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lcom/avos/avoscloud/okio/Source;
    .locals 3
    .parameter

    .prologue
    .line 242
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    .line 244
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$FixedLengthSource;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lcom/avos/avoscloud/okio/Source;
    .locals 3

    .prologue
    .line 254
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    .line 256
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public poolOnIdle()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 109
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 111
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/Internal;->recycle(Lcom/avos/avoscloud/okhttp/ConnectionPool;Lcom/avos/avoscloud/okhttp/Connection;)V

    .line 113
    :cond_0
    return-void
.end method

.method public rawSink()Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    return-object v0
.end method

.method public rawSource()Lcom/avos/avoscloud/okio/BufferedSource;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    return-object v0
.end method

.method public readHeaders(Lcom/avos/avoscloud/okhttp/Headers$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 218
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    invoke-virtual {v1, p1, v0}, Lcom/avos/avoscloud/okhttp/internal/Internal;->addLenient(Lcom/avos/avoscloud/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public readResponse()Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 5

    .prologue
    .line 183
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/avos/avoscloud/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;-><init>()V

    iget-object v2, v0, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->protocol(Lcom/avos/avoscloud/okhttp/Protocol;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget v2, v0, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->code(I)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    .line 196
    new-instance v2, Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;-><init>()V

    .line 197
    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/avos/avoscloud/okhttp/Headers$Builder;)V

    .line 198
    sget-object v3, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    iget-object v4, v0, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 199
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->build()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers(Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    .line 201
    iget v0, v0, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->code:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 202
    const/4 v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (recycle count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/okhttp/internal/Internal;->instance:Lcom/avos/avoscloud/okhttp/internal/Internal;

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->connection:Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/okhttp/internal/Internal;->recycleCount(Lcom/avos/avoscloud/okhttp/Connection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 211
    throw v1
.end method

.method public setTimeouts(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/avos/avoscloud/okio/Timeout;

    .line 96
    :cond_0
    if-eqz p2, :cond_1

    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/avos/avoscloud/okio/Timeout;

    .line 99
    :cond_1
    return-void
.end method

.method public writeRequest(Lcom/avos/avoscloud/okhttp/Headers;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 169
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0, p2}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    .line 179
    return-void
.end method

.method public writeRequestBody(Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;)V
    .locals 3
    .parameter

    .prologue
    .line 236
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->state:I

    .line 238
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/avos/avoscloud/okio/Sink;)V

    .line 239
    return-void
.end method
