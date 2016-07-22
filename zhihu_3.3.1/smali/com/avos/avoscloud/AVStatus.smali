.class public Lcom/avos/avoscloud/AVStatus;
.super Lcom/avos/avoscloud/AVObject;
.source "AVStatus.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    ignores = {
        "acl",
        "updatedAt",
        "uuid"
    }
.end annotation

.annotation runtime Lcom/avos/avoscloud/AVClassName;
    value = "_Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;
    }
.end annotation


# static fields
.field private static final AV_CLASS_NAME:Ljava/lang/String; = "_FeedStatus"

.field public static final transient CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_COUNT:I = 0x0

.field public static final IMAGE_TAG:Ljava/lang/String; = "image"

.field public static final INBOX_PRIVATE:Ljava/lang/String; = "private"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INBOX_TIMELINE:Ljava/lang/String; = "default"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_TAG:Ljava/lang/String; = "message"

.field public static final STATUS_END_POINT:Ljava/lang/String; = "statuses"

.field private static final UNREAD_TAG:Ljava/lang/String; = "unread"

.field static ignoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createdAt:Ljava/lang/String;

.field private final dataMap:Ljava/util/Map;
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

.field private inboxType:Ljava/lang/String;

.field private messageId:J

.field private query:Lcom/avos/avoscloud/AVQuery;

.field private source:Lcom/avos/avoscloud/AVObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x64

    sput v0, Lcom/avos/avoscloud/AVStatus;->DEFAULT_COUNT:I

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "objectId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "updatedAt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "createdAt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "inboxType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "messageId"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVStatus;->ignoreList:Ljava/util/List;

    .line 61
    const-class v0, Lcom/avos/avoscloud/AVStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statuses"

    const-string v2, "_Status"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "_Status"

    const-string v1, "statuses"

    const-string v2, "_Status"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-class v0, Lcom/avos/avoscloud/AVStatus;

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->registerSubclass(Ljava/lang/Class;)V

    .line 1503
    new-instance v0, Lcom/avos/avoscloud/AVStatus$9;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus$9;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    .line 55
    iput-object v2, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 56
    iput-object v2, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1491
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    .line 55
    iput-object v2, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 56
    iput-object v2, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    .line 1492
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 1493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    .line 1494
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    .line 1496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1497
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1500
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 1501
    return-void
.end method

