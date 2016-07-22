.class public abstract Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;
.super Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;,
        Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DECODERS:I


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private buffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/avos/avoscloud/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field private decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;",
            ">;"
        }
    .end annotation
.end field

.field private drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private iqueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/WebSocketImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private queueinvokes:I

.field private final queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private selector:Ljava/nio/channels/Selector;

.field private selectorthread:Ljava/lang/Thread;

.field private server:Ljava/nio/channels/ServerSocketChannel;

.field private wsf:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->$assertionsDisabled:Z

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->DECODERS:I

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    sget v1, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->DECODERS:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    sget v0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->DECODERS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/avos/avoscloud/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;-><init>()V

    .line 80
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queueinvokes:I

    .line 87
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v1, Lcom/avos/avoscloud/java_websocket/server/DefaultWebSocketServerFactory;

    invoke-direct {v1}, Lcom/avos/avoscloud/java_websocket/server/DefaultWebSocketServerFactory;-><init>()V

    iput-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->wsf:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    .line 152
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    if-nez p4, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address and connectionscontainer must not be null and you need at least 1 decoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    if-nez p3, :cond_2

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    .line 161
    :goto_0
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    .line 162
    iput-object p4, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    .line 164
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    .line 167
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    .line 168
    :goto_1
    if-ge v0, p2, :cond_3

    .line 169
    new-instance v1, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;-><init>(Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;)V

    .line 170
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;->start()V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_2
    iput-object p3, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    goto :goto_0

    .line 173
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    sget v0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->DECODERS:I

    invoke-direct {p0, p1, v0, p2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->handleFatal(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method private getSocket(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/net/Socket;
    .locals 1
    .parameter

    .prologue
    .line 617
    check-cast p1, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    .line 618
    iget-object v0, p1, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method private handleFatal(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    invoke-virtual {p0, v2, v0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_0

    .line 459
    :catch_1
    move-exception v0

    .line 460
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 461
    invoke-virtual {p0, v2, v0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private handleIOException(Ljava/nio/channels/SelectionKey;Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/io/IOException;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    if-eqz p2, :cond_1

    .line 438
    const/16 v0, 0x3ee

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/avos/avoscloud/java_websocket/WebSocket;->closeConnection(ILjava/lang/String;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_1
    sget-boolean v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection closed because of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private pushBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private queue(Lcom/avos/avoscloud/java_websocket/WebSocketImpl;)V
    .locals 3
    .parameter

    .prologue
    .line 418
    iget-object v0, p1, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->workerThread:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    iget v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queueinvokes:I

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    iput-object v0, p1, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->workerThread:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 420
    iget v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queueinvokes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queueinvokes:I

    .line 422
    :cond_0
    iget-object v0, p1, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->workerThread:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;->put(Lcom/avos/avoscloud/java_websocket/WebSocketImpl;)V

    .line 423
    return-void
.end method

.method private takeBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method protected addConnection(Lcom/avos/avoscloud/java_websocket/WebSocket;)Z
    .locals 3
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 549
    sget-boolean v2, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 550
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :goto_0
    return v0

    .line 554
    :cond_1
    const/16 v0, 0x3e9

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/java_websocket/WebSocket;->close(I)V

    .line 555
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected allocateBuffers(Lcom/avos/avoscloud/java_websocket/WebSocket;)V
    .locals 2
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 405
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public connections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/avos/avoscloud/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    return-object v0
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 414
    sget v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->RCVBUF:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getDraft()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getFlashSecurityPolicy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" /></cross-domain-policy>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 1
    .parameter

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->getSocket(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 252
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    .line 255
    :cond_0
    return v0
.end method

.method public getRemoteSocketAddress(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 1
    .parameter

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->getSocket(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final getWebSocketFactory()Lcom/avos/avoscloud/java_websocket/WebSocketFactory;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->wsf:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    return-object v0
.end method

.method public abstract onClose(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    return-void
.end method

.method public onClosing(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    return-void
.end method

.method protected onConnect(Ljava/nio/channels/SelectionKey;)Z
    .locals 1
    .parameter

    .prologue
    .line 613
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V
.end method

.method public onFragment(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 671
    return-void
.end method

.method public abstract onMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/String;)V
.end method

.method public onMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 665
    return-void
.end method

.method public abstract onOpen(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)V
.end method

.method public final onWebsocketClose(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 509
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->removeConnection(Lcom/avos/avoscloud/java_websocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onClose(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->releaseBuffers(Lcom/avos/avoscloud/java_websocket/WebSocket;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 520
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    .line 514
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->releaseBuffers(Lcom/avos/avoscloud/java_websocket/WebSocket;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 517
    :goto_1
    throw v0

    .line 515
    :catch_1
    move-exception v1

    .line 516
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public onWebsocketCloseInitiated(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 581
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onCloseInitiated(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;)V

    .line 582
    return-void
.end method

.method public onWebsocketClosing(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onClosing(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V

    .line 588
    return-void
.end method

.method public final onWebsocketError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 565
    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-super {p0, p1, p2, p3}, Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;->onWebsocketHandshakeReceivedAsServer(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final onWebsocketMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public final onWebsocketMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V

    .line 496
    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onFragment(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    .line 491
    return-void
.end method

.method public final onWebsocketOpen(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->addConnection(Lcom/avos/avoscloud/java_websocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    check-cast p2, Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onOpen(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)V

    .line 503
    :cond_0
    return-void
.end method

.method public final onWriteDemand(Lcom/avos/avoscloud/java_websocket/WebSocket;)V
    .locals 2
    .parameter

    .prologue
    .line 569
    check-cast p1, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    .line 571
    :try_start_0
    iget-object v0, p1, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 577
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 574
    iget-object v0, p1, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    goto :goto_0
.end method

.method protected releaseBuffers(Lcom/avos/avoscloud/java_websocket/WebSocket;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    return-void
.end method

.method protected removeConnection(Lcom/avos/avoscloud/java_websocket/WebSocket;)Z
    .locals 3
    .parameter

    .prologue
    .line 530
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v1

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 532
    sget-boolean v2, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 537
    :cond_1
    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 266
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can only be started once."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 267
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    .line 268
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    monitor-exit p0

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebsocketSelector"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 274
    :try_start_2
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    .line 275
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 276
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    .line 277
    sget v3, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->RCVBUF:I

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 278
    iget-object v3, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 279
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    .line 280
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    iget-object v3, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    iget-object v4, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->validOps()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    :cond_3
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v2

    if-nez v2, :cond_10

    .line 290
    :try_start_4
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->select()I

    .line 291
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    .line 292
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v7

    move-object v4, v5

    move-object v6, v5

    .line 294
    :goto_2
    :try_start_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 295
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/nio/channels/SelectionKey;

    move-object v3, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 297
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v2

    if-nez v2, :cond_4

    move-object v6, v3

    .line 299
    goto :goto_2

    .line 281
    :catch_0
    move-exception v2

    .line 282
    invoke-direct {p0, v5, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->handleFatal(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 302
    :cond_4
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 303
    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onConnect(Ljava/nio/channels/SelectionKey;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 304
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    move-object v6, v3

    .line 305
    goto :goto_2

    .line 308
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 309
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 310
    iget-object v6, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->wsf:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    iget-object v8, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v9

    invoke-interface {v6, p0, v8, v9}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;->createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    move-result-object v6

    .line 311
    iget-object v8, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9, v6}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v8

    iput-object v8, v6, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    .line 312
    iget-object v8, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->wsf:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    iget-object v9, v6, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-interface {v8, v2, v9}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;

    move-result-object v2

    iput-object v2, v6, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    .line 313
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 314
    invoke-virtual {p0, v6}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->allocateBuffers(Lcom/avos/avoscloud/java_websocket/WebSocket;)V

    move-object v6, v3

    .line 315
    goto :goto_2

    .line 318
    :cond_6
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 319
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    move-object v4, v0

    .line 320
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v6

    .line 322
    :try_start_8
    iget-object v2, v4, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v6, v4, v2}, Lcom/avos/avoscloud/java_websocket/SocketChannelIOHelper;->read(Ljava/nio/ByteBuffer;Lcom/avos/avoscloud/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 323
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 324
    iget-object v2, v4, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v6}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 325
    invoke-direct {p0, v4}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queue(Lcom/avos/avoscloud/java_websocket/WebSocketImpl;)V

    .line 326
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 327
    iget-object v2, v4, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v2, v2, Lcom/avos/avoscloud/java_websocket/WrappedByteChannel;

    if-eqz v2, :cond_7

    .line 328
    iget-object v2, v4, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v2, Lcom/avos/avoscloud/java_websocket/WrappedByteChannel;

    invoke-interface {v2}, Lcom/avos/avoscloud/java_websocket/WrappedByteChannel;->isNeedRead()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 329
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    .line 342
    :cond_7
    :goto_3
    :try_start_9
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 343
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6

    .line 344
    :try_start_a
    iget-object v4, v2, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v2, v4}, Lcom/avos/avoscloud/java_websocket/SocketChannelIOHelper;->batch(Lcom/avos/avoscloud/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 345
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 346
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    move-object v4, v2

    move-object v6, v3

    goto/16 :goto_2

    .line 333
    :cond_8
    :try_start_b
    invoke-direct {p0, v6}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 337
    :catch_1
    move-exception v2

    .line 338
    :try_start_c
    invoke-direct {p0, v6}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 339
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    .line 369
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 335
    :cond_9
    :try_start_d
    invoke-direct {p0, v6}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_3

    .line 371
    :catch_3
    move-exception v2

    .line 386
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 387
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 388
    invoke-virtual {v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_4

    .line 350
    :cond_a
    :goto_5
    :try_start_e
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 351
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    .line 352
    :try_start_f
    iget-object v3, v2, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v3, Lcom/avos/avoscloud/java_websocket/WrappedByteChannel;

    .line 353
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6

    move-result-object v4

    .line 355
    :try_start_10
    invoke-static {v4, v2, v3}, Lcom/avos/avoscloud/java_websocket/SocketChannelIOHelper;->readMore(Ljava/nio/ByteBuffer;Lcom/avos/avoscloud/java_websocket/WebSocketImpl;Lcom/avos/avoscloud/java_websocket/WrappedByteChannel;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 356
    iget-object v3, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_b
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 358
    iget-object v3, v2, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 359
    invoke-direct {p0, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->queue(Lcom/avos/avoscloud/java_websocket/WebSocketImpl;)V

    :goto_6
    move-object v4, v2

    .line 368
    goto :goto_5

    .line 361
    :cond_c
    invoke-direct {p0, v4}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_6

    .line 363
    :catch_4
    move-exception v3

    .line 364
    :try_start_11
    invoke-direct {p0, v4}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 365
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6

    .line 373
    :catch_5
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v6

    .line 374
    :goto_7
    if-eqz v3, :cond_d

    .line 375
    :try_start_12
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 376
    :cond_d
    invoke-direct {p0, v3, v4, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/io/IOException;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_1

    .line 382
    :catch_6
    move-exception v2

    .line 384
    const/4 v3, 0x0

    :try_start_13
    invoke-direct {p0, v3, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->handleFatal(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 386
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v2, :cond_12

    .line 387
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 388
    invoke-virtual {v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_8

    .line 391
    :cond_e
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_1

    .line 393
    :try_start_14
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    goto/16 :goto_0

    .line 394
    :catch_7
    move-exception v2

    .line 395
    invoke-virtual {p0, v5, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 377
    :catch_8
    move-exception v2

    .line 386
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v2, :cond_f

    .line 387
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 388
    invoke-virtual {v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_9

    .line 391
    :cond_f
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_1

    .line 393
    :try_start_15
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_0

    .line 394
    :catch_9
    move-exception v2

    .line 395
    invoke-virtual {p0, v5, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 386
    :cond_10
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v2, :cond_11

    .line 387
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 388
    invoke-virtual {v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_a

    .line 391
    :cond_11
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_1

    .line 393
    :try_start_16
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    goto/16 :goto_0

    .line 394
    :catch_a
    move-exception v2

    .line 395
    invoke-virtual {p0, v5, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 391
    :cond_12
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_1

    .line 393
    :try_start_17
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    goto/16 :goto_0

    .line 394
    :catch_b
    move-exception v2

    .line 395
    invoke-virtual {p0, v5, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 386
    :catchall_1
    move-exception v2

    move-object v3, v2

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v2, :cond_13

    .line 387
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 388
    invoke-virtual {v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_b

    .line 391
    :cond_13
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_14

    .line 393
    :try_start_18
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    .line 396
    :cond_14
    :goto_c
    throw v3

    .line 394
    :catch_c
    move-exception v2

    .line 395
    invoke-virtual {p0, v5, v2}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->onError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_c

    .line 373
    :catch_d
    move-exception v2

    move-object v4, v5

    move-object v3, v5

    goto/16 :goto_7

    :catch_e
    move-exception v2

    goto/16 :goto_7

    :catch_f
    move-exception v2

    move-object v3, v6

    goto/16 :goto_7

    :catch_10
    move-exception v4

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto/16 :goto_7

    :cond_15
    move-object v4, v2

    move-object v6, v3

    goto/16 :goto_2

    :cond_16
    move-object v6, v3

    goto/16 :goto_2
.end method

.method public final setWebSocketFactory(Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->wsf:Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;

    .line 599
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->stop(I)V

    .line 228
    return-void
.end method

.method public stop(I)V
    .locals 4
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v1

    .line 211
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/java_websocket/WebSocket;

    .line 215
    const/16 v2, 0x3e9

    invoke-interface {v0, v2}, Lcom/avos/avoscloud/java_websocket/WebSocket;->close(I)V

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 218
    :cond_1
    monitor-enter p0

    .line 219
    :try_start_2
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 222
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 224
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
