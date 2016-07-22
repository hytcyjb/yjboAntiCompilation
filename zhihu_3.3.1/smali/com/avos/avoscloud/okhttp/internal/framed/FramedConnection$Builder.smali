.class public Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private handler:Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;

.field private hostName:Ljava/lang/String;

.field private protocol:Lcom/avos/avoscloud/okhttp/Protocol;

.field private pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->handler:Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;

    .line 523
    sget-object v0, Lcom/avos/avoscloud/okhttp/Protocol;->SPDY_3:Lcom/avos/avoscloud/okhttp/Protocol;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    .line 524
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;->CANCEL:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

    .line 536
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;

    .line 537
    iput-boolean p2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->client:Z

    .line 538
    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    .line 539
    return-void
.end method

.method public constructor <init>(ZLjava/net/Socket;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    .line 529
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Lcom/avos/avoscloud/okhttp/Protocol;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->client:Z

    return v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->handler:Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    .locals 2

    .prologue
    .line 557
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$1;)V

    return-object v0
.end method

.method public handler(Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->handler:Lcom/avos/avoscloud/okhttp/internal/framed/IncomingStreamHandler;

    .line 543
    return-object p0
.end method

.method public protocol(Lcom/avos/avoscloud/okhttp/Protocol;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    .line 548
    return-object p0
.end method

.method public pushObserver(Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/avos/avoscloud/okhttp/internal/framed/PushObserver;

    .line 553
    return-object p0
.end method
