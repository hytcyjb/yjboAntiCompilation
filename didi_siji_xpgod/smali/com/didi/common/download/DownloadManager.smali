.class public Lcom/didi/common/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/download/DownloadManager$DownloadListener;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/didi/common/download/DownloadManager;


# instance fields
.field private mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;

.field private mPausedTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/didi/common/download/Status;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/didi/common/download/Status;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/didi/common/download/DownloadService$ProgressReceiver;

.field private volatile mRunningTask:Lcom/didi/common/download/Status;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    .line 39
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    .line 291
    new-instance v1, Lcom/didi/common/download/DownloadManager$1;

    invoke-direct {v1, p0}, Lcom/didi/common/download/DownloadManager$1;-><init>(Lcom/didi/common/download/DownloadManager;)V

    iput-object v1, p0, Lcom/didi/common/download/DownloadManager;->mReceiver:Lcom/didi/common/download/DownloadService$ProgressReceiver;

    .line 42
    sget-object v1, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 43
    .local v0, mgr:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/didi/common/download/DownloadManager;->mReceiver:Lcom/didi/common/download/DownloadService$ProgressReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "download_progress_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/Status;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/common/download/DownloadManager;Lcom/didi/common/download/Status;)Lcom/didi/common/download/Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/common/download/DownloadManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/didi/common/download/DownloadManager;->offerTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/common/download/DownloadManager;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    return-object v0
.end method

.method public static getInStance(Landroid/content/Context;)Lcom/didi/common/download/DownloadManager;
    .locals 1
    .parameter "c"

    .prologue
    .line 47
    sget-object v0, Lcom/didi/common/download/DownloadManager;->mInstance:Lcom/didi/common/download/DownloadManager;

    if-nez v0, :cond_0

    .line 48
    sput-object p0, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/didi/common/download/DownloadManager;

    invoke-direct {v0}, Lcom/didi/common/download/DownloadManager;-><init>()V

    sput-object v0, Lcom/didi/common/download/DownloadManager;->mInstance:Lcom/didi/common/download/DownloadManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/didi/common/download/DownloadManager;->mInstance:Lcom/didi/common/download/DownloadManager;

    return-object v0
.end method

