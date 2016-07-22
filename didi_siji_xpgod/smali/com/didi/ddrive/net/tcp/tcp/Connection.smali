.class public abstract Lcom/didi/ddrive/net/tcp/tcp/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Connection"


# instance fields
.field private final MESSAGE_HEARTBEAT:I

.field private final MESSAGE_NORMAL:I

.field private final MESSAGE_RECREATE:I

.field private mActive:Z

.field private mChannel:Lcom/didi/ddrive/net/tcp/tcp/Channel;

.field private mConfig:Lcom/didi/ddrive/net/tcp/tcp/Config;

.field private mHeartbeatInterval:J

.field private mHeartbeatMessage:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mLastTryTimeStamp:J

.field private mPort:I

.field private mRequestSender:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

.field private mRetryTimes:I

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->MESSAGE_NORMAL:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->MESSAGE_HEARTBEAT:I

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->MESSAGE_RECREATE:I

    .line 33
    iput-boolean v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z

    .line 37
    const-wide/32 v0, 0x13880

    iput-wide v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mHeartbeatInterval:J

    .line 40
    iput v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRetryTimes:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/net/tcp/tcp/Connection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/net/tcp/tcp/Connection;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mHeartbeatInterval:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/didi/ddrive/net/tcp/tcp/Connection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mHeartbeatMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->notifyRecreate()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/ddrive/net/tcp/tcp/Connection;)Lcom/didi/ddrive/net/tcp/tcp/Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mChannel:Lcom/didi/ddrive/net/tcp/tcp/Channel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->recreate()V

    return-void
.end method

.method private initMessageQueue()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    const-string v1, "queued-thread"

    const/4 v2, -0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;-><init>(Lcom/didi/ddrive/net/tcp/tcp/Connection;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRequestSender:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    .line 68
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRequestSender:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    invoke-virtual {v0}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->start()V

    .line 69
    return-void
.end method

.method private notifyCreated()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getInstance()Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->notifyCreated(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V

    .line 130
    return-void
.end method

.method private notifyRecreate()V
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getInstance()Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->recreate(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V

    .line 135
    return-void
.end method

.method private openConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "Connection"

    const-string v1, "open connection"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mIp:Ljava/lang/String;

    iget v1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mPort:I

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->createChannel(Ljava/lang/String;I)Lcom/didi/ddrive/net/tcp/tcp/Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mChannel:Lcom/didi/ddrive/net/tcp/tcp/Channel;

    .line 74
    const-string v0, "Connection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , PORT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mChannel:Lcom/didi/ddrive/net/tcp/tcp/Channel;

    invoke-interface {v0}, Lcom/didi/ddrive/net/tcp/tcp/Channel;->open()V

    .line 76
    return-void
.end method

.method private recreate()V
    .locals 4

    .prologue
    .line 121
    iget-boolean v1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z

    if-eqz v1, :cond_0

    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 124
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRequestSender:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 126
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRequestSender:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    invoke-virtual {v0}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->quit()Z

    .line 146
    return-void
.end method

.method private waitForReceive()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation

    .prologue
    .line 79
    :goto_0
    iget-boolean v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z

    if-eqz v2, :cond_2

    .line 80
    invoke-static {}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getInstance()Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getMessageReceiver(Ljava/lang/String;)Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;

    move-result-object v0

    .line 81
    .local v0, receiver:Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;
    if-eqz v0, :cond_0

    .line 82
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mChannel:Lcom/didi/ddrive/net/tcp/tcp/Channel;

    invoke-interface {v0, v2}, Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;->read(Lcom/didi/ddrive/net/tcp/tcp/Channel;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, response:Ljava/lang/Object;
    const-string v2, "Connection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {v0, v1}, Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;->dispatch(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    .end local v1           #response:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->setActive(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    invoke-static {}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getInstance()Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->destroy(Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No receiver found, destroy the connection"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v2

    goto :goto_0

    .line 97
    .end local v0           #receiver:Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;
    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract createChannel(Ljava/lang/String;I)Lcom/didi/ddrive/net/tcp/tcp/Channel;
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z

    .line 156
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->shutdown()V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mChannel:Lcom/didi/ddrive/net/tcp/tcp/Channel;

    invoke-interface {v0}, Lcom/didi/ddrive/net/tcp/tcp/Channel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConfig()Lcom/didi/ddrive/net/tcp/tcp/Config;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mConfig:Lcom/didi/ddrive/net/tcp/tcp/Config;

    return-object v0
.end method

.method public getLastTryTimeStamp()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mLastTryTimeStamp:J

    return-wide v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRetryTimes:I

    return v0
.end method

.method protected getSender()Lcom/didi/ddrive/net/tcp/tcp/MessageSender;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRequestSender:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public increaseRetryTimes()V
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRetryTimes:I

    .line 201
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z

    return v0
.end method

.method public resetRetryTimes()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRetryTimes:I

    .line 197
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mLastTryTimeStamp:J

    .line 103
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z

    .line 104
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->initMessageQueue()V

    .line 105
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->openConnection()V

    .line 106
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->notifyCreated()V

    .line 108
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mHeartbeatMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 110
    .local v1, message:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 111
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mRequestSender:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 113
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->waitForReceive()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->recreate()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z

    .line 48
    return-void
.end method

.method public setConfig(Lcom/didi/ddrive/net/tcp/tcp/Config;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mConfig:Lcom/didi/ddrive/net/tcp/tcp/Config;

    .line 56
    iget-object v0, p1, Lcom/didi/ddrive/net/tcp/tcp/Config;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mIp:Ljava/lang/String;

    .line 57
    iget v0, p1, Lcom/didi/ddrive/net/tcp/tcp/Config;->port:I

    iput v0, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mPort:I

    .line 58
    return-void
.end method

.method public setHeartbeatInterval(J)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mHeartbeatInterval:J

    .line 170
    return-void
.end method

.method public setHeartbeatMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mHeartbeatMessage:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection;->mTag:Ljava/lang/String;

    .line 181
    return-void
.end method
