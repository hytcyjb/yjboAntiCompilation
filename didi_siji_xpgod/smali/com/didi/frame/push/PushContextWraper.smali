.class abstract Lcom/didi/frame/push/PushContextWraper;
.super Ljava/lang/Object;
.source "PushContextWraper.java"

# interfaces
.implements Lcom/didi/frame/push/IPushContextWrapper;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/push/PushContextWraper$PushHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/didi/frame/push/IPushContextWrapper",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final CMD_CANCEL:I = 0xc

.field public static final CMD_CONFIG:I = 0x1

.field public static final CMD_CONNECT:I = 0x3

.field public static final CMD_DISCONNECT:I = 0xa

.field public static final CMD_EXIT:I = 0x0

.field public static final CMD_FILE_CHANNEL:I = 0x7

.field public static final CMD_RECEIVE:I = 0x5

.field public static final CMD_RECV_FILE:I = 0x9

.field public static final CMD_SEND:I = 0x4

.field public static final CMD_SEND_CALLBACK:I = 0x6

.field public static final CMD_SEND_FILE:I = 0x8

.field public static final CMD_START_LOOP:I = 0x2

.field public static final CMD_STOP_LOOP:I = 0xb

.field public static final KEY_ARGV_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_ARGV_CLIENT_VERSION:Ljava/lang/String; = "client_version"

.field public static final KEY_ARGV_DATA:Ljava/lang/String; = "data"

.field public static final KEY_ARGV_EXTRA:Ljava/lang/String; = "extra"

.field public static final KEY_ARGV_FILEID:Ljava/lang/String; = "file_id"

.field public static final KEY_ARGV_FILEPATH:Ljava/lang/String; = "file_path"

.field public static final KEY_ARGV_HAS_LOCATION:Ljava/lang/String; = "location"

.field public static final KEY_ARGV_IP:Ljava/lang/String; = "ip"

.field public static final KEY_ARGV_LATITUDE:Ljava/lang/String; = "lat"

.field public static final KEY_ARGV_LONGITUDE:Ljava/lang/String; = "lng"

.field public static final KEY_ARGV_META:Ljava/lang/String; = "meta"

.field public static final KEY_ARGV_META_SIZE:Ljava/lang/String; = "meta_size"

.field public static final KEY_ARGV_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_ARGV_MSGTYPE:Ljava/lang/String; = "msgType"

.field public static final KEY_ARGV_NETWORK:Ljava/lang/String; = "network"

.field public static final KEY_ARGV_OPERATOR:Ljava/lang/String; = "operator"

.field public static final KEY_ARGV_OS_TYPE:Ljava/lang/String; = "os_type"

.field public static final KEY_ARGV_OS_VERSION:Ljava/lang/String; = "os_version"

.field public static final KEY_ARGV_PORT:Ljava/lang/String; = "port"

.field public static final KEY_ARGV_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_ARGV_REQID:Ljava/lang/String; = "reqId"

.field public static final KEY_ARGV_RETCODE:Ljava/lang/String; = "retCode"

.field public static final KEY_ARGV_ROLE:Ljava/lang/String; = "role"

.field public static final KEY_ARGV_SEQID:Ljava/lang/String; = "seqId"

.field public static final KEY_ARGV_SESSIONID:Ljava/lang/String; = "session_id"

.field public static final KEY_ARGV_TOKEN:Ljava/lang/String; = "token"

.field public static final KEY_ARGV_WAITFORRESPONSE:Ljava/lang/String; = "wait_for_response"

.field public static final KEY_CONFIG_CONNCHANNEL_CONNECT_TIMEOUT:Ljava/lang/String; = "5"

.field public static final KEY_CONFIG_CONNCHANNEL_DNS_TIMEOUT:Ljava/lang/String; = "4"

.field public static final KEY_CONFIG_CONNCHANNEL_HEARTBEATRETRY_COUNT:Ljava/lang/String; = "7"

