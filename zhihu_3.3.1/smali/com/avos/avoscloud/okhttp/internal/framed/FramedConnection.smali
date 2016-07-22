.class public final Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;,
        Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

.field private final handler:Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private nextPingId:I

.field private nextStreamId:I

.field final okHttpSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

.field final peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lcom/avos/avoscloud/okhttp/Protocol;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

.field final readerRunnable:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lcom/avos/avoscloud/okhttp/internal/framed/Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 55
    const-class v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->$assertionsDisabled:Z

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    invoke-static {v0, v8}, Lcom/avos/avoscloud/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0
.end method

.method private constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J

    .line 105
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 116
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    .line 122
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    .line 124
    iput-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    .line 802
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    .line 133
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$000(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Lcom/avos/avoscloud/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    .line 134
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$100(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

    .line 135
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->client:Z

    .line 136
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->handler:Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$300(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->handler:Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;

    .line 138
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 139
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    sget-object v4, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_2:Lcom/avos/avoscloud/okhttp/Protocol;

    if-ne v0, v4, :cond_0

    .line 140
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 143
    :cond_0
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 149
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    const/high16 v1, 0x100

    invoke-virtual {v0, v10, v2, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->set(III)Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    .line 153
    :cond_2
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$400(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_2:Lcom/avos/avoscloud/okhttp/Protocol;

    if-ne v0, v1, :cond_4

    .line 156
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->variant:Lcom/avos/avoscloud/okhttp/internal/framed/Variant;

    .line 158
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/avos/avoscloud/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 162
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->set(III)Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    .line 163
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->set(III)Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 171
    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    .line 172
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->variant:Lcom/avos/avoscloud/okhttp/internal/framed/Variant;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okio/Okio;->sink(Ljava/net/Socket;)Lcom/avos/avoscloud/okio/Sink;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Variant;->newWriter(Lcom/avos/avoscloud/okio/BufferedSink;Z)Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    .line 174
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;

    invoke-direct {v0, p0, v11}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$1;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->readerRunnable:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;

    .line 175
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->readerRunnable:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    return-void

    :cond_3
    move v0, v1

    .line 138
    goto/16 :goto_0

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->SPDY_3:Lcom/avos/avoscloud/okhttp/Protocol;

    if-ne v0, v1, :cond_5

    .line 165
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/Spdy3;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Spdy3;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->variant:Lcom/avos/avoscloud/okhttp/internal/framed/Variant;

    .line 166
    iput-object v11, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 168
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->close(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ILcom/avos/avoscloud/okio/BufferedSource;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushDataLater(ILcom/avos/avoscloud/okio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1502(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->handler:Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;I)Lcom/avos/avoscloud/okhttp/internal/framed/Ping;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->removePing(I)Lcom/avos/avoscloud/okhttp/internal/framed/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic access$900(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method private close(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 451
    sget-boolean v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 454
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->shutdown(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 461
    :goto_0
    monitor-enter p0

    .line 462
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 463
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    .line 464
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 465
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    move-object v5, v0

    .line 467
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 468
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/avos/avoscloud/okhttp/internal/framed/Ping;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/okhttp/internal/framed/Ping;

    .line 469
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    move-object v4, v0

    .line 471
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    if-eqz v5, :cond_3

    .line 474
    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    .line 476
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->close(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 474
    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 455
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 456
    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 477
    :catch_1
    move-exception v1

    .line 478
    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_2
    move-object v1, v0

    .line 483
    :cond_3
    if-eqz v4, :cond_4

    .line 484
    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_4

    aget-object v3, v4, v0

    .line 485
    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/Ping;->cancel()V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 491
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 498
    :cond_5
    :goto_6
    :try_start_5
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 503
    :goto_7
    if-eqz v0, :cond_6

    throw v0

    .line 492
    :catch_2
    move-exception v0

    .line 493
    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_6

    .line 504
    :cond_6
    return-void

    .line 499
    :catch_3
    move-exception v0

    goto :goto_7

    :cond_7
    move-object v4, v2

    goto :goto_2

    :cond_8
    move-object v5, v2

    goto :goto_1
.end method

.method private newStream(ILjava/util/List;ZZ)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;ZZ)",
            "Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 251
    if-nez p3, :cond_0

    move v3, v4

    .line 252
    :goto_0
    if-nez p4, :cond_1

    .line 256
    :goto_1
    iget-object v8, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    monitor-enter v8

    .line 257
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    :try_start_1
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v0, :cond_2

    .line 259
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 277
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    move v3, v0

    .line 251
    goto :goto_0

    :cond_1
    move v4, v0

    .line 252
    goto :goto_1

    .line 261
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 262
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 263
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;-><init>(ILcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 264
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    .line 268
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    if-nez p1, :cond_5

    .line 270
    :try_start_4
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    .line 277
    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 279
    if-nez p3, :cond_4

    .line 280
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->flush()V

    .line 283
    :cond_4
    return-object v0

    .line 272
    :cond_5
    :try_start_5
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->client:Z

    if-eqz v2, :cond_6

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_6
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v2, p1, v1, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method

.method private pushDataLater(ILcom/avos/avoscloud/okio/BufferedSource;IZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 852
    new-instance v5, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v5}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 853
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/avos/avoscloud/okio/BufferedSource;->require(J)V

    .line 854
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lcom/avos/avoscloud/okio/BufferedSource;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    .line 855
    invoke-virtual {v5}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    iget-object v8, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$6;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/avos/avoscloud/okio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 870
    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 830
    iget-object v7, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$5;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 844
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 805
    monitor-enter p0

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 808
    monitor-exit p0

    .line 826
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 811
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    iget-object v6, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$4;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 811
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private pushResetLater(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 873
    iget-object v6, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$7;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method

.method private pushedStream(I)Z
    .locals 2
    .parameter

    .prologue
    .line 798
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_2:Lcom/avos/avoscloud/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized removePing(I)Lcom/avos/avoscloud/okhttp/internal/framed/Ping;
    .locals 2
    .parameter

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/framed/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIdle(Z)V
    .locals 2
    .parameter

    .prologue
    .line 205
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 205
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    monitor-enter v1

    .line 407
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/avos/avoscloud/okhttp/internal/framed/Ping;->send()V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->ping(ZII)V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writePingLater(ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    sget-object v8, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$3;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .parameter

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 342
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 343
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->close(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 448
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->flush()V

    .line 418
    return-void
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .locals 2

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocol()Lcom/avos/avoscloud/okhttp/Protocol;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;
    .locals 2
    .parameter

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .locals 4

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;ZZ)",
            "Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lcom/avos/avoscloud/okhttp/internal/framed/Ping;
    .locals 4

    .prologue
    .line 376
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/Ping;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Ping;-><init>()V

    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 380
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 382
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 383
    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 384
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V

    .line 388
    return-object v0
.end method

.method public pushStream(ILjava/util/List;Z)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;Z)",
            "Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->client:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    sget-object v1, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_2:Lcom/avos/avoscloud/okhttp/Protocol;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeStream(I)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;
    .locals 2
    .parameter

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    .line 197
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendConnectionPreface()V
    .locals 6

    .prologue
    const/high16 v3, 0x1

    .line 511
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    .line 512
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->settings(Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V

    .line 513
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    .line 514
    if-eq v0, v3, :cond_0

    .line 515
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    .line 517
    :cond_0
    return-void
.end method

.method public shutdown(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 4
    .parameter

    .prologue
    .line 427
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    monitor-enter v1

    .line 429
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :try_start_1
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v0, :cond_0

    .line 431
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    :goto_0
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->shutdown:Z

    .line 434
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    .line 435
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 437
    :try_start_4
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    sget-object v3, Lcom/avos/avoscloud/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v2, v0, p1, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->goAway(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;[B)V

    .line 438
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 435
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public writeData(IZLcom/avos/avoscloud/okio/Buffer;J)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 305
    cmp-long v0, p4, v8

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->data(ZILcom/avos/avoscloud/okio/Buffer;I)V

    .line 334
    :cond_0
    return-void

    .line 326
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 327
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v2}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 328
    iget-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 329
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 332
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    if-eqz p2, :cond_4

    cmp-long v0, p4, v8

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0, p1, p3, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->data(ZILcom/avos/avoscloud/okio/Buffer;I)V

    .line 310
    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    .line 312
    monitor-enter p0

    .line 314
    :goto_1
    :try_start_1
    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 318
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 320
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 332
    goto :goto_0
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    .line 289
    return-void
.end method

.method writeSynReset(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 358
    return-void
.end method

.method writeSynResetLater(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 346
    sget-object v6, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$1;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 354
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 361
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$2;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method
