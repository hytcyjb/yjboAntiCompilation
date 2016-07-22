.class public Lcom/avos/avoscloud/im/v2/AVIMConversation;
.super Ljava/lang/Object;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;
    }
.end annotation


# static fields
.field public static final LAST_MESSAGE:Ljava/lang/String; = "lm"

.field static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final NONTRANSIENT_MESSAGE_FLAG:I = 0x1

.field public static final RECEIPT_MESSAGE_FLAG:I = 0x11

.field public static final TRANSIENT_MESSAGE_FLAG:I


# instance fields
.field attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field client:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field conversationId:Ljava/lang/String;

.field createdAt:Ljava/lang/String;

.field creator:Ljava/lang/String;

.field isTransient:Z

.field lastMessageAt:Ljava/util/Date;

.field members:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pendingAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

.field updatedAt:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V

    .line 96
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    .line 80
    if-eqz p2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 83
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    .line 84
    if-eqz p3, :cond_1

    .line 85
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    .line 89
    iput-boolean p4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    .line 91
    iget-object v0, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processStorageQueryResult(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processLastMessageResult(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V

    return-void
.end method

.method public static parseFromJson(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 938
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 939
    :cond_0
    const/4 v0, 0x0

    .line 976
    :goto_0
    return-object v0

    .line 942
    :cond_1
    const-string v0, "objectId"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 943
    const-string v0, "m"

    const-class v1, Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 944
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-direct {v1, p0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    .line 945
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setMembers(Ljava/util/List;)V

    .line 946
    const-string v0, "c"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreator(Ljava/lang/String;)V

    .line 947
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 948
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 949
    const-string v0, "name"

    const-string v3, "name"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_2
    const-string v0, "attr"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 953
    const-string v0, "attr"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 954
    if-eqz v0, :cond_3

    .line 955
    const-class v3, Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 956
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 959
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setAttributes(Ljava/util/Map;Z)V

    .line 961
    const-string v0, "createdAt"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 962
    const-string v0, "createdAt"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreatedAt(Ljava/lang/String;)V

    .line 965
    :cond_4
    const-string v0, "updatedAt"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 966
    const-string v0, "updatedAt"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setUpdatedAt(Ljava/lang/String;)V

    .line 969
    :cond_5
    const-string v0, "lm"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 970
    const-string v0, "lm"

    const-class v2, Ljava/util/Map;

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessageAt(Ljava/util/Date;)V

    .line 973
    :cond_6
    const-string v0, "tr"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 974
    const-string v0, "tr"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    :cond_7
    move-object v0, v1

    .line 976
    goto/16 :goto_0
.end method

.method private processLastMessageResult(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/AVIMException;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 394
    if-nez p2, :cond_1

    .line 395
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 403
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p3, v1, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMException;)V

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {p3, v1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method private processStorageQueryResult(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 12
    .parameter
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
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 413
    const/4 v4, -0x1

    .line 414
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 415
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    :goto_1
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    .line 424
    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, p6, -0x1

    if-lt v2, v4, :cond_2

    .line 425
    :cond_0
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->messageComparator:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 426
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, p1, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 462
    :goto_2
    return-void

    .line 419
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 430
    :cond_2
    if-lez v3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 432
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p6, v2

    add-int/lit8 v6, v2, 0x1

    .line 433
    add-int/lit8 v2, v3, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 434
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :goto_3
    if-nez v2, :cond_5

    move-object v3, p3

    :goto_4
    if-nez v2, :cond_6

    move-wide/from16 v4, p4

    :goto_5
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;

    move-object/from16 v0, p7

    invoke-direct {v10, p0, v0, v11}, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;Ljava/util/List;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_2

    .line 435
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 437
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    sub-int v6, p6, v2

    .line 438
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    goto :goto_3

    .line 440
    :cond_4
    const/4 v2, 0x0

    move/from16 v6, p6

    .line 441
    goto :goto_3

    .line 443
    :cond_5
    iget-object v3, v2, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-wide v4, v2, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    goto :goto_5

    :cond_7
    move v3, v4

    goto :goto_1
.end method

.method private queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    new-instance v6, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;

    invoke-direct {v6, p0, p5}, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getMessages(Ljava/lang/String;JILjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V

    .line 204
    return-void
.end method

.method private queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    const-string v1, "limit"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "mid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "ts"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "tmid"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "tt"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, v1, p8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    .line 192
    return-void
.end method

.method private sendCMDToPushService(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 827
    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 829
    return-void
.end method

.method private sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 845
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v7

    .line 846
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 847
    const-string v1, "com.avoscloud.im.v2.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    const-string v1, "conversation.data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    :cond_0
    if-eqz p2, :cond_1

    .line 852
    const-string v1, "conversation.data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 853
    const-string v1, "conversation.message.flag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    :cond_1
    const-string v1, "conversation.client"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v2, v2, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string v1, "convesration.id"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    const-string v1, "conversation.operation"

    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 858
    const-string v1, "conversation.requestId"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 860
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 861
    if-eqz p5, :cond_2

    .line 862
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/j;->a(Landroid/content/Context;)Landroid/support/v4/content/j;

    move-result-object v8

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p6

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;Lcom/avos/avoscloud/im/v2/AVIMMessage;I)V

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/content/j;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 929
    :cond_2
    return-void
.end method

.method private sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 839
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 840
    return-void
.end method

.method private sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 834
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 835
    return-void
.end method


# virtual methods
.method public addMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->validateNonEmptyConversationMembers(Ljava/util/List;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_1

    .line 479
    if-eqz p2, :cond_0

    .line 480
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 486
    const-string v1, "conversation.member"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    goto :goto_0
.end method

.method public fetchInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 4
    .parameter

    .prologue
    .line 737
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    if-eqz p1, :cond_0

    .line 739
    const/4 v0, 0x0

    new-instance v1, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x66

    const-string v3, "ConversationId is empty"

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 797
    :goto_0
    return-void

    .line 742
    :cond_0
    const-string v0, "ConversationId is empty"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_Conversation"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 747
    const-string v1, "objectId"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 748
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(Lcom/avos/avoscloud/GetCallback;)V

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 608
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 615
    :goto_0
    return-object v0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attr."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attr."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMessage(Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 375
    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 376
    new-instance v5, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    .line 390
    :goto_0
    return-void

    .line 383
    :cond_0
    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$8;

    invoke-direct {v8, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$8;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V

    move-object v0, p0

    move-object v5, v1

    move-wide v6, v2

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_0
.end method

.method public getLastMessageAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    return-object v0
.end method

.method public getMemberCount(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 465
    const/4 v0, 0x0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    .line 466
    return-void
.end method

.method public getMembers()Ljava/util/List;
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
    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 547
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    return v0
.end method

.method public join(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 806
    const/4 v0, 0x0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$15;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$15;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 818
    return-void
.end method

.method public kickMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->validateNonEmptyConversationMembers(Ljava/util/List;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_1

    .line 514
    if-eqz p2, :cond_0

    .line 515
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 521
    const-string v1, "conversation.member"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$11;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$11;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    goto :goto_0
.end method

.method public mute(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 556
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 558
    return-void
.end method

.method public queryMessages(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 213
    if-lez p1, :cond_0

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    .line 214
    :cond_0
    if-eqz p2, :cond_1

    .line 215
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "limit should be in [1, 1000]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 220
    :cond_1
    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-nez v0, :cond_2

    .line 221
    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$3;

    invoke-direct {v8, p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation$3;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v0, p0

    move v4, p1

    move-object v5, v1

    move-wide v6, v2

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    .line 281
    :goto_0
    return-void

    .line 236
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    .line 237
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getMessageCount(Ljava/lang/String;)J

    move-result-wide v4

    .line 245
    int-to-long v6, p1

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getLatestMessageWithBreakpoint(Ljava/lang/String;Z)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v6

    .line 256
    :goto_1
    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;

    invoke-direct {v8, p0, p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;I)V

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_0

    :cond_4
    move-object v5, v1

    move-wide v6, v2

    goto :goto_1
.end method

.method public queryMessages(Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    .line 179
    return-void
.end method

.method public queryMessages(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 294
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    cmp-long v0, p2, v6

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0, p4, p5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    .line 363
    :goto_0
    return-void

    .line 299
    :cond_0
    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-nez v0, :cond_1

    .line 300
    const/4 v5, 0x0

    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;

    invoke-direct {v8, p0, p5}, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getMessage(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;)V

    goto :goto_0
.end method

.method public quit(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 584
    const/4 v0, 0x0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$12;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$12;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 597
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setConversationId(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->genUniqueToken()V

    .line 145
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 147
    if-eqz p3, :cond_0

    .line 148
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x64

    const-string v2, "Connection lost"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 154
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 155
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 156
    check-cast v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;Lcom/avos/avoscloud/im/v2/AVIMMessage;I)V

    invoke-static {v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessageAccessor;->upload(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    .line 130
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 619
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attr."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setAttributes(Ljava/util/Map;Z)V

    .line 630
    return-void
.end method

.method protected setAttributes(Ljava/util/Map;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 633
    if-eqz p2, :cond_1

    .line 634
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 635
    if-eqz p1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 640
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected setConversationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->createdAt:Ljava/lang/String;

    .line 681
    return-void
.end method

.method protected setCreator(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    .line 109
    return-void
.end method

.method setLastMessageAt(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    .line 668
    return-void
.end method

.method protected setMembers(Ljava/util/List;)V
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
    .line 571
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 575
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    return-void
.end method

.method setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public unmute(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 566
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 568
    return-void
.end method

.method public updateInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 704
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 706
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->assembleConversationAttributes(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_0

    .line 709
    const-string v2, "conversation.attributes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$13;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$13;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 728
    :cond_1
    return-void
.end method