.field public static final KEY_CONFIG_CONNCHANNEL_HEARTBEATRETRY_INTERVAL:Ljava/lang/String; = "8"

.field public static final KEY_CONFIG_CONNCHANNEL_HEARTBEAT_INTERVAL:Ljava/lang/String; = "6"

.field public static final KEY_CONFIG_CONNCHANNEL_RECVBUFFER_SIZE:Ljava/lang/String; = "10"

.field public static final KEY_CONFIG_CONNCHANNEL_TASKQUEUE_CAPAICITY:Ljava/lang/String; = "2"

.field public static final KEY_CONFIG_DNSCACHE_CAPCITY:Ljava/lang/String; = "16"

.field public static final KEY_CONFIG_DNSCACHE_TIMEOUT:Ljava/lang/String; = "17"

.field public static final KEY_CONFIG_FILECHANNEL_CONNECTION_NUMBER:Ljava/lang/String; = "12"

.field public static final KEY_CONFIG_FILECHANNEL_CONNECT_TIMEOUT:Ljava/lang/String; = "14"

.field public static final KEY_CONFIG_FILECHANNEL_DNS_TIMEOUT:Ljava/lang/String; = "13"

.field public static final KEY_CONFIG_FILECHANNEL_TASKQUEUE_CAPAICITY:Ljava/lang/String; = "11"

.field public static final KEY_CONFIG_FILECHANNEL_TASK_TIMEOUT:Ljava/lang/String; = "15"

.field public static final KEY_CONFIG_MSGQUEUE_CAPACITY:Ljava/lang/String; = "1"

.field public static final KEY_PUSH_OPTION_RECORD:Ljava/lang/String; = "option_record"

.field public static final RETCODE_AUTHFAILED:I = -0x11

.field public static final RETCODE_CONNECTERROR:I = -0x9

.field public static final RETCODE_CONNECTIONSTOPED:I = 0x2

.field public static final RETCODE_FILEERROR:I = -0xe

.field public static final RETCODE_HASSTARTEDERROR:I = -0x10

.field public static final RETCODE_HASTASK:I = -0x8

.field public static final RETCODE_HEARTBEATFAILED:I = -0x14

.field public static final RETCODE_MEMORYERROR:I = -0x6

.field public static final RETCODE_NOTALIVE:I = -0x12

.field public static final RETCODE_NOTFOUND:I = -0x5

.field public static final RETCODE_NOTINITED:I = -0x7

.field public static final RETCODE_OK:I = 0x0

.field public static final RETCODE_PARAMERROR:I = -0x2

.field public static final RETCODE_QUEUEEMPTYERROR:I = -0x4

.field public static final RETCODE_QUEUEFULLERROR:I = -0x3

.field public static final RETCODE_RECVBADDATA:I = -0xd

.field public static final RETCODE_RECVBUFFEREXHAUSTED:I = -0xc

.field public static final RETCODE_RECVERROR:I = -0xb

.field public static final RETCODE_REQUESTCANCELED:I = 0x1

.field public static final RETCODE_SENDERROR:I = -0xa

.field public static final RETCODE_SERVCLOSE:I = -0x13

.field public static final RETCODE_SERVERERROR:I = -0xf

.field public static final RETCODE_SERVKICKOFF:I = -0x15

.field public static final RETCODE_SYSTEMERROR:I = -0x1


# instance fields
.field mContext:Landroid/content/Context;

.field mPushContext:Lcom/didi/frame/push/IPushContext;

