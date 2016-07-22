.class public Lcom/didi/sdk/platform/PlatformServiceAidlBus;
.super Ljava/lang/Object;
.source "PlatformServiceAidlBus.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final INIT_COUNT:I = 0x32

.field private static sInstance:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

.field private static sSdkClientMessenger:Landroid/os/Messenger;

.field private static sServiceMessenger:Landroid/os/Messenger;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mModuleHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/didi/sdk/component/DHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSdkClientHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/didi/sdk/component/DHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mSdkClientHandlers:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mModuleHandlers:Landroid/util/SparseArray;

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/didi/sdk/platform/PlatformServiceAidlBus;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sInstance:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sInstance:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    invoke-direct {v0}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;-><init>()V

    sput-object v0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sInstance:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sInstance:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sServiceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sServiceMessenger:Landroid/os/Messenger;

    .line 86
    :cond_0
    sget-object v0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sServiceMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------->PlatformServiceAidlBus handleMessage msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " msg.arg1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sSdkClientMessenger:Landroid/os/Messenger;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eq v2, v3, :cond_0

    .line 52
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    sput-object v2, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sSdkClientMessenger:Landroid/os/Messenger;

    .line 54
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 69
    iget-object v2, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mSdkClientHandlers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/sdk/component/DHandler;

    .line 70
    .local v0, dHandler:Lcom/didi/sdk/component/DHandler;
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, p1}, Lcom/didi/sdk/component/DHandler;->handleMessage(Landroid/os/Message;)V

    .line 76
    .end local v0           #dHandler:Lcom/didi/sdk/component/DHandler;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 58
    :pswitch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 59
    .local v1, regMsg:Landroid/os/Message;
    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 60
    invoke-static {}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->getInstance()Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sendToSdkClient(Landroid/os/Message;)V

    .line 61
    const-string v2, "------->PlatformServiceAidlBus bindService success"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v1           #regMsg:Landroid/os/Message;
    :pswitch_1
    const/4 v2, 0x0

    sput-object v2, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sSdkClientMessenger:Landroid/os/Messenger;

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerModuleHandler(ILcom/didi/sdk/component/DHandler;)V
    .locals 1
    .parameter "msgNumber"
    .parameter "handler"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mModuleHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method public registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V
    .locals 1
    .parameter "msgNumber"
    .parameter "handler"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mSdkClientHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public sendToModule(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const/4 v1, 0x2

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 154
    iget-object v1, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mModuleHandlers:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 155
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendToSdkClient(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 167
    :cond_0
    sget-object v1, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sServiceMessenger:Landroid/os/Messenger;

    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 168
    const/4 v1, 0x2

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 170
    sget-object v1, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sSdkClientMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    .line 172
    :try_start_0
    sget-object v1, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sSdkClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 175
    const/4 v1, 0x0

    sput-object v1, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sSdkClientMessenger:Landroid/os/Messenger;

    goto :goto_0

    .line 179
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "-------->PlatformServiceAidlBus sendToSdkClient mssenger is null"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setClientMessenger(Landroid/os/Messenger;)V
    .locals 0
    .parameter "viewMessenger"

    .prologue
    .line 96
    sput-object p1, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sSdkClientMessenger:Landroid/os/Messenger;

    .line 97
    return-void
.end method

.method public unregisterAll()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mSdkClientHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 143
    iget-object v0, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mModuleHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 144
    return-void
.end method

.method public unregisterModuleHandler(I)V
    .locals 1
    .parameter "msgNumber"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mModuleHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 136
    return-void
.end method

.method public unregisterSdkclientHandler(I)V
    .locals 1
    .parameter "msgNumber"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->mSdkClientHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 126
    return-void
.end method
