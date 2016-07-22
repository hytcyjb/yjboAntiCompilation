.class Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
.super Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;
.source "AVPushConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVPushConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AVPushWebSocketClient"
.end annotation


# static fields
.field private static final HEADER_SUB_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"


# instance fields
.field private appId:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field final synthetic this$0:Lcom/avos/avoscloud/AVPushConnectionManager;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/net/URI;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 236
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 237
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "AVPushConnectionManager"

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setSocket()V

    .line 241
    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/net/URI;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 244
    new-instance v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_17;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_17;-><init>()V

    new-instance v1, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$1;

    invoke-direct {v1, p1, p3}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$1;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    .line 249
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "AVPushConnectionManager"

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setSocket()V

    .line 253
    return-void
.end method

.method private setSocket()V
    .locals 2

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const-string v1, "AVPushConnectionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 262
    :catch_1
    move-exception v0

    .line 263
    const-string v1, "AVPushConnectionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x1387

    const/16 v4, 0xfa0

    .line 406
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-gt p1, v5, :cond_1

    if-lt p1, v4, :cond_1

    .line 407
    :cond_0
    const-string v0, "AVPushConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on websocket closed for reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVSession;

    .line 411
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    if-gt p1, v5, :cond_4

    if-lt p1, v4, :cond_4

    iget-boolean v2, v0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-nez v2, :cond_4

    .line 412
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|watchPeerIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 414
    :cond_4
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 415
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onWebSocketClose()V

    goto :goto_0

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$400(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->onSocketFailure()V

    .line 420
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$400(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()V

    .line 421
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 425
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "AVPushConnectionManager"

    const-string v1, "Client error."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$600(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->getReadyState()Lcom/avos/avoscloud/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/avos/avoscloud/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$400(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->onSocketFailure()V

    .line 430
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$400(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()V

    .line 432
    :cond_1
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 317
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "AVPushConnectionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$400(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->onSocketSuccess()V

    .line 326
    :try_start_0
    const-class v0, Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 327
    const-string v1, "cmd"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    const-string v2, "ids"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 332
    const-string v3, "msg"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 333
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_2

    .line 334
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 335
    iget-object v5, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #calls: Lcom/avos/avoscloud/AVPushConnectionManager;->processPushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v1, v6, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$500(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 338
    :cond_2
    new-instance v0, Lcom/avos/avospush/session/PushAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/PushAckPacket;-><init>()V

    .line 339
    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/PushAckPacket;->setAppId(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/PushAckPacket;->setInstallationId(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, v2}, Lcom/avos/avospush/session/PushAckPacket;->setMessageIds(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 402
    :cond_3
    :goto_1
    return-void

    .line 343
    :cond_4
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 344
    const-string v2, "presence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 345
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 346
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 347
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onPresenceCommand(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    const-string v1, "Exception during message parse"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 349
    :cond_5
    :try_start_1
    const-string v2, "direct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 350
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 351
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 352
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onDirectCommand(Ljava/util/HashMap;)V

    goto :goto_1

    .line 354
    :cond_6
    const-string v2, "session"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 355
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 356
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 357
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onSessionCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 359
    :cond_7
    const-string v2, "ackreq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 360
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 361
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 362
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onAckReqCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 364
    :cond_8
    const-string v2, "ack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 365
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 366
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 367
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onAckCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 369
    :cond_9
    const-string v2, "room"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 370
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 371
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 372
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onGroupCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 374
    :cond_a
    const-string v2, "rcp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 375
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 376
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 377
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onMessageReceipt(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 379
    :cond_b
    const-string v2, "conv"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 380
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 381
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 382
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onConversationCommand(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 384
    :cond_c
    const-string v2, "unread"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 385
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 386
    if-eqz v1, :cond_3

    .line 387
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onOfflineMessageUnread(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 389
    :cond_d
    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 390
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 391
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 392
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onError(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 394
    :cond_e
    const-string v2, "logs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v1

    const-string v2, "peerId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 396
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onHistoryMessageQuery(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onOpen(Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)V
    .locals 4
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100(Lcom/avos/avoscloud/AVPushConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 291
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #calls: Lcom/avos/avoscloud/AVPushConnectionManager;->triggerPingTask()V
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$200(Lcom/avos/avoscloud/AVPushConnectionManager;)V

    .line 292
    new-instance v0, Lcom/avos/avospush/session/LoginPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/LoginPacket;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/LoginPacket;->setAppId(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/LoginPacket;->setInstallationId(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 297
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVSession;

    .line 298
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    const-string v2, "AVPushConnectionManager"

    const-string v3, "websocket opened, notifying listeners"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onWebSocketOpen()V

    goto :goto_0

    .line 304
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$2;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$2;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method

.method public onWebsocketPong(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "AVPushConnectionManager"

    const-string v1, "on pong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J
    invoke-static {v0, v2, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$702(Lcom/avos/avoscloud/AVPushConnectionManager;J)J

    .line 440
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onWebsocketPong(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    .line 441
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #calls: Lcom/avos/avoscloud/AVPushConnectionManager;->triggerPingTask()V
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$200(Lcom/avos/avoscloud/AVPushConnectionManager;)V

    .line 442
    return-void
.end method

.method public send(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "AVPushConnectionManager"

    invoke-virtual {p1}, Lcom/avos/avospush/session/CommandPacket;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avospush/session/CommandPacket;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->appId:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setInstallationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    .line 275
    return-void
.end method