.field private mPushHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/didi/frame/push/PushContextWraper;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/didi/frame/push/PushContext;

    invoke-direct {v0}, Lcom/didi/frame/push/PushContext;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    .line 135
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/push/PushContextWraper;Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleConnecting(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/didi/frame/push/PushContextWraper;Landroid/os/Bundle;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleSending(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/didi/frame/push/PushContextWraper;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleSendCallback(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/frame/push/PushContextWraper;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/didi/frame/push/PushContextWraper;->handleReceiving(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/frame/push/PushContextWraper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/frame/push/PushContextWraper;->handleExiting()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/frame/push/PushContextWraper;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/push/PushContextWraper;->onOptionDone(IILandroid/os/Bundle;)V

    return-void
.end method

.method private handleConnecting(Landroid/os/Bundle;)I
    .locals 10
    .parameter "bundle"

    .prologue
    .line 412
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const-string v0, "ip"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, ip:Ljava/lang/String;
    const-string v0, "port"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 414
    .local v2, port:I
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, account:Ljava/lang/String;
    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, token:Ljava/lang/String;
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 417
    .local v5, extraData:[B
    if-nez v5, :cond_0

    const/4 v6, 0x0

    .line 418
    .local v6, extraDataLen:I
    :goto_0
    const-string v0, "role"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 420
    .local v7, role:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PushLog: PushContextWraper handleConnecting ip -> "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface/range {v0 .. v7}, Lcom/didi/frame/push/IPushContext;->startConnChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BII)I

    move-result v8

    .line 423
    .local v8, result:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PushLog: PushContextWraper handleConnecting 22222222222 result:  "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 424
    return v8

    .line 417
    .end local v6           #extraDataLen:I
    .end local v7           #role:I
    .end local v8           #result:I
    :cond_0
    array-length v6, v5

    goto :goto_0
.end method

.method private handleExiting()V
    .locals 1

    .prologue
    .line 532
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mContext:Landroid/content/Context;

    .line 537
    iget-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface {v0}, Lcom/didi/frame/push/IPushContext;->stopLoop()I

    .line 538
    return-void
.end method

.method private handleReceiving(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 464
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const-string v3, "msgType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 465
    .local v1, msgType:I
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 466
    .local v0, data:[B
    const-string v3, "seqId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 467
    .local v2, seqId:[B
    invoke-virtual {p0, v1, v0, v2}, Lcom/didi/frame/push/PushContextWraper;->handleReceiving(I[B[B)V

    .line 468
    return-void
.end method

.method private handleSendCallback(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 450
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const-string v2, "retCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 451
    .local v0, retCode:I
    const-string v2, "seqId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 453
    .local v1, seqId:[B
    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/push/PushContextWraper;->handleSendCallback(I[B)V

    .line 454
    return-void
.end method

.method private handleSending(Landroid/os/Bundle;)I
    .locals 7
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v3, 0x0

    .line 433
    const-string v0, "msgType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 434
    .local v1, msgType:I
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 435
    .local v2, data:[B
    const-string v0, "seqId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 438
    .local v6, seqId:[B
    const-string v0, "priority"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 440
    .local v4, priority:I
    const-string v0, "wait_for_response"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 442
    .local v5, waitForResponse:I
    iget-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    array-length v3, v2

    invoke-interface/range {v0 .. v6}, Lcom/didi/frame/push/IPushContext;->sendMessage(I[BIII[B)I

    move-result v0

    return v0
.end method

.method private onOptionDone(IILandroid/os/Bundle;)V
    .locals 2
    .parameter "cmd"
    .parameter "res"
    .parameter "bundle"

    .prologue
    .line 541
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const-string v1, "option_record"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 542
    .local v0, seri:Ljava/io/Serializable;
    invoke-virtual {p0, p1, p2, v0}, Lcom/didi/frame/push/PushContextWraper;->onOptionDone(IILjava/lang/Object;)V

    .line 543
    return-void
.end method

.method private sendPushHandlerMessage(ILandroid/os/Bundle;Z)V
    .locals 2
    .parameter "cmd"
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 257
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    iget-object v1, p0, Lcom/didi/frame/push/PushContextWraper;->mPushHandler:Landroid/os/Handler;

    .line 259
    .local v1, pushHandler:Landroid/os/Handler;
    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 266
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    if-eqz p3, :cond_1

    .line 269
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public closeConnection(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 231
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 232
    return-void
.end method

.method public bridge synthetic closeConnection(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->closeConnection(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public config(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 161
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 162
    return-void
.end method

.method public bridge synthetic config(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->config(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public createConnection(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 177
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 178
    return-void
.end method

.method public bridge synthetic createConnection(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->createConnection(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public exit(Z)V
    .locals 2
    .parameter "front"

    .prologue
    .line 247
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 248
    return-void
.end method

.method public handleCanceling(Landroid/os/Bundle;)I
    .locals 3
    .parameter "bundle"

    .prologue
    .line 516
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const-string v2, "seqId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 517
    .local v0, seqId:J
    iget-object v2, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface {v2, v0, v1}, Lcom/didi/frame/push/IPushContext;->cancel(J)I

    move-result v2

    return v2
.end method

.method public handleConfig(Landroid/os/Bundle;)I
    .locals 18
    .parameter "bundle"

    .prologue
    .line 367
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const-string v1, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 368
    .local v3, msgQueueCapacity:I
    const-string v1, "2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 369
    .local v4, connChannelTaskQueueCapaicity:I
    const-string v1, "4"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 370
    .local v5, connChannelDNSTimeout:I
    const-string v1, "5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 371
    .local v6, connChannelConnectTimeout:I
    const-string v1, "6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 372
    .local v7, connChannelHeartBeatInterval:I
    const-string v1, "7"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 373
    .local v8, connChannelHeartBeatRetryCount:I
    const-string v1, "8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 374
    .local v9, connChannelHeartBeatRetryInterval:I
    const-string v1, "10"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 375
    .local v10, connChannelRecvBufferSize:I
    const-string v1, "11"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 376
    .local v11, fileChannelTaskQueueCapaicity:I
    const-string v1, "12"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 377
    .local v12, fileChannelConnectionNumber:I
    const-string v1, "13"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 378
    .local v13, fileChannelDNSTimeout:I
    const-string v1, "14"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 379
    .local v14, fileChannelConnectTimeout:I
    const-string v1, "15"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 380
    .local v15, fileChannelTaskTimeout:I
    const-string v1, "16"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 381
    .local v16, dnsCacheCapcity:I
    const-string v1, "17"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 383
    .local v17, dnsCacheTimeout:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/didi/frame/push/PushContextWraper;->mContext:Landroid/content/Context;

    invoke-interface/range {v1 .. v17}, Lcom/didi/frame/push/IPushContext;->config(Landroid/content/Context;IIIIIIIIIIIIIII)I

    move-result v1

    return v1
.end method

.method public handleDisconnect(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 521
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    iget-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface {v0}, Lcom/didi/frame/push/IPushContext;->stopConnChannel()I

    move-result v0

    return v0
.end method

.method public handleFileChannel(Landroid/os/Bundle;)I
    .locals 3
    .parameter "bundle"

    .prologue
    .line 473
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const-string v2, "ip"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, ip:Ljava/lang/String;
    const-string v2, "port"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 476
    .local v1, port:I
    iget-object v2, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface {v2, v0, v1}, Lcom/didi/frame/push/IPushContext;->setFileChannel(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public handleLoop()I
    .locals 1

    .prologue
    .line 403
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    invoke-virtual {p0}, Lcom/didi/frame/push/PushContextWraper;->startLoopInThread()I

    move-result v0

    return v0
.end method

.method public handleReceigingFile(Landroid/os/Bundle;)I
    .locals 8
    .parameter "bundle"

    .prologue
    .line 503
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 504
    .local v1, sessionId:J
    const-string v0, "msgType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 505
    .local v3, msgType:I
    const-string v0, "file_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, fileId:Ljava/lang/String;
    const-string v0, "file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, filePath:Ljava/lang/String;
    const-string v0, "seqId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 510
    .local v7, seqId:[B
    const/4 v6, 0x0

    .line 512
    .local v6, priority:I
    iget-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface/range {v0 .. v7}, Lcom/didi/frame/push/IPushContext;->recvFile(JILjava/lang/String;Ljava/lang/String;I[B)I

    move-result v0

    return v0
.end method

.method protected abstract handleReceiving(I[B[B)V
.end method

.method protected abstract handleSendCallback(I[B)V
.end method

.method public handleSendingFile(Landroid/os/Bundle;)I
    .locals 11
    .parameter "bundle"

    .prologue
    .line 480
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 481
    .local v1, sessionId:J
    const-string v0, "msgType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 482
    .local v3, msgType:I
    const-string v0, "file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, filePath:Ljava/lang/String;
    const-string v0, "meta"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 484
    .local v7, metaData:[B
    const-string v0, "meta_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 485
    .local v8, metaSize:I
    const-string v0, "seqId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 486
    .local v10, seqId:[B
    const-string v0, "reqId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 489
    .local v4, reqId:J
    const/4 v9, 0x0

    .line 491
    .local v9, priority:I
    iget-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface/range {v0 .. v10}, Lcom/didi/frame/push/IPushContext;->sendFile(JIJLjava/lang/String;[BII[B)I

    move-result v0

    return v0
.end method

.method public handleStoppingLoop(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 525
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    iget-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface {v0}, Lcom/didi/frame/push/IPushContext;->stopLoop()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v0, 0x1

    .line 576
    iget-object v1, p0, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface {v1}, Lcom/didi/frame/push/IPushContext;->isConnected()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessageReceived(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 201
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 202
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->onMessageReceived(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onMessageSent(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 193
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 194
    return-void
.end method

.method public bridge synthetic onMessageSent(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->onMessageSent(Landroid/os/Bundle;Z)V

    return-void
.end method

.method protected abstract onOptionDone(IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation
.end method

.method protected abstract onPushContextStarted()V
.end method

.method protected abstract onStartLoopFailed(I)V
.end method

.method public recvFile(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 223
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 224
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 144
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 145
    new-instance v0, Lcom/didi/frame/push/PushContextWraper$PushHandler;

    invoke-direct {v0, p0}, Lcom/didi/frame/push/PushContextWraper$PushHandler;-><init>(Lcom/didi/frame/push/PushContextWraper;)V

    iput-object v0, p0, Lcom/didi/frame/push/PushContextWraper;->mPushHandler:Landroid/os/Handler;

    .line 146
    invoke-virtual {p0}, Lcom/didi/frame/push/PushContextWraper;->onPushContextStarted()V

    .line 147
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 149
    return-void
.end method

.method public sendFile(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 216
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 217
    return-void
.end method

.method public sendMessage(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 185
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 186
    return-void
.end method

.method public bridge synthetic sendMessage(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendMessage(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public setFileChannel(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 209
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 210
    return-void
.end method

.method public bridge synthetic setFileChannel(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->setFileChannel(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public startLoop(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 169
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 170
    return-void
.end method

.method public bridge synthetic startLoop(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->startLoop(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public startLoopInThread()I
    .locals 2

    .prologue
    .line 548
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/frame/push/PushContextWraper$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/push/PushContextWraper$1;-><init>(Lcom/didi/frame/push/PushContextWraper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 560
    .local v0, nativeThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 561
    const/4 v1, 0x0

    return v1
.end method

.method public stopLoop(Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "bundle"
    .parameter "front"

    .prologue
    .line 239
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->sendPushHandlerMessage(ILandroid/os/Bundle;Z)V

    .line 240
    return-void
.end method

.method public bridge synthetic stopLoop(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    .local p0, this:Lcom/didi/frame/push/PushContextWraper;,"Lcom/didi/frame/push/PushContextWraper<TT;>;"
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/didi/frame/push/PushContextWraper;->stopLoop(Landroid/os/Bundle;Z)V

    return-void
.end method
