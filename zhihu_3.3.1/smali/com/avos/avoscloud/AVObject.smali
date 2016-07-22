.class public Lcom/avos/avoscloud/AVObject;
.super Ljava/lang/Object;
.source "AVObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVObject$AVObjectCreator;,
        Lcom/avos/avoscloud/AVObject$KeyValueCallback;,
        Lcom/avos/avoscloud/AVObject$FetchObjectCallback;
    }
.end annotation


# static fields
.field public static final CREATED_AT:Ljava/lang/String; = "createdAt"

.field public static final transient CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final INVALID_KEYS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = null

.field public static final OBJECT_ID:Ljava/lang/String; = "objectId"

.field private static final SUB_CLASSES_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SUB_CLASSES_REVERSE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATED_AT:Ljava/lang/String; = "updatedAt"

.field static final UUID_LEN:I


# instance fields
.field protected transient acl:Lcom/avos/avoscloud/AVACL;

.field private className:Ljava/lang/String;

.field protected createdAt:Ljava/lang/String;

.field private volatile fetchWhenSave:Z

.field instanceData:Ljava/util/Map;
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

.field private isDataReady:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field

.field lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected objectId:Ljava/lang/String;

.field operationQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation
.end field

.field protected requestStatistic:Z

.field private volatile transient running:Z

.field serverData:Ljava/util/Map;
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

.field tempDataForServerSaving:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation
.end field

.field protected updatedAt:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 54
    const-class v0, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/avos/avoscloud/AVObject;->UUID_LEN:I

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    .line 1351
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    .line 1354
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "code"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1355
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1356
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "className"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1357
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "keyValues"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1358
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "fetchWhenSave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1359
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "running"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1360
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "acl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1361
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "ACL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1362
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "isDataReady"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1363
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "pendingKeys"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1364
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "createdAt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1365
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "updatedAt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1366
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "objectId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1367
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "error"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2370
    sget-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    sput-object v0, Lcom/avos/avoscloud/AVObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->requestStatistic:Z

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    .line 104
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->init()V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 2328
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 2329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 2330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    .line 2331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    .line 2332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 2333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2334
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2335
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2336
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2338
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2339
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2340
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2343
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    .line 2344
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 340
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 341
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 343
    return-void
.end method

