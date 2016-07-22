.class public Lcom/avos/avoscloud/im/v2/AVIMMessageManager;
.super Ljava/lang/Object;
.source "AVIMMessageManager.java"


# static fields
.field static conversationEventHandler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

.field static defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

.field static messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/im/v2/MessageHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field static messageTypesRepository:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageTypesRepository:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 37
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 38
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 39
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 40
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 41
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V

    return-void
.end method

.method protected static getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->conversationEventHandler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    return-object v0
.end method

.method private static getMessageType(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 235
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 236
    const-string v1, "_lctype"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 241
    :goto_0
    return v0

    .line 238
    :catch_0
    move-exception v0

    .line 241
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 4
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->getMessageType(Ljava/lang/String;)I

    move-result v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageTypesRepository:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 214
    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 217
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setConversationId(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReceiptTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setReceiptTimestamp(J)V

    .line 220
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 221
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 224
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageIOType()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V

    .line 225
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 230
    :cond_0
    :goto_0
    return-object p0

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->containMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 133
    :cond_0
    if-nez p3, :cond_1

    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0, p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    .line 136
    :cond_1
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 138
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessageAt(Ljava/util/Date;)V

    .line 140
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$1;

    invoke-direct {v2, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->fetchInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    goto :goto_0

    .line 150
    :cond_2
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V

    goto :goto_0
.end method

.method protected static processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Ljava/lang/String;)Z

    .line 156
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$2;

    invoke-direct {v2, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->fetchInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V

    goto :goto_0
.end method

.method public static registerAVIMMessageType(Ljava/lang/Class;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    .line 51
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/annotation/IncompleteAnnotationException;

    const-class v1, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    const-string v2, "type"

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageType;->type()I

    move-result v0

    .line 56
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageTypesRepository:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    :try_start_0
    const-string v0, "computeFieldAttribute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "failed to initialize message Fields"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static registerDefaultMessageHandler(Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    .line 77
    return-void
.end method

.method public static registerMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/MessageHandler",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 89
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 90
    if-eqz v0, :cond_0

    .line 93
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0xc351

    const v5, 0xc350

    const/4 v4, 0x0

    .line 175
    const/4 v0, 0x0

    .line 176
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    sget-object v3, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 179
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 180
    const/4 v1, 0x1

    .line 182
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/MessageHandler;

    .line 183
    if-eqz p2, :cond_1

    .line 184
    invoke-virtual {v0, v6, v4, p0, p1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {v0, v5, v4, p0, p1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v0

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    if-nez v1, :cond_4

    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    if-eqz v0, :cond_4

    .line 194
    if-eqz p2, :cond_5

    .line 195
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    invoke-virtual {v0, v6, v4, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    :cond_4
    :goto_2
    return-void

    .line 198
    :cond_5
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    invoke-virtual {v0, v5, v4, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static setConversationEventHandler(Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->conversationEventHandler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    .line 119
    return-void
.end method

.method public static unregisterMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/MessageHandler",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method
