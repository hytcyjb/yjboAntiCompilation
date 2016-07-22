.class public Lcom/didi/ddrive/managers/OrderStateManager;
.super Lcom/didi/ddrive/managers/AbsManager;
.source "OrderStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DriverOrderStateManager"

.field private static sStateManager:Lcom/didi/ddrive/managers/OrderStateManager;


# instance fields
.field private mConsumed:Z

.field private mCurrentState:Lcom/didi/ddrive/model/OrderState;

.field private mLock:Ljava/lang/Object;

.field private mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/didi/ddrive/managers/AbsManager;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 45
    sget-object v0, Lcom/didi/ddrive/model/OrderState;->NEW:Lcom/didi/ddrive/model/OrderState;

    iput-object v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mCurrentState:Lcom/didi/ddrive/model/OrderState;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/managers/OrderStateManager;Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/ddrive/managers/OrderStateManager;->post(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/didi/ddrive/managers/OrderStateManager;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/didi/ddrive/managers/OrderStateManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/ddrive/managers/OrderStateManager;->sStateManager:Lcom/didi/ddrive/managers/OrderStateManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/didi/ddrive/managers/OrderStateManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/OrderStateManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/OrderStateManager;->sStateManager:Lcom/didi/ddrive/managers/OrderStateManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/OrderStateManager;->sStateManager:Lcom/didi/ddrive/managers/OrderStateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyEvent(Ljava/lang/Object;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 151
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method private notifyStateChanged(Ljava/lang/Object;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string v0, "DriverOrderStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged ---- Event name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/OrderStatusChangedEvent;

    iget-object v2, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mCurrentState:Lcom/didi/ddrive/model/OrderState;

    invoke-direct {v1, v2}, Lcom/didi/ddrive/eventbus/event/OrderStatusChangedEvent;-><init>(Lcom/didi/ddrive/model/OrderState;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private post(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "state"
    .parameter "event"
    .parameter "notify"

    .prologue
    .line 168
    if-eqz p2, :cond_0

    .line 169
    const-string v0, "DriverOrderStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrderState --- Event name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    if-nez p1, :cond_1

    .line 173
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Only non-null state is accepted."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 175
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mCurrentState:Lcom/didi/ddrive/model/OrderState;

    if-ne p1, v0, :cond_4

    .line 176
    iget-boolean v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mConsumed:Z

    if-nez v0, :cond_3

    .line 177
    if-eqz p3, :cond_2

    .line 178
    invoke-direct {p0, p2}, Lcom/didi/ddrive/managers/OrderStateManager;->notifyStateChanged(Ljava/lang/Object;)V

    .line 179
    const-string v0, "DriverOrderStateManager"

    const-string v2, "updateOrderState --- same as previous & notify"

    invoke-static {v0, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_2
    :goto_0
    monitor-exit v1

    .line 193
    return-void

    .line 182
    :cond_3
    const-string v0, "DriverOrderStateManager"

    const-string v2, "updateOrderState --- same as previous but ignore"

    invoke-static {v0, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_4
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mCurrentState:Lcom/didi/ddrive/model/OrderState;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mConsumed:Z

    .line 187
    if-eqz p3, :cond_2

    .line 188
    invoke-direct {p0, p2}, Lcom/didi/ddrive/managers/OrderStateManager;->notifyStateChanged(Ljava/lang/Object;)V

    .line 189
    const-string v0, "DriverOrderStateManager"

    const-string v2, "updateOrderState --- update & notify"

    invoke-static {v0, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public consume(Lcom/didi/ddrive/model/OrderState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mCurrentState:Lcom/didi/ddrive/model/OrderState;

    if-ne p1, v0, :cond_0

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mConsumed:Z

    .line 205
    :cond_0
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentState()Lcom/didi/ddrive/model/OrderState;
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mCurrentState:Lcom/didi/ddrive/model/OrderState;

    monitor-exit v1

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initWith(Lcom/didi/ddrive/model/OrderState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mCurrentState:Lcom/didi/ddrive/model/OrderState;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mConsumed:Z

    .line 227
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newOrder()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/didi/ddrive/model/OrderState;->NEW:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 58
    return-void
.end method

.method public queryOrderState()V
    .locals 7

    .prologue
    .line 68
    new-instance v2, Lcom/didi/ddrive/net/http/request/OrderStateRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/OrderStateRequest;-><init>()V

    .line 69
    .local v2, request:Lcom/didi/ddrive/net/http/request/OrderStateRequest;
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 70
    .local v1, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-wide v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/OrderStateRequest;->oid:J

    .line 71
    iget-wide v3, v2, Lcom/didi/ddrive/net/http/request/OrderStateRequest;->oid:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 148
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v3, "morning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8f6e\u8be2\u8ba2\u5355\u72b6\u6001\u7684orderid \u4e3a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v3

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/OrderStateRequest;->pid:J

    .line 76
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 77
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "DriverOrderStateManager"

    new-instance v4, Lcom/didi/ddrive/managers/OrderStateManager$1;

    invoke-direct {v4, p0, v1}, Lcom/didi/ddrive/managers/OrderStateManager$1;-><init>(Lcom/didi/ddrive/managers/OrderStateManager;Lcom/didi/ddrive/model/DDriveOrder;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/OrderStateResponse;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/ddrive/managers/OrderStateManager;->sStateManager:Lcom/didi/ddrive/managers/OrderStateManager;

    .line 51
    return-void
.end method

.method public setCurrentState(Lcom/didi/ddrive/model/OrderState;)V
    .locals 2
    .parameter "currentState"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mCurrentState:Lcom/didi/ddrive/model/OrderState;

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mConsumed:Z

    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V
    .locals 1
    .parameter "state"
    .parameter "event"

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V

    .line 156
    return-void
.end method

.method public updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "state"
    .parameter "event"
    .parameter "notify"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/didi/ddrive/managers/OrderStateManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/ddrive/managers/OrderStateManager$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/didi/ddrive/managers/OrderStateManager$2;-><init>(Lcom/didi/ddrive/managers/OrderStateManager;Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method
