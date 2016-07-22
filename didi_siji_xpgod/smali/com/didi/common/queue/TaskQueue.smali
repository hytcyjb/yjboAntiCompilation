.class public Lcom/didi/common/queue/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# static fields
.field private static netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

.field private static taskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/queue/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/common/queue/TaskQueue;->taskList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/didi/common/queue/TaskQueue$2;

    invoke-direct {v0}, Lcom/didi/common/queue/TaskQueue$2;-><init>()V

    sput-object v0, Lcom/didi/common/queue/TaskQueue;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput-object p0, Lcom/didi/common/queue/TaskQueue;->taskList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static addQueue(Lcom/didi/common/queue/Task;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 23
    if-nez p0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    sget-object v0, Lcom/didi/common/queue/TaskQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcom/didi/common/queue/TaskQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/didi/common/queue/TaskQueue;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    invoke-static {v0}, Lcom/didi/common/receiver/NetReceiver;->setNetListener(Lcom/didi/common/receiver/NetReceiver$NetListener;)V

    goto :goto_0
.end method

.method public static popQueue()V
    .locals 5

    .prologue
    .line 33
    const-string v1, "popQueue-----doing--"

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/didi/common/queue/TaskQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 47
    .local v0, task:Lcom/didi/common/queue/Task;
    :goto_0
    return-void

    .line 37
    .end local v0           #task:Lcom/didi/common/queue/Task;
    :cond_0
    sget-object v1, Lcom/didi/common/queue/TaskQueue;->taskList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/queue/Task;

    .line 39
    .restart local v0       #task:Lcom/didi/common/queue/Task;
    invoke-virtual {v0}, Lcom/didi/common/queue/Task;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/didi/common/queue/Task;->getLevle()I

    move-result v2

    invoke-virtual {v0}, Lcom/didi/common/queue/Task;->getContent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/didi/common/queue/TaskQueue$1;

    invoke-direct {v4}, Lcom/didi/common/queue/TaskQueue$1;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->comment(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method