.method private offerTask()V
    .locals 3

    .prologue
    .line 280
    iget-object v1, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/download/Status;

    iput-object v1, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    .line 282
    iget-object v1, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    sget-object v2, Lcom/didi/common/download/DownloadService$DownloadState;->RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v2, v1, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 283
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/didi/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v0, i:Landroid/content/Intent;
    const-string v1, "add_task"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v1, "down_param"

    iget-object v2, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    iget-object v2, v2, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 286
    sget-object v1, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 288
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startTask(Lcom/didi/common/download/Status;)V
    .locals 3
    .parameter "st"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    .line 114
    iget-object v1, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    sget-object v2, Lcom/didi/common/download/DownloadService$DownloadState;->RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v2, v1, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 115
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/didi/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, i:Landroid/content/Intent;
    const-string v1, "add_task"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "down_param"

    iget-object v2, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    iget-object v2, v2, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    sget-object v1, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "folder"

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f0b04c0

    .line 73
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    iget-object v3, v3, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v3}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    sget-object v2, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    :goto_0
    return-object v2

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/download/Status;

    .line 81
    .local v1, st:Lcom/didi/common/download/Status;
    iget-object v3, v1, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v3}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    sget-object v2, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 87
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #st:Lcom/didi/common/download/Status;
    :cond_2
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 88
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/download/Status;

    .line 89
    .restart local v1       #st:Lcom/didi/common/download/Status;
    iget-object v3, v1, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v3}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 91
    invoke-direct {p0, v1}, Lcom/didi/common/download/DownloadManager;->startTask(Lcom/didi/common/download/Status;)V

    goto :goto_0

    .line 98
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #st:Lcom/didi/common/download/Status;
    :cond_4
    new-instance v1, Lcom/didi/common/download/Status;

    invoke-direct {v1}, Lcom/didi/common/download/Status;-><init>()V

    .line 99
    .restart local v1       #st:Lcom/didi/common/download/Status;
    new-instance v3, Lcom/didi/common/download/DownloadParam;

    invoke-direct {v3, p1, p2}, Lcom/didi/common/download/DownloadParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    .line 101
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    if-nez v3, :cond_5

    .line 103
    invoke-direct {p0, v1}, Lcom/didi/common/download/DownloadManager;->startTask(Lcom/didi/common/download/Status;)V

    goto :goto_0

    .line 106
    :cond_5
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDownloadStatus(Ljava/lang/String;)Lcom/didi/common/download/Status;
    .locals 3
    .parameter "url"

    .prologue
    .line 251
    iget-object v2, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    iget-object v2, v2, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v2}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    iget-object v1, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    .line 271
    :goto_0
    return-object v1

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/download/Status;

    .line 257
    .local v1, st:Lcom/didi/common/download/Status;
    iget-object v2, v1, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v2}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 263
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #st:Lcom/didi/common/download/Status;
    :cond_2
    iget-object v2, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 264
    iget-object v2, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/download/Status;

    .line 265
    .restart local v1       #st:Lcom/didi/common/download/Status;
    iget-object v2, v1, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v2}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 271
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #st:Lcom/didi/common/download/Status;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    .line 194
    iget-object v5, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    if-eqz v5, :cond_1

    .line 195
    iget-object v5, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    iget-object v5, v5, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v5}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    new-instance v1, Landroid/content/Intent;

    sget-object v5, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/didi/common/download/DownloadService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v1, i:Landroid/content/Intent;
    const-string v5, "del_task"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v5, "down_param"

    iget-object v6, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    iget-object v6, v6, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 199
    sget-object v5, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v5, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 205
    iget-object v5, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 206
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/download/Status;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/download/Status;

    .line 208
    .local v4, st:Lcom/didi/common/download/Status;
    iget-object v5, v4, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v5}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 212
    sget-object v5, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v6}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/download/DownloadService;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, p:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 214
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 216
    sget-object v5, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/didi/common/download/DownloadService;->removeTempFilePath(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v0           #f:Ljava/io/File;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/download/Status;>;"
    .end local v3           #p:Ljava/lang/String;
    .end local v4           #st:Lcom/didi/common/download/Status;
    :cond_3
    iget-object v5, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 224
    iget-object v5, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 225
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/download/Status;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/download/Status;

    .line 227
    .restart local v4       #st:Lcom/didi/common/download/Status;
    iget-object v5, v4, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v5}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 228
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 231
    sget-object v5, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v6}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/download/DownloadService;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .restart local v3       #p:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 233
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 235
    sget-object v5, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/didi/common/download/DownloadService;->removeTempFilePath(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public resumeTask(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 162
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/download/Status;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/download/Status;

    .line 166
    .local v2, st:Lcom/didi/common/download/Status;
    iget-object v3, v2, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v3}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 168
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    if-nez v3, :cond_2

    .line 170
    iput-object v2, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    .line 171
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    sget-object v4, Lcom/didi/common/download/DownloadService$DownloadState;->RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v4, v3, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 172
    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/didi/common/download/DownloadService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, i:Landroid/content/Intent;
    const-string v3, "add_task"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v3, "down_param"

    iget-object v4, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    iget-object v4, v4, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    sget-object v3, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/download/Status;>;"
    .end local v2           #st:Lcom/didi/common/download/Status;
    :cond_1
    :goto_0
    return-void

    .line 178
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/download/Status;>;"
    .restart local v2       #st:Lcom/didi/common/download/Status;
    :cond_2
    sget-object v3, Lcom/didi/common/download/DownloadService$DownloadState;->IDLE:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v3, v2, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 179
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDownloadListener(Lcom/didi/common/download/DownloadManager$DownloadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;

    .line 61
    return-void
.end method

.method public stopTask(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 128
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    if-nez v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    iget-object v3, v3, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v3}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/didi/common/download/DownloadService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, i:Landroid/content/Intent;
    const-string v3, "stop_task"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v3, "down_param"

    iget-object v4, p0, Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;

    iget-object v4, v4, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    sget-object v3, Lcom/didi/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 140
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mReadyTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/download/Status;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/download/Status;

    .line 144
    .local v2, st:Lcom/didi/common/download/Status;
    iget-object v3, v2, Lcom/didi/common/download/Status;->mDownParam:Lcom/didi/common/download/DownloadParam;

    invoke-virtual {v3}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 147
    sget-object v3, Lcom/didi/common/download/DownloadService$DownloadState;->STOP:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v3, v2, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 148
    iget-object v3, p0, Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
