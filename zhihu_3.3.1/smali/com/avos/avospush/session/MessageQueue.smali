.class public Lcom/avos/avospush/session/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/MessageQueue$HasId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final MESSAGE_ZONE:Ljava/lang/String; = "com.avoscloud.chat.message"

.field private static final QUEUE_KEY:Ljava/lang/String; = "com.avoscloud.chat.message.queue"

.field static serializeHanlder:Landroid/os/Handler;

.field static serializeThread:Landroid/os/HandlerThread;


# instance fields
.field messages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final queueKey:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.avos.avoscloud.push.messagequeue"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avos/avospush/session/MessageQueue;->serializeThread:Landroid/os/HandlerThread;

    .line 27
    sget-object v0, Lcom/avos/avospush/session/MessageQueue;->serializeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/avos/avospush/session/MessageQueue;->serializeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/avos/avospush/session/MessageQueue;->serializeHanlder:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    .line 33
    iput-object p2, p0, Lcom/avos/avospush/session/MessageQueue;->type:Ljava/lang/Class;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.avoscloud.chat.message.queue."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->queueKey:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->restoreMessageQueue()Ljava/util/LinkedList;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avospush/session/MessageQueue;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->queueKey:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized restoreMessageQueue()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 169
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v2, "com.avoscloud.chat.message"

    iget-object v3, p0, Lcom/avos/avospush/session/MessageQueue;->queueKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 174
    :try_start_1
    iget-object v2, p0, Lcom/avos/avospush/session/MessageQueue;->type:Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 177
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    const-string v3, "com.avoscloud.chat.message"

    iget-object v4, p0, Lcom/avos/avospush/session/MessageQueue;->queueKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private storeMessageQueue()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/avos/avospush/session/MessageQueue;->serializeHanlder:Landroid/os/Handler;

    new-instance v1, Lcom/avos/avospush/session/MessageQueue$1;

    invoke-direct {v1, p0}, Lcom/avos/avospush/session/MessageQueue$1;-><init>(Lcom/avos/avospush/session/MessageQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 113
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 114
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 44
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 45
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 51
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 52
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    .line 141
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 142
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 121
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 134
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 135
    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 127
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 128
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 78
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 84
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 85
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 91
    invoke-direct {p0}, Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V

    .line 92
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
