.class public Lcom/avos/avoscloud/AVSession;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/Session;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVSession$SignatureTask;,
        Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;
    }
.end annotation


# static fields
.field static final MAX_DIRECT_MESSAGE_LENGTH:I = 0x1388

.field private static onlyPushCount:Z

.field private static signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

.field protected static timeoutInSecs:I


# instance fields
.field private allPeerIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

.field private final currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

.field private final messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field final onlinePeerIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/PendingMessageCache",
            "<",
            "Lcom/avos/avoscloud/PendingMessageCache$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final selfId:Ljava/lang/String;

.field final sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVInternalConversation;",
            ">;"
        }
    .end annotation
.end field

.field final sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Group;",
            ">;"
        }
    .end annotation
.end field

.field final sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

.field final sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

.field tag:Ljava/lang/String;

.field v2Session:Z

.field private final websocketListener:Lcom/avos/avoscloud/AVSessionWebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xf

    sput v0, Lcom/avos/avoscloud/AVSession;->timeoutInSecs:I

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/AVSession;->onlyPushCount:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/AVInternalSessionListener;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    .line 98
    new-instance v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVSessionWebSocketListener;-><init>(Lcom/avos/avoscloud/AVSession;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->websocketListener:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    .line 101
    new-instance v0, Lcom/avos/avoscloud/PendingMessageCache;

    const-class v1, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/PendingMessageCache;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    .line 102
    new-instance v0, Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVIMOperationQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    .line 103
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private genSessionCommand(Ljava/util/List;Ljava/lang/String;)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    return-object v0
.end method

.method public static isOnlyPushCount()Z
    .locals 1

    .prologue
    .line 687
    sget-boolean v0, Lcom/avos/avoscloud/AVSession;->onlyPushCount:Z

    return v0
.end method

.method public static setOfflineMessagePush(Z)V
    .locals 0
    .parameter

    .prologue
    .line 679
    sput-boolean p0, Lcom/avos/avoscloud/AVSession;->onlyPushCount:Z

    .line 680
    return-void
.end method

.method static setStaticSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    sput-object p0, Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    .line 92
    return-void
.end method

.method public static setTimeoutInSecs(I)V
    .locals 0
    .parameter

    .prologue
    .line 671
    sput p0, Lcom/avos/avoscloud/AVSession;->timeoutInSecs:I

    .line 672
    return-void
.end method


# virtual methods
.method public checkSessionStatus()Lcom/avos/avoscloud/AVException;
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x77

    const-string v2, "Please call AVIMClient.open() first"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 515
    :goto_0
    return-object v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection Lost"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connecting to server"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 515
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->clear()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->clear()V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avospush/session/MessageReceiptCache;->clean(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method protected clearOnlinePeerIds()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 460
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 203
    const v0, -0x10001

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVSession;->close(I)V

    .line 204
    return-void
.end method

.method protected close(I)V
    .locals 6
    .parameter

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVSessionCacheHelper;->removeSession(Ljava/lang/String;Z)V

    .line 228
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVSessionCacheHelper;->removeIMSessionToken(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->cleanUp()V

    .line 233
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    .line 254
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "close"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v3

    .line 251
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/16 v4, 0x2715

    move-object v2, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    goto :goto_0

    .line 242
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected conversationQuery(Ljava/util/Map;I)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 479
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection Lost"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v7, p2, v0, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 501
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string v0, "where"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 487
    const-string v0, "order"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 488
    const-string v0, "skip"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "skip"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 492
    :goto_1
    const-string v0, "limit"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "limit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 496
    :goto_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v5, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v5}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v5

    iget-object v6, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-static {v5, v6, v7, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 499
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/ConversationQueryPacket;->getConversationQueryPacket(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;III)Lcom/avos/avospush/session/ConversationQueryPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0

    .line 488
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 492
    :cond_2
    const/16 v4, 0xa

    goto :goto_2
.end method

.method public createConversation(Ljava/util/List;Ljava/util/Map;ZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 582
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVSession;->createConversation(Ljava/util/List;Ljava/util/Map;ZZI)V

    .line 583
    return-void
.end method

.method protected createConversation(Ljava/util/List;Ljava/util/Map;ZZI)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v0, "Connection Lost"

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    move-object v2, p0

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    .line 620
    :goto_0
    return-void

    .line 595
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVSession$3;

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/AVSession$3;-><init>(Lcom/avos/avoscloud/AVSession;ILjava/util/List;Ljava/util/Map;ZZ)V

    .line 619
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getAllPeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 432
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;
    .locals 2
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVInternalConversation;

    .line 566
    if-eqz v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-object v0

    .line 569
    :cond_1
    new-instance v1, Lcom/avos/avoscloud/AVInternalConversation;

    invoke-direct {v1, p1, p0}, Lcom/avos/avoscloud/AVInternalConversation;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V

    .line 570
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVInternalConversation;

    .line 572
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public getGroup()Lcom/avos/avoscloud/Group;
    .locals 3

    .prologue
    .line 560
    new-instance v0, Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/avos/avoscloud/AVInternalGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V

    .line 561
    return-object v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;
    .locals 2
    .parameter

    .prologue
    .line 546
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getGroup()Lcom/avos/avoscloud/Group;

    move-result-object v0

    .line 554
    :cond_0
    :goto_0
    return-object v0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Group;

    goto :goto_0

    .line 552
    :cond_2
    new-instance v1, Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-direct {v1, v0, p1, p0}, Lcom/avos/avoscloud/AVInternalGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V

    .line 553
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Group;

    .line 554
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 1

    .prologue
    .line 667
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getOnlinePeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelfPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method public getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->websocketListener:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    return-object v0
.end method

.method public isOnline(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWatching(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;)V

    .line 119
    return-void
.end method

.method public open(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    const v0, -0x10001

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;I)V

    .line 124
    return-void
.end method

.method protected open(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method public open(Ljava/util/List;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x2714

    .line 128
    iput-object p2, p0, Lcom/avos/avoscloud/AVSession;->tag:Ljava/lang/String;

    .line 130
    :try_start_0
    const-string v0, "Null id in session id list."

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/avos/avoscloud/PushService;->isPushConnectionBroken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v2, "Connection Lost"

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2714

    move-object v2, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    .line 194
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVSession;->watchPeers(Ljava/util/List;)Z

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p3}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v3

    .line 191
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    move-object v2, p0

    move v4, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    goto :goto_0

    .line 148
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 149
    new-instance v0, Lcom/avos/avoscloud/AVSession$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/avos/avoscloud/AVSession$1;-><init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;ILjava/lang/String;)V

    .line 189
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected queryOnlinePeers(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const-string v1, "query"

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, p2}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 475
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 476
    return-void
.end method

.method public queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/OnlinePeerQueryListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 468
    const v0, -0x10001

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVSession;->queryOnlinePeers(Ljava/util/List;I)V

    .line 469
    return-void
.end method

.method protected removeConversation(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 7
    .parameter

    .prologue
    .line 266
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v0

    const-string v1, "Null id in session id list."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is not open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p0, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    new-instance v0, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v0}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 274
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->SEND_MESSAGE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 275
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    .line 276
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setMessage(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p0, p1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    .line 278
    throw v0

    .line 282
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v6

    .line 284
    new-instance v0, Lcom/avos/avospush/session/DirectMessagePacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/DirectMessagePacket;-><init>()V

    .line 285
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setAppId(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setPeerId(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setMsg(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setTransient(Z)V

    .line 289
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setToPeerIds(Ljava/util/Collection;)V

    .line 290
    invoke-virtual {v0, v6}, Lcom/avos/avospush/session/DirectMessagePacket;->setRequestId(I)V

    .line 291
    iget-boolean v1, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setReceipt(Z)V

    .line 292
    invoke-virtual {v0}, Lcom/avos/avospush/session/DirectMessagePacket;->toJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    .line 293
    const/16 v2, 0x1388

    if-le v1, v2, :cond_3

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Message exceeds message length maximum limit"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_3
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 297
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/PendingMessageCache$Message;->getMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/avos/avoscloud/AVSession;->storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public sendUnreadMessagesAck(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 698
    sget-boolean v0, Lcom/avos/avoscloud/AVSession;->onlyPushCount:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 699
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 700
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 701
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 702
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 704
    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/avos/avospush/session/ConversationAckPacket;->getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/avos/avospush/session/ConversationAckPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 708
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected setAllPeerIds(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    if-eqz p1, :cond_0

    .line 452
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    .line 454
    :cond_0
    return-void
.end method

.method public setMessageTimeout(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    return-void
.end method

.method protected setServerAckReceived(J)V
    .locals 1
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 464
    return-void
.end method

.method protected storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;)V
    .locals 1
    .parameter

    .prologue
    .line 311
    const v0, -0x10001

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVSession;->storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V

    .line 312
    return-void
.end method

.method protected storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 316
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;-><init>(Lcom/avos/avoscloud/AVSession;Z)V

    sget v2, Lcom/avos/avoscloud/AVSession;->timeoutInSecs:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 325
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v1, v2, v3, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    goto :goto_0
.end method

.method public declared-synchronized unwatchPeers(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    :goto_0
    monitor-exit p0

    return-void

    .line 392
    :cond_0
    :try_start_1
    const-string v0, "Null id in session id list."

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    new-instance v0, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v0}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 395
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->UNWATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 396
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    .line 398
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    :try_start_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p0, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 401
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 402
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 404
    new-instance v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {v0}, Lcom/avos/avoscloud/PendingMessageCache$Message;-><init>()V

    .line 405
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v1

    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    .line 407
    iput-object p1, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    .line 408
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 410
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const-string v2, "remove"

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v3, v1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 413
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized watchPeers(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 329
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    :goto_0
    monitor-exit p0

    return v0

    .line 334
    :cond_0
    :try_start_1
    const-string v2, "Null id in session id list."

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    new-instance v1, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v1}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 338
    sget-object v2, Lcom/avos/avoscloud/SessionPausedException$Actions;->WATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 339
    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    .line 340
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    :try_start_2
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 342
    :cond_1
    :try_start_3
    new-instance v2, Lcom/avos/avoscloud/AVSession$2;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/AVSession$2;-><init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;)V

    .line 376
    new-instance v3, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v3, v2}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v1

    .line 378
    goto :goto_0
.end method
