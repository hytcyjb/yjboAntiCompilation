.class public Lcom/didi/ddrive/managers/StreamMessageManager;
.super Ljava/lang/Object;
.source "StreamMessageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamMessageManager"

.field private static mgr:Lcom/didi/ddrive/managers/StreamMessageManager;


# instance fields
.field private streamMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/tcp/message/StreamMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/didi/ddrive/managers/StreamMessageManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/StreamMessageManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/StreamMessageManager;->mgr:Lcom/didi/ddrive/managers/StreamMessageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/managers/StreamMessageManager;->streamMessages:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/didi/ddrive/managers/StreamMessageManager;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/didi/ddrive/managers/StreamMessageManager;->mgr:Lcom/didi/ddrive/managers/StreamMessageManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/didi/ddrive/managers/StreamMessageManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/StreamMessageManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/StreamMessageManager;->mgr:Lcom/didi/ddrive/managers/StreamMessageManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/StreamMessageManager;->mgr:Lcom/didi/ddrive/managers/StreamMessageManager;

    return-object v0
.end method


# virtual methods
.method public addMessage(Lcom/didi/ddrive/net/tcp/message/StreamMessage;)V
    .locals 2
    .parameter "streamMessage"

    .prologue
    .line 27
    const-string v0, "morning"

    const-string v1, "addMessage"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/didi/ddrive/managers/StreamMessageManager;->streamMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/didi/ddrive/managers/StreamMessageManager;->streamMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/didi/ddrive/managers/StreamMessageManager;->notifyMessage()V

    .line 32
    :cond_0
    return-void
.end method

.method public cleare()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/ddrive/managers/StreamMessageManager;->streamMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    return-void
.end method

.method public consume(Lcom/didi/ddrive/net/tcp/message/StreamMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/ddrive/managers/StreamMessageManager;->streamMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/managers/StreamMessageManager;->streamMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/didi/ddrive/managers/StreamMessageManager;->notifyMessage()V

    .line 55
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/ddrive/managers/StreamMessageManager;->streamMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyMessage()V
    .locals 4

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    const-string v0, "morning"

    const-string v1, "notifyMessage"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/didi/ddrive/managers/StreamMessageManager;->streamMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;

    iget-object v0, p0, Lcom/didi/ddrive/managers/StreamMessageManager;->streamMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/tcp/message/StreamMessage;

    invoke-direct {v2, v0}, Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;-><init>(Lcom/didi/ddrive/net/tcp/message/StreamMessage;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