.method private static checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    if-eqz p0, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static checkStatusId(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 675
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    if-eqz p1, :cond_0

    .line 677
    const/4 v0, 0x0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->invalidObjectIdException()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/StatusCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 679
    :cond_0
    const/4 v0, 0x0

    .line 681
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVStatus;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 72
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatus;->setImageUrl(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVStatus;->setMessage(Ljava/lang/String;)V

    .line 74
    return-object v0
.end method

.method public static createStatusWithData(Ljava/util/Map;)Lcom/avos/avoscloud/AVStatus;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVStatus;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 79
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatus;->setData(Ljava/util/Map;)V

    .line 80
    return-object v0
.end method

.method private static currentUserBody()Ljava/util/Map;
    .locals 3
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
    .line 862
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 863
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    .line 864
    const-string v2, "user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    return-object v0
.end method

.method public static deleteInboxStatus(JLjava/lang/String;Lcom/avos/avoscloud/AVUser;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    const/4 v1, 0x1

    new-instance v6, Lcom/avos/avoscloud/AVStatus$2;

    invoke-direct {v6}, Lcom/avos/avoscloud/AVStatus$2;-><init>()V

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/avos/avoscloud/AVStatus;->deleteInboxStatus(ZJLjava/lang/String;Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 311
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 314
    :cond_0
    return-void
.end method

.method private static deleteInboxStatus(ZJLjava/lang/String;Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 331
    .line 332
    if-eqz p4, :cond_1

    .line 333
    invoke-virtual {p4}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 345
    const-string v2, "messageId"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v2, "inboxType"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v2, "owner"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, "subscribe/statuses/inbox"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->getEncodeUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v3, Lcom/avos/avoscloud/AVStatus$3;

    invoke-direct {v3, p5}, Lcom/avos/avoscloud/AVStatus$3;-><init>(Lcom/avos/avoscloud/DeleteCallback;)V

    move v2, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-eqz p5, :cond_0

    .line 338
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0xd3

    const-string v2, "Owner can\'t be null"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, v0}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public static deleteInboxStatusInBackground(JLjava/lang/String;Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    const/4 v1, 0x0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/avos/avoscloud/AVStatus;->deleteInboxStatus(ZJLjava/lang/String;Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 327
    return-void
.end method

.method public static deleteStatusWithIDInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVStatus;->deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 252
    return-void
.end method

.method private static deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 257
    invoke-static {v5}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    if-eqz p2, :cond_0

    .line 259
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    if-eqz p2, :cond_0

    .line 266
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->invalidObjectIdException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 270
    :cond_2
    const-string v0, "statuses/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v3, Lcom/avos/avoscloud/AVStatus$1;

    invoke-direct {v3, p2}, Lcom/avos/avoscloud/AVStatus$1;-><init>(Lcom/avos/avoscloud/DeleteCallback;)V

    move v2, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInboxPrivteStatuses(JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->PRIVATE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v0, p0

    move-wide v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVStatus;->getInboxStatusesWithInboxType(JJLjava/lang/String;Lcom/avos/avoscloud/StatusListCallback;)V

    .line 672
    return-void
.end method

.method public static getInboxStatusesInBackground(JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v0, p0

    move-wide v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVStatus;->getInboxStatusesWithInboxType(JJLjava/lang/String;Lcom/avos/avoscloud/StatusListCallback;)V

    .line 622
    return-void
.end method

.method public static getInboxStatusesWithInboxType(JJLjava/lang/String;Lcom/avos/avoscloud/StatusListCallback;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    invoke-static/range {p5 .. p5}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 633
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 631
    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-wide v4, p0

    move-wide/from16 v6, p2

    move-object/from16 v10, p4

    invoke-static/range {v3 .. v13}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v2

    .line 632
    const-string v3, "subscribe/statuses"

    move-object/from16 v0, p5

    invoke-static {v3, v2, v0}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    goto :goto_0
.end method

.method public static getInboxUnreadStatusesCountInBackgroud(Lcom/avos/avoscloud/CountCallback;)V
    .locals 6
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 651
    sget-object v2, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v2, v0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVStatus;->getInboxUnreadStatusesCountWithInboxTypeInBackgroud(JJLjava/lang/String;Lcom/avos/avoscloud/CountCallback;)V

    .line 653
    return-void
.end method

.method public static getInboxUnreadStatusesCountWithInboxTypeInBackgroud(JJLjava/lang/String;Lcom/avos/avoscloud/CountCallback;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 658
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    if-eqz p5, :cond_0

    .line 660
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 665
    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-wide v4, p0

    move-wide/from16 v6, p2

    move-object/from16 v10, p4

    invoke-static/range {v3 .. v13}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v2

    .line 666
    const-string v3, "subscribe/statuses/count"

    move-object/from16 v0, p5

    invoke-static {v3, v2, v0}, Lcom/avos/avoscloud/AVStatus;->getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V

    goto :goto_0
.end method

.method static getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/CountCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 594
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v2, p1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVStatus$5;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVStatus$5;-><init>(Lcom/avos/avoscloud/CountCallback;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 611
    return-void
.end method

.method static getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/StatusListCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 563
    .line 564
    if-eqz p1, :cond_0

    .line 565
    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v2, p1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    .line 568
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVStatus$4;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVStatus$4;-><init>(Lcom/avos/avoscloud/StatusListCallback;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 585
    return-void

    :cond_0
    move-object v2, v4

    goto :goto_0
.end method

.method static getStatusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 482
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 484
    :try_start_0
    const-string v2, "owner"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 486
    const-string v0, "sinceId"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    .line 489
    const-string v0, "limit"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-lez v0, :cond_2

    .line 492
    const-string v0, "maxId"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_2
    invoke-static {p7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 495
    const-string v0, "inboxType"

    invoke-interface {v1, v0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_3
    if-eqz p8, :cond_4

    .line 498
    const-string v0, "where"

    invoke-static {p8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_4
    if-eqz p9, :cond_5

    .line 501
    const-string v0, "include"

    const-string v2, "source"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_5
    if-eqz p10, :cond_6

    .line 504
    const-string v0, "count"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_6
    :goto_0
    return-object v1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getStatusWithIdInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 685
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVStatus;->checkStatusId(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    .line 692
    const-string v0, "statuses/%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p0, v4, v11

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide v4, v2

    move-wide v6, v2

    move-object v9, v8

    .line 693
    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v1

    .line 694
    new-instance v6, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v6, v1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    .line 695
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v4

    new-instance v9, Lcom/avos/avoscloud/AVStatus$6;

    invoke-direct {v9, p1}, Lcom/avos/avoscloud/AVStatus$6;-><init>(Lcom/avos/avoscloud/StatusCallback;)V

    move-object v5, v0

    move v7, v11

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public static getStatuses(JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    invoke-static/range {p4 .. p4}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 381
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-wide v4, p0

    move-wide/from16 v6, p2

    invoke-static/range {v3 .. v13}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v2

    .line 382
    const-string v3, "statuses"

    move-object/from16 v0, p4

    invoke-static {v3, v2, v0}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    goto :goto_0
.end method

.method public static getStatusesFromCurrentUserWithType(Ljava/lang/String;JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    invoke-static {p5}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVStatus;->sourceQueryMap(Ljava/lang/String;JJ)Ljava/util/Map;

    move-result-object v0

    .line 421
    const-string v1, "statuses"

    invoke-static {v1, v0, p5}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    goto :goto_0
.end method

.method public static getStatusesFromUser(Ljava/lang/String;JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 435
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    if-eqz p5, :cond_0

    .line 437
    const/4 v0, 0x0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->invalidObjectIdException()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/avos/avoscloud/StatusListCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVStatus;->sourceQueryMap(Ljava/lang/String;JJ)Ljava/util/Map;

    move-result-object v0

    .line 442
    const-string v1, "statuses"

    invoke-static {v1, v0, p5}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    goto :goto_0
.end method

.method public static getUnreadStatusesCountInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CountCallback;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    .line 638
    invoke-static {v9}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    if-eqz p1, :cond_0

    .line 640
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    move-wide v4, v2

    move-wide v6, v2

    move-object v8, p0

    move v11, v10

    .line 645
    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->getStatusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    .line 646
    const-string v1, "subscribe/statuses/count"

    invoke-static {v1, v0, p1}, Lcom/avos/avoscloud/AVStatus;->getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V

    goto :goto_0
.end method

.method public static inboxQuery(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Lcom/avos/avoscloud/AVStatusQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 891
    new-instance v0, Lcom/avos/avoscloud/AVStatusQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatusQuery;-><init>()V

    .line 892
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVStatusQuery;->setInboxType(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatusQuery;->setOwner(Lcom/avos/avoscloud/AVUser;)V

    .line 894
    const-string v1, "subscribe/statuses"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVStatusQuery;->setExternalQueryPath(Ljava/lang/String;)V

    .line 895
    return-object v0
.end method

.method static postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVStatus;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 717
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 718
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "statuses"

    new-instance v5, Lcom/avos/avoscloud/AVStatus$7;

    invoke-direct {v5, p0, p2}, Lcom/avos/avoscloud/AVStatus$7;-><init>(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatus;->getObjectId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method static processStatus(Ljava/lang/String;Lcom/avos/avoscloud/AVStatus;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 530
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVStatus;->processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V

    .line 531
    return-void
.end method

.method static processStatusCount(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 588
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 589
    const-string v1, "unread"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 536
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    .line 537
    const-string v0, "objectId"

    iget-object v1, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    .line 538
    const-string v0, "messageId"

    iget-wide v2, p1, Lcom/avos/avoscloud/AVStatus;->messageId:J

    invoke-static {p0, v0, v2, v3}, Lcom/avos/avoscloud/AVUtils;->getJSONInteger(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/avos/avoscloud/AVStatus;->messageId:J

    .line 539
    const-string v0, "inboxType"

    iget-object v1, p1, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 540
    const-string v0, "createdAt"

    iget-object v1, p1, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    .line 542
    const-string v0, "image"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVStatus;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVStatus;->setImageUrl(Ljava/lang/String;)V

    .line 543
    const-string v0, "message"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVStatus;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVStatus;->setMessage(Ljava/lang/String;)V

    .line 546
    const-string v0, "source"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 549
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    iput-object v0, p1, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 555
    sget-object v2, Lcom/avos/avoscloud/AVStatus;->ignoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 556
    iget-object v2, p1, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 559
    :cond_2
    return-void
.end method

.method static processStatusResultList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 525
    :cond_0
    return-object v0

    .line 517
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 518
    const-string v1, "results"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 519
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 520
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 521
    new-instance v3, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v3}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 522
    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVStatus;->processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V

    .line 523
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static sendPrivateStatusInBackgroud(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 847
    invoke-static {p2}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 852
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 853
    const-string v1, "className"

    const-string v2, "_User"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 855
    const-string v2, "objectId"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string v2, "where"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v1, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->PRIVATE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/avos/avoscloud/AVStatus;->statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 858
    invoke-static {p0, v0, p2}, Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method public static sendStatusToFollowersInBackgroud(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 822
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 827
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 828
    const-string v0, "className"

    const-string v2, "_Follower"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-string v0, "keys"

    const-string v2, "follower"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v0, "where"

    invoke-static {}, Lcom/avos/avoscloud/AVStatus;->currentUserBody()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVStatus;->statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 835
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    goto :goto_1
.end method

.method static sourceQueryMap(Ljava/lang/String;JJ)Ljava/util/Map;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 388
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 390
    :try_start_0
    const-string v2, "source"

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v2, "where"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v0, "include"

    const-string v2, "source"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    .line 394
    const-string v0, "skip"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_0
    cmp-long v0, p3, v4

    if-lez v0, :cond_1

    .line 397
    const-string v0, "count"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_1
    :goto_0
    return-object v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVStatus;",
            "Ljava/lang/String;",
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
    .line 739
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 740
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 741
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 742
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    if-eqz v2, :cond_0

    .line 743
    const-string v2, "source"

    iget-object v3, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :goto_0
    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string v0, "inboxType"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v0, "query"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    return-object v1

    .line 745
    :cond_0
    const-string v2, "source"

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static statusQuery(Lcom/avos/avoscloud/AVUser;)Lcom/avos/avoscloud/AVStatusQuery;
    .locals 2
    .parameter

    .prologue
    .line 876
    new-instance v0, Lcom/avos/avoscloud/AVStatusQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatusQuery;-><init>()V

    .line 877
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVStatusQuery;->setSelfQuery(Z)V

    .line 878
    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVStatusQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 879
    const-string v1, "statuses"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVStatusQuery;->setExternalQueryPath(Ljava/lang/String;)V

    .line 880
    return-object v0
.end method

.method static statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 448
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 451
    :try_start_0
    const-string v2, "owner"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 453
    const-string v0, "skip"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    .line 456
    const-string v0, "limit"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-lez v0, :cond_2

    .line 459
    const-string v0, "maxId"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_2
    invoke-static {p7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    const-string v0, "inboxType"

    invoke-interface {v1, v0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_3
    if-eqz p8, :cond_4

    .line 465
    const-string v0, "where"

    invoke-static {p8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_4
    if-eqz p9, :cond_5

    .line 468
    const-string v0, "include"

    const-string v2, "source"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_5
    if-eqz p10, :cond_6

    .line 471
    const-string v0, "count"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_6
    :goto_0
    return-object v1

    .line 473
    :catch_0
    move-exception v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static userClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/avos/avoscloud/AVStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 904
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 913
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 922
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 931
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 940
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()V
    .locals 3

    .prologue
    .line 945
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatus;->getObjectId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/AVStatus$8;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVStatus$8;-><init>(Lcom/avos/avoscloud/AVStatus;)V

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVStatus;->deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 959
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 962
    :cond_0
    return-void
.end method

.method public deleteEventually()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 979
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 970
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deleteInBackground()V
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVStatus;->deleteStatusInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 985
    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1103
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 1104
    return-void
.end method

.method public deleteStatusInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVStatus;->deleteStatusWithIDInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 242
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1478
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 993
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return v0

    .line 996
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 997
    :cond_2
    if-eqz p1, :cond_0

    .line 998
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 999
    check-cast p1, Lcom/avos/avoscloud/AVStatus;

    .line 1000
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1001
    iget-object v2, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 1003
    goto :goto_0

    .line 1002
    :cond_4
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public fetch()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1012
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetchIfNeeded()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1030
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1039
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1048
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAVGeoPoint(Ljava/lang/String;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1273
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVStatus;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    return-object v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/util/Map;
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
    .line 170
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "image"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    check-cast v0, Ljava/lang/String;

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInboxType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Ljava/lang/String;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    return-wide v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSource()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasSameId(Lcom/avos/avoscloud/AVObject;)Z
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1353
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isFetchWhenSave()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1074
    const/4 v0, 0x0

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method myQueryParameters(Lcom/avos/avoscloud/AVQuery;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 758
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getWhere()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 759
    const-string v1, "where"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getWhere()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getLimit()I

    move-result v1

    if-lez v1, :cond_1

    .line 762
    const-string v1, "limit"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getLimit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSkip()I

    move-result v1

    if-lez v1, :cond_2

    .line 765
    const-string v1, "skip"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSkip()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 768
    const-string v1, "order"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getInclude()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getInclude()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 771
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getInclude()Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 772
    const-string v2, "include"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSelectedKeys()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSelectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 775
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSelectedKeys()Ljava/util/Set;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    const-string v2, "keys"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :cond_5
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method protected put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    const-string v0, "inboxType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 190
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string v0, "messageId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 194
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    goto :goto_0

    .line 196
    :cond_2
    const-string v0, "source"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    instance-of v0, p2, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_0

    .line 198
    check-cast p2, Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public refresh()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1373
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refreshInBackground(Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1393
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public save()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveEventually()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveEventually(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveInBackground()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1453
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 793
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    if-nez v0, :cond_1

    .line 798
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVStatus;->sendStatusToFollowersInBackgroud(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 802
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 803
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVStatus;->myQueryParameters(Lcom/avos/avoscloud/AVQuery;)Ljava/util/Map;

    move-result-object v0

    .line 804
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 805
    const-string v0, "className"

    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVStatus;->statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 811
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    goto :goto_1
.end method

.method public sendInBackgroundWithBlock(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVStatus;->sendInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 790
    return-void
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1473
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setData(Ljava/util/Map;)V
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
    .line 166
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 167
    return-void
.end method

.method public setFetchWhenSave(Z)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1084
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "image"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    return-void
.end method

.method public setInboxType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    return-void
.end method

.method protected setMessageId(J)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    .line 227
    return-void
.end method

.method public setQuery(Lcom/avos/avoscloud/AVQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    .line 148
    return-void
.end method

.method public setSource(Lcom/avos/avoscloud/AVObject;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 138
    return-void
.end method

.method public toObject()Lcom/avos/avoscloud/AVObject;
    .locals 2

    .prologue
    .line 988
    const-string v0, "_Status"

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVStatus [, objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1483
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    new-instance v1, Lcom/avos/avoscloud/ObjectValueFilter;

    invoke-direct {v1}, Lcom/avos/avoscloud/ObjectValueFilter;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v2, v4

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    new-array v1, v5, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1489
    return-void
.end method
