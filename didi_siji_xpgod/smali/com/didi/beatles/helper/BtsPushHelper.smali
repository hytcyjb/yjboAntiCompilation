.class public Lcom/didi/beatles/helper/BtsPushHelper;
.super Ljava/lang/Object;
.source "BtsPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/helper/BtsPushHelper$UIHandlerRunnable;,
        Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderOfRouteListener;,
        Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;,
        Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;
    }
.end annotation


# static fields
.field public static newOrderOfRouteListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderOfRouteListener;",
            ">;"
        }
    .end annotation
.end field

.field public static newOrderTipListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;",
            ">;"
        }
    .end annotation
.end field

.field public static orderChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/beatles/helper/BtsPushHelper;->orderChangeListeners:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderTipListeners:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderOfRouteListeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method

.method public static registerNewOrderOfRouteListener(Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderOfRouteListener;)V
    .locals 2
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 153
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeBeatlesNewOrderPushReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 154
    .local v0, msgType:I
    sget-object v1, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderOfRouteListeners:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {v0}, Lcom/didi/frame/push/Push;->hadRegisterReceiveListener(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Lcom/didi/beatles/helper/BtsPushHelper$3;

    invoke-direct {v1}, Lcom/didi/beatles/helper/BtsPushHelper$3;-><init>()V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 185
    :cond_0
    return-void
.end method

.method public static registerNewOrderTipListener(Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnNewOrderTipListener;)V
    .locals 2
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 111
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeBeatlesDriverNewOrderTipReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 112
    .local v0, msgType:I
    sget-object v1, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderTipListeners:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v0}, Lcom/didi/frame/push/Push;->hadRegisterReceiveListener(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/didi/beatles/helper/BtsPushHelper$2;

    invoke-direct {v1}, Lcom/didi/beatles/helper/BtsPushHelper$2;-><init>()V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 142
    :cond_0
    return-void
.end method

.method public static registerOrderChangeListener(Ljava/lang/String;Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;)V
    .locals 2
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 49
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeBeatlesOrderDataChangedTipReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 50
    .local v0, msgType:I
    sget-object v1, Lcom/didi/beatles/helper/BtsPushHelper;->orderChangeListeners:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {v0}, Lcom/didi/frame/push/Push;->hadRegisterReceiveListener(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/didi/beatles/helper/BtsPushHelper$1;

    invoke-direct {v1}, Lcom/didi/beatles/helper/BtsPushHelper$1;-><init>()V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 91
    :cond_0
    return-void
.end method

.method public static removeNewOrderOfRouteListener(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 252
    sget-object v1, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderOfRouteListeners:Ljava/util/Map;

    monitor-enter v1

    .line 253
    :try_start_0
    sget-object v0, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderOfRouteListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    sget-object v0, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderOfRouteListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/didi/beatles/helper/BtsPushHelper;->unregisterNewOrderOfRouteListener()V

    .line 258
    :cond_0
    return-void

    .line 254
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static removeNewOrderTipListener(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 237
    sget-object v1, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderTipListeners:Ljava/util/Map;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-object v0, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderTipListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    sget-object v0, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderTipListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/didi/beatles/helper/BtsPushHelper;->unregisterNewOrderTipListener()V

    .line 243
    :cond_0
    return-void

    .line 239
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static removeOrderChangeListener(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 222
    sget-object v1, Lcom/didi/beatles/helper/BtsPushHelper;->orderChangeListeners:Ljava/util/Map;

    monitor-enter v1

    .line 223
    :try_start_0
    sget-object v0, Lcom/didi/beatles/helper/BtsPushHelper;->orderChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    sget-object v0, Lcom/didi/beatles/helper/BtsPushHelper;->orderChangeListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/didi/beatles/helper/BtsPushHelper;->unregisterOrderChangerListener()V

    .line 228
    :cond_0
    return-void

    .line 224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static unregisterNewOrderOfRouteListener()V
    .locals 3

    .prologue
    .line 208
    sget-object v2, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderOfRouteListeners:Ljava/util/Map;

    monitor-enter v2

    .line 209
    :try_start_0
    sget-object v1, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderOfRouteListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 210
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeBeatlesNewOrderPushReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 212
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 213
    return-void

    .line 210
    .end local v0           #msgType:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static unregisterNewOrderTipListener()V
    .locals 3

    .prologue
    .line 194
    sget-object v2, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderTipListeners:Ljava/util/Map;

    monitor-enter v2

    .line 195
    :try_start_0
    sget-object v1, Lcom/didi/beatles/helper/BtsPushHelper;->newOrderTipListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 196
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeBeatlesDriverNewOrderTipReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 198
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 199
    return-void

    .line 196
    .end local v0           #msgType:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static unregisterOrderChangerListener()V
    .locals 3

    .prologue
    .line 94
    sget-object v2, Lcom/didi/beatles/helper/BtsPushHelper;->orderChangeListeners:Ljava/util/Map;

    monitor-enter v2

    .line 95
    :try_start_0
    sget-object v1, Lcom/didi/beatles/helper/BtsPushHelper;->orderChangeListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 96
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeBeatlesOrderDataChangedTipReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 99
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 100
    return-void

    .line 96
    .end local v0           #msgType:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