.method private static _saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1578
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1579
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1580
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 1581
    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject;->checkCircleReference()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1582
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->circleException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1651
    :cond_1
    :goto_1
    return-void

    .line 1585
    :cond_2
    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject;->processOperationData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1586
    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject;->getFilesToSave()Ljava/util/List;

    move-result-object v0

    .line 1587
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1588
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1596
    :cond_3
    new-instance v5, Lcom/avos/avoscloud/AVObject$16;

    invoke-direct {v5, p1, p2}, Lcom/avos/avoscloud/AVObject$16;-><init>(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1624
    if-eqz v2, :cond_4

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1625
    new-instance v0, Lcom/avos/avoscloud/AVObject$17;

    invoke-direct {v0, p1, v1, p0, v5}, Lcom/avos/avoscloud/AVObject$17;-><init>(Ljava/util/List;Ljava/util/LinkedList;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-static {v2, p0, v0}, Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    if-eqz p2, :cond_1

    .line 1648
    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    .line 1639
    :cond_4
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 1640
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/avos/avoscloud/AVObject;->running:Z

    .line 1641
    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVObject;->buildParameterForNonSavedObject(Ljava/util/List;)V

    goto :goto_2

    .line 1643
    :cond_5
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/avos/avoscloud/AVException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private _saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1776
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1777
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;->buildParameterForNonSavedObject(Ljava/util/List;)V

    .line 1778
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1779
    return-void
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AVObject;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/AVObject;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->transferDataToServerData()V

    return-void
.end method

.method static synthetic access$502(Lcom/avos/avoscloud/AVObject;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    return p1
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/AVObject;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->rollbackDataToOperationQueue()V

    return-void
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->buildParameterForNonSavedObject(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->_saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method private addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2216
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2217
    new-instance v0, Lcom/avos/avoscloud/AVObject$23;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/avos/avoscloud/AVObject$23;-><init>(Lcom/avos/avoscloud/AVObject;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2228
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 2231
    :cond_0
    return-void
.end method

.method private buildParameterForNonSavedObject(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 2071
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2072
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->buildBatchParameterForNonSavedObject(Ljava/util/List;Ljava/util/List;)V

    .line 2073
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 2074
    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVObject;->buildParameterForNonSavedObject(Ljava/util/List;)V

    goto :goto_0

    .line 2076
    :cond_0
    return-void
.end method

.method protected static cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2399
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    :goto_0
    return-object p0

    .line 2402
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 2403
    iget-object v1, v0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2404
    iget-object v1, v0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2405
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    .line 2406
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    .line 2407
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 2408
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    move-object p0, v0

    .line 2409
    goto :goto_0
.end method

.method private checkCircleReference()Z
    .locals 1

    .prologue
    .line 2083
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;->checkCircleReference(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private checkCircleReference(Ljava/util/Map;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2090
    .line 2092
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2093
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2102
    instance-of v5, v0, Lcom/avos/avoscloud/AVObject;

    if-eqz v5, :cond_4

    .line 2103
    if-eqz v1, :cond_2

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVObject;->checkCircleReference(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    move v1, v0

    .line 2105
    goto :goto_0

    .line 2094
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2095
    const-string v0, "Found a circular dependency while saving"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    move v1, v3

    .line 2109
    :goto_2
    return v1

    :cond_1
    move v1, v2

    .line 2098
    goto :goto_2

    :cond_2
    move v0, v3

    .line 2103
    goto :goto_1

    .line 2107
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private checkKey(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 1371
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_0
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key should not start with \'_\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1375
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal key name:`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`,please use setter/getter for it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    .line 1377
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyFromJsonArray(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 3
    .parameter

    .prologue
    .line 1881
    :try_start_0
    const-class v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1882
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1883
    const-string v1, "success"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1884
    if-eqz v1, :cond_1

    .line 1885
    invoke-static {v1, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1892
    :catch_0
    move-exception v0

    .line 1893
    const-string v1, "parse jsonArray exception"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1895
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1887
    :cond_1
    :try_start_1
    const-string v1, "error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1888
    const-string v1, "code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "error"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter

    .prologue
    .line 430
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/Class;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 484
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 485
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    return-object v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    new-instance v1, Lcom/avos/avoscloud/AVException;

    const-string v2, "Create subclass instance failed."

    invoke-direct {v1, v2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 460
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V

    .line 462
    return-object v0
.end method

.method private delete(ZZLcom/avos/avoscloud/DeleteCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 663
    .line 664
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/avos/avoscloud/AVObject$4;

    invoke-direct {v4, p0, p3}, Lcom/avos/avoscloud/AVObject$4;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/DeleteCallback;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public static deleteAll(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$2;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVObject$2;-><init>()V

    invoke-static {v0, v1, p0, v2}, Lcom/avos/avoscloud/AVObject;->deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 538
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 541
    :cond_0
    return-void
.end method

.method private static deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Collection",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 558
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    :cond_0
    invoke-virtual {p3, v5, v5}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    if-eqz p1, :cond_4

    .line 563
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 564
    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    goto :goto_1

    .line 568
    :cond_4
    const/4 v1, 0x1

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v5

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 571
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 572
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid AVObject, the class name or objectId is blank."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_6
    if-nez v2, :cond_8

    .line 576
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 580
    :cond_7
    if-eqz v1, :cond_9

    .line 581
    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    :goto_3
    move v1, v0

    .line 586
    goto :goto_2

    .line 577
    :cond_8
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 578
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The objects class name must be the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_9
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_3

    .line 589
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v4, Lcom/avos/avoscloud/AVObject$3;

    invoke-direct {v4, p3}, Lcom/avos/avoscloud/AVObject$3;-><init>(Lcom/avos/avoscloud/DeleteCallback;)V

    move v2, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static deleteAllInBackground(Ljava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 553
    invoke-static {v0, v0, p0, p1}, Lcom/avos/avoscloud/AVObject;->deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 554
    return-void
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 715
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 716
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->fetch()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 718
    :cond_0
    return-object v1
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 729
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 730
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->fetchIfNeeded()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 732
    :cond_0
    return-object v1
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 745
    const/4 v1, 0x1

    new-instance v2, Lcom/avos/avoscloud/AVObject$6;

    invoke-direct {v2, v0, p1}, Lcom/avos/avoscloud/AVObject$6;-><init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V

    invoke-static {v1, p0, v2}, Lcom/avos/avoscloud/AVObject;->fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 756
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$7;

    invoke-direct {v2, v0, p1}, Lcom/avos/avoscloud/AVObject$7;-><init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V

    invoke-static {v1, p0, v2}, Lcom/avos/avoscloud/AVObject;->fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 778
    return-void
.end method

.method private static fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 782
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 783
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 784
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 785
    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 786
    :cond_1
    new-instance v4, Lcom/avos/avoscloud/AVObject$8;

    invoke-direct {v4, p2, v2, v1}, Lcom/avos/avoscloud/AVObject$8;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-direct {v0, v5, v6, v4}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    goto :goto_0

    .line 794
    :cond_2
    if-eqz p2, :cond_0

    .line 795
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    invoke-virtual {p2, v4, v1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    .line 799
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    if-eqz p2, :cond_4

    .line 800
    invoke-virtual {p2, v5, v5, v6}, Lcom/avos/avoscloud/GenericObjectCallback;->onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V

    .line 802
    :cond_4
    return-void
.end method

.method private fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 880
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    if-eqz p3, :cond_0

    .line 882
    const/16 v0, 0x68

    const-string v1, "Missing objectId"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 884
    invoke-virtual {p3, v6, v0}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 889
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 890
    const-string v0, "include"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;

    invoke-direct {v5, p0, p3, v6}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method private findArray(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 2153
    const/4 v1, 0x0

    .line 2155
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2156
    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 2165
    :cond_0
    :goto_0
    return-object v0

    .line 2159
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2160
    :try_start_2
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 2161
    goto :goto_0

    .line 2162
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 2163
    :goto_1
    sget-object v2, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string v3, "find array failed."

    invoke-static {v2, v3, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 2162
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method private getBatchParams()Ljava/util/Map;
    .locals 3

    .prologue
    .line 2062
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    if-eqz v0, :cond_0

    .line 2063
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2064
    const-string v1, "new"

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFilesToSave()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1730
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1731
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1732
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    .line 1733
    invoke-interface {v0}, Lcom/avos/avoscloud/ops/AVOp;->getValues()Ljava/lang/Object;

    move-result-object v0

    .line 1735
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/avos/avoscloud/AVObject;

    if-eqz v3, :cond_1

    .line 1736
    check-cast v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject;->getFilesToSave()Ljava/util/List;

    move-result-object v0

    .line 1737
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1738
    :cond_1
    if-eqz v0, :cond_0

    const-class v3, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1739
    check-cast v0, Lcom/avos/avoscloud/AVFile;

    .line 1740
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getObjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1741
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1745
    :cond_2
    return-object v1
.end method

.method private static getParsedList(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 171
    invoke-static {v2}, Lcom/avos/avoscloud/AVObject;->parseObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    return-object v0
.end method

.method private static getParsedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 180
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->parseObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_0
    return-object v2
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method static getSubClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method static getSubClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 298
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 300
    :cond_0
    const-class v0, Lcom/avos/avoscloud/AVRole;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    const-string v0, "_Role"

    goto :goto_0

    .line 302
    :cond_1
    const-class v0, Lcom/avos/avoscloud/AVStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-static {}, Lcom/avos/avoscloud/AVStatus;->userClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 347
    iput-boolean v2, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    .line 348
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Lcom/avos/avoscloud/AVACL;

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVACL;-><init>(Lcom/avos/avoscloud/AVACL;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    .line 351
    :cond_0
    iput-boolean v2, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    .line 352
    return-void
.end method

.method private mergeRequestQueue(Ljava/util/Map;Ljava/util/List;)V
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
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2036
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2037
    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2039
    :cond_0
    return-void
.end method

.method public static parseAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 3
    .parameter

    .prologue
    .line 441
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 443
    instance-of v1, v0, Lcom/avos/avoscloud/AVObject;

    if-eqz v1, :cond_0

    const-class v1, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    .line 446
    :cond_0
    return-object v0
.end method

.method private static parseObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 142
    if-nez p0, :cond_1

    .line 143
    const/4 p0, 0x0

    .line 163
    :cond_0
    :goto_0
    return-object p0

    .line 144
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 145
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 146
    :cond_2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 147
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getParsedList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 148
    :cond_3
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_4

    .line 149
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 150
    :cond_4
    instance-of v0, p0, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v0, :cond_5

    .line 151
    check-cast p0, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 152
    :cond_5
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 153
    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 154
    :cond_6
    instance-of v0, p0, [B

    if-eqz v0, :cond_7

    .line 155
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 156
    :cond_7
    instance-of v0, p0, Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_8

    .line 157
    check-cast p0, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_8
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_9

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 160
    :cond_9
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method private parseObjectValue(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
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
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1980
    instance-of v0, p4, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_1

    .line 1981
    check-cast p4, Lcom/avos/avoscloud/AVObject;

    .line 1982
    invoke-static {p4, p5}, Lcom/avos/avoscloud/AVUtils;->mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1983
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1984
    invoke-direct {p4}, Lcom/avos/avoscloud/AVObject;->processOperationData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1985
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1998
    :cond_0
    :goto_0
    return-void

    .line 1987
    :cond_1
    instance-of v0, p4, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v0, :cond_2

    .line 1988
    check-cast p4, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1989
    :cond_2
    instance-of v0, p4, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 1990
    check-cast p4, Ljava/util/Date;

    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1991
    :cond_3
    instance-of v0, p4, [B

    if-eqz v0, :cond_4

    .line 1992
    check-cast p4, [B

    check-cast p4, [B

    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1993
    :cond_4
    instance-of v0, p4, Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_5

    .line 1994
    check-cast p4, Lcom/avos/avoscloud/AVFile;

    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1996
    :cond_5
    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parseOperation(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            "Ljava/util/List;",
            "Ljava/util/List;",
            "Ljava/util/List;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2003
    invoke-interface {p3}, Lcom/avos/avoscloud/ops/AVOp;->getValues()Ljava/lang/Object;

    move-result-object v4

    .line 2005
    instance-of v0, p3, Lcom/avos/avoscloud/ops/CollectionOp;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/avos/avoscloud/ops/IncrementOp;

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/avos/avoscloud/ops/DeleteOp;

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p4

    move-object v5, p2

    .line 2006
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVObject;->parseObjectValue(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2031
    :cond_0
    :goto_0
    return-object p1

    .line 2007
    :cond_1
    instance-of v0, p3, Lcom/avos/avoscloud/ops/IncrementOp;

    if-nez v0, :cond_2

    instance-of v0, p3, Lcom/avos/avoscloud/ops/AddOp;

    if-nez v0, :cond_2

    instance-of v0, p3, Lcom/avos/avoscloud/ops/RemoveOp;

    if-nez v0, :cond_2

    instance-of v0, p3, Lcom/avos/avoscloud/ops/AddRelationOp;

    if-nez v0, :cond_2

    instance-of v0, p3, Lcom/avos/avoscloud/ops/RemoveRelationOp;

    if-nez v0, :cond_2

    instance-of v0, p3, Lcom/avos/avoscloud/ops/AddUniqueOp;

    if-nez v0, :cond_2

    instance-of v0, p3, Lcom/avos/avoscloud/ops/DeleteOp;

    if-eqz v0, :cond_3

    .line 2010
    :cond_2
    invoke-interface {p3}, Lcom/avos/avoscloud/ops/AVOp;->encodeOp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 2011
    :cond_3
    instance-of v0, p3, Lcom/avos/avoscloud/ops/CompoundOp;

    if-eqz v0, :cond_0

    .line 2013
    check-cast p3, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-virtual {p3}, Lcom/avos/avoscloud/ops/CompoundOp;->getValues()Ljava/util/List;

    move-result-object v8

    .line 2014
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2015
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/ops/AVOp;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2016
    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/AVObject;->parseOperation(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    .line 2019
    :cond_4
    const/4 v0, 0x1

    move v7, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 2020
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/ops/AVOp;

    .line 2021
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2022
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    .line 2024
    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/AVObject;->parseOperation(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    .line 2027
    const/4 v0, 0x1

    invoke-direct {p0, v1, v4, v0}, Lcom/avos/avoscloud/AVObject;->wrapperRequestBody(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/avos/avoscloud/AVObject;->mergeRequestQueue(Ljava/util/Map;Ljava/util/List;)V

    .line 2019
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1
.end method

.method private processOperationData()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1750
    .line 1752
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1753
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1754
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1755
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1756
    if-eqz v3, :cond_0

    instance-of v1, v3, Lcom/avos/avoscloud/AVObject;

    if-eqz v1, :cond_0

    .line 1757
    move-object v0, v3

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    move-object v1, v0

    invoke-direct {v1}, Lcom/avos/avoscloud/AVObject;->processOperationData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    invoke-virtual {p0, v2, v3}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1767
    :catch_0
    move-exception v1

    .line 1768
    :try_start_1
    sget-object v2, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1770
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v1, v5

    .line 1772
    :goto_1
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    return v5

    .line 1762
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1763
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1764
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1766
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_5

    move v1, v4

    .line 1770
    :goto_2
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_5
    move v1, v5

    .line 1766
    goto :goto_2

    .line 1770
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1465
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1466
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1467
    const-string v0, "include"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;

    const/4 v3, 0x0

    invoke-direct {v5, p0, p3, v3}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1471
    return-void
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 316
    const-class v0, Lcom/avos/avoscloud/AVClassName;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVClassName;

    .line 317
    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The class is not annotated by @AVClassName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    invoke-interface {v0}, Lcom/avos/avoscloud/AVClassName;->value()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 322
    sget-object v1, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v1, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method private removeObjectForKey(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2234
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    new-instance v0, Lcom/avos/avoscloud/AVObject$24;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVObject$24;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 2241
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 2243
    :cond_0
    return-void
.end method

.method private rollbackDataToOperationQueue()V
    .locals 5

    .prologue
    .line 1856
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1858
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1859
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/ops/AVOp;

    .line 1860
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/ops/AVOp;

    .line 1861
    if-nez v2, :cond_0

    .line 1866
    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1872
    :catch_0
    move-exception v0

    .line 1873
    :try_start_1
    sget-object v1, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1875
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1877
    :goto_2
    return-void

    .line 1864
    :cond_0
    :try_start_2
    invoke-interface {v2, v1}, Lcom/avos/avoscloud/ops/AVOp;->merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v1

    goto :goto_1

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1869
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1870
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1875
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1537
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$15;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVObject$15;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1550
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1553
    :cond_0
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1562
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1563
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1573
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1574
    return-void
.end method

.method public static saveFileBeforeSave(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;Z",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2247
    if-eqz p1, :cond_3

    .line 2248
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVFile;

    .line 2249
    if-eqz v0, :cond_0

    .line 2250
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->save()V

    goto :goto_0

    .line 2253
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 2275
    :cond_2
    return-void

    .line 2255
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->collectionNonNullCount(Ljava/util/Collection;)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2256
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2257
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVFile;

    .line 2258
    if-eqz v0, :cond_4

    .line 2259
    new-instance v4, Lcom/avos/avoscloud/AVObject$25;

    invoke-direct {v4, v2, p2, v1}, Lcom/avos/avoscloud/AVObject$25;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/avos/avoscloud/SaveCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v0, v4}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_1
.end method

.method private saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2131
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 2132
    return-void
.end method

.method private saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1694
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    if-eqz v0, :cond_1

    .line 1695
    if-eqz p3, :cond_0

    .line 1696
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/4 v1, -0x1

    const-string v2, "already has one request sending"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1701
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->processOperationData()Z

    move-result v0

    .line 1702
    if-nez v0, :cond_2

    .line 1703
    if-eqz p3, :cond_0

    .line 1704
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1708
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    .line 1710
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->getFilesToSave()Ljava/util/List;

    move-result-object v0

    .line 1711
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1712
    new-instance v1, Lcom/avos/avoscloud/AVObject$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject$18;-><init>(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V

    invoke-static {v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    if-eqz p3, :cond_0

    .line 1724
    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1720
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->_saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V
    :try_end_1
    .catch Lcom/avos/avoscloud/AVException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private saveObjectToAVOSCloud(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;ZZ",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1791
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1792
    const-string v1, "body"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1793
    const-string v3, "__internalId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget v3, Lcom/avos/avoscloud/AVObject;->UUID_LEN:I

    if-ne v1, v3, :cond_0

    .line 1794
    const-string v1, "new"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1799
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVObject$19;

    invoke-direct {v5, p0, p4}, Lcom/avos/avoscloud/AVObject$19;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    return-void
.end method

.method private transferDataToServerData()V
    .locals 4

    .prologue
    .line 1839
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1840
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1841
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1842
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/ops/AVOp;

    invoke-interface {v1, v3}, Lcom/avos/avoscloud/ops/AVOp;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1843
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1847
    :catch_0
    move-exception v0

    .line 1848
    :try_start_1
    sget-object v1, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1852
    :goto_1
    return-void

    .line 1845
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1850
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private wrapperRequestBody(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2044
    const-string v0, "__children"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2049
    :cond_0
    const-string v0, "__internalId"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    const-string v0, "PUT"

    .line 2051
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->alwaysUsePost()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-nez p3, :cond_3

    const/4 v1, 0x1

    .line 2052
    :goto_0
    if-eqz v1, :cond_2

    .line 2053
    const-string v0, "POST"

    .line 2055
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0, v1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;Z)Ljava/lang/String;

    move-result-object v1

    .line 2058
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->getBatchParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 2051
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 362
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 372
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 373
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 396
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 397
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method addRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2190
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2191
    new-instance v0, Lcom/avos/avoscloud/AVObject$21;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVObject$21;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 2198
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 2200
    :cond_0
    return-void
.end method

.method addRelationFromServer(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2177
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2178
    new-instance v0, Lcom/avos/avoscloud/AVObject$20;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVObject$20;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 2185
    invoke-virtual {v0, p1, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 2187
    :cond_0
    return-void
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 410
    return-void
.end method

.method protected alwaysSaveAllKeyValues()Z
    .locals 1

    .prologue
    .line 1948
    const/4 v0, 0x0

    return v0
.end method

.method protected alwaysUsePost()Z
    .locals 1

    .prologue
    .line 1940
    const/4 v0, 0x0

    return v0
.end method

.method protected buildBatchParameterForNonSavedObject(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1955
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->alwaysUsePost()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1956
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1957
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1958
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1959
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1960
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1961
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/ops/AVOp;

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    .line 1962
    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/AVObject;->parseOperation(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    goto :goto_0

    .line 1964
    :cond_1
    invoke-direct {p0, v1, v4, v8}, Lcom/avos/avoscloud/AVObject;->wrapperRequestBody(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVObject;->mergeRequestQueue(Ljava/util/Map;Ljava/util/List;)V

    .line 1976
    :cond_2
    :goto_1
    return-void

    .line 1966
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1967
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1968
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1970
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1971
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    .line 1972
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVObject;->parseObjectValue(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1974
    :cond_4
    invoke-direct {p0, v2, v3, v8}, Lcom/avos/avoscloud/AVObject;->wrapperRequestBody(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVObject;->mergeRequestQueue(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected copyFromJson(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1900
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1901
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    :goto_0
    return-void

    .line 1902
    :catch_0
    move-exception v0

    .line 1903
    const-string v1, "AVObject parse error"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected copyFromMap(Ljava/util/Map;)V
    .locals 3
    .parameter

    .prologue
    .line 1914
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1915
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1916
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1917
    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1922
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1923
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1924
    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1928
    instance-of v2, v0, Lcom/avos/avoscloud/AVObject;

    if-eqz v2, :cond_2

    .line 1929
    check-cast v0, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1932
    :catch_0
    move-exception v0

    .line 1933
    :try_start_1
    sget-object v1, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1935
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1937
    :goto_1
    return-void

    .line 1935
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public delete()V
    .locals 3

    .prologue
    .line 499
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$1;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVObject$1;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/DeleteCallback;)V

    .line 512
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 515
    :cond_0
    return-void
.end method

.method public deleteEventually()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 623
    return-void
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 641
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/DeleteCallback;)V

    .line 642
    return-void
.end method

.method public deleteInBackground()V
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 650
    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 659
    invoke-direct {p0, v0, v0, p1}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/DeleteCallback;)V

    .line 660
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2312
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2292
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2307
    :cond_0
    :goto_0
    return v0

    .line 2295
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 2296
    :cond_2
    if-eqz p1, :cond_0

    .line 2297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2298
    check-cast p1, Lcom/avos/avoscloud/AVObject;

    .line 2299
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 2300
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2302
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 2303
    iget-object v2, p1, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 2307
    goto :goto_0

    .line 2301
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 2304
    :cond_6
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public fetch()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .parameter

    .prologue
    .line 687
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$5;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$5;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 700
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 703
    :cond_0
    return-object p0
.end method

.method public fetchIfNeeded()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .parameter

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$9;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$9;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 824
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 827
    :cond_1
    return-object p0
.end method

.method public fetchIfNeededInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 838
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 839
    return-void
.end method

.method public fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    if-eqz p2, :cond_0

    .line 854
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 866
    return-void
.end method

.method public fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 877
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 904
    const-string v0, "createdAt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    .line 919
    :goto_0
    return-object v0

    .line 907
    :cond_0
    const-string v0, "updatedAt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 910
    :cond_1
    const/4 v0, 0x0

    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 913
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 914
    :catch_0
    move-exception v1

    .line 915
    :try_start_1
    sget-object v2, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getAVFile(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVFile;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1138
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVFile;

    return-object v0
.end method

.method public getAVGeoPoint(Ljava/lang/String;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 1
    .parameter

    .prologue
    .line 1148
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVGeoPoint;

    return-object v0
.end method

.method public getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1161
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getAVObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1166
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 1167
    if-nez v0, :cond_1

    .line 1168
    const/4 v0, 0x0

    .line 1173
    :cond_0
    :goto_0
    return-object v0

    .line 1170
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1173
    invoke-static {p0, p2}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    goto :goto_0
.end method

.method public getAVUser(Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1188
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method public getAVUser(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    .line 1202
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p2}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 936
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 937
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .parameter

    .prologue
    .line 988
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 989
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 990
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1001
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1002
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1012
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1013
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1026
    :goto_0
    return-object v0

    .line 1014
    :cond_0
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/json/JSONArray;

    goto :goto_0

    .line 1015
    :cond_1
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_2

    .line 1016
    new-instance v1, Lorg/json/JSONArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 1017
    goto :goto_0

    .line 1019
    :cond_2
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 1020
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1021
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 1022
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1021
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1024
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1026
    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1037
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 1038
    check-cast v0, Lorg/json/JSONObject;

    .line 1047
    :goto_0
    return-object v0

    .line 1040
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1043
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid json string"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1057
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1069
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1070
    const/4 v0, 0x0

    .line 1071
    if-eqz v2, :cond_0

    .line 1072
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1074
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 1075
    invoke-static {v0, p2}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 1076
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    const-string v2, "ClassCast Exception"

    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 1082
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 1080
    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 1092
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1093
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1094
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 1104
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .parameter

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1115
    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method getOperationQueue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    return-object v0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVRelation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1213
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1214
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1215
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/avos/avoscloud/AVRelation;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1216
    check-cast v0, Lcom/avos/avoscloud/AVRelation;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVRelation;->setParent(Lcom/avos/avoscloud/AVObject;)V

    .line 1217
    check-cast v1, Lcom/avos/avoscloud/AVRelation;

    .line 1224
    :goto_0
    return-object v1

    .line 1219
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVRelation;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/AVRelation;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1224
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getServerData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1234
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1235
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1236
    check-cast v0, Ljava/lang/String;

    .line 1238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1259
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSameId(Lcom/avos/avoscloud/AVObject;)Z
    .locals 2
    .parameter

    .prologue
    .line 1265
    iget-object v0, p1, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2280
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2287
    :goto_0
    return v0

    .line 2285
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1f

    .line 2286
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 2287
    goto :goto_0

    .line 2285
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 2286
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method protected headerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1688
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->userHeaderMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1274
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1275
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1323
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    new-instance v0, Lcom/avos/avoscloud/AVObject$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$10;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/Number;)V

    .line 1330
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 1332
    :cond_0
    return-void
.end method

.method protected internalClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2169
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDataReady()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    return v0
.end method

.method public isFetchWhenSave()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected onDataSynchronized()V
    .locals 0

    .prologue
    .line 1681
    return-void
.end method

.method protected onSaveFailure()V
    .locals 0

    .prologue
    .line 1685
    return-void
.end method

.method protected onSaveSuccess()V
    .locals 0

    .prologue
    .line 1677
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1389
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1390
    return-void
.end method

.method protected put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1393
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    new-instance v0, Lcom/avos/avoscloud/AVObject$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$11;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1400
    invoke-virtual {v0, p1, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 1402
    :cond_0
    return-void
.end method

.method protected rebuildInstanceData()V
    .locals 4

    .prologue
    .line 2348
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2349
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2350
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2351
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    .line 2353
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2354
    invoke-interface {v0, v3}, Lcom/avos/avoscloud/ops/AVOp;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2356
    if-nez v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2363
    :catch_0
    move-exception v0

    .line 2364
    :try_start_1
    sget-object v1, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2366
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2368
    :goto_1
    return-void

    .line 2359
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2366
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 1411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->refresh(Ljava/lang/String;)V

    .line 1412
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1423
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$12;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$12;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1436
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1439
    :cond_0
    return-void
.end method

.method public refreshInBackground(Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1448
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1449
    return-void
.end method

.method public refreshInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1460
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1461
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1479
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->removeObjectForKey(Ljava/lang/String;)V

    .line 1480
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1492
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    new-instance v0, Lcom/avos/avoscloud/AVObject$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$13;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1499
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 1501
    :cond_0
    return-void
.end method

.method removeRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2203
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2204
    new-instance v0, Lcom/avos/avoscloud/AVObject$22;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVObject$22;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 2211
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 2213
    :cond_0
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 1511
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$14;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVObject$14;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1524
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1527
    :cond_0
    return-void
.end method

.method public saveEventually()V
    .locals 1

    .prologue
    .line 1659
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->saveEventually(Lcom/avos/avoscloud/SaveCallback;)V

    .line 1660
    return-void
.end method

.method public saveEventually(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 1671
    invoke-static {p0}, Lcom/avos/avoscloud/PaasClient;->registerEventuallyObject(Lcom/avos/avoscloud/AVObject;)V

    .line 1672
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V

    .line 1673
    return-void
.end method

.method public saveInBackground()V
    .locals 1

    .prologue
    .line 2117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 2118
    return-void
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 2127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V

    .line 2128
    return-void
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0
    .parameter

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    .line 2141
    return-void
.end method

.method setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 469
    return-void
.end method

.method setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    .line 260
    return-void
.end method

.method setDataReady(Z)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    .line 242
    return-void
.end method

.method public setFetchWhenSave(Z)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    .line 277
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2149
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 2150
    return-void
.end method

.method setOperationQueue(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    .line 224
    return-void
.end method

.method setServerData(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    .line 206
    return-void
.end method

.method setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    .line 251
    return-void
.end method

.method setUuid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    .line 269
    return-void
.end method

.method protected shouldThrowException(Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2173
    const/4 v0, 0x1

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->parseObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_0
    const-string v0, "objectId"

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "createdAt"

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "updatedAt"

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "className"

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    sget-object v0, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2317
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2318
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2321
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    new-instance v1, Lcom/avos/avoscloud/ObjectValueFilter;

    invoke-direct {v1}, Lcom/avos/avoscloud/ObjectValueFilter;-><init>()V

    new-array v2, v6, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v2, v4

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2323
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    new-array v1, v6, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2325
    return-void
.end method
