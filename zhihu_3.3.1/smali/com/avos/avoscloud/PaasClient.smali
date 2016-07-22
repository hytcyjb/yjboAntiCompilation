.class public Lcom/avos/avoscloud/PaasClient;
.super Ljava/lang/Object;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/PaasClient$7;,
        Lcom/avos/avoscloud/PaasClient$ProgressListener;,
        Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;,
        Lcom/avos/avoscloud/PaasClient$ProgressInterceptor;,
        Lcom/avos/avoscloud/PaasClient$RequestStatisticInterceptor;,
        Lcom/avos/avoscloud/PaasClient$AVHttpClient;
    }
.end annotation


# static fields
.field public static final DEFAULT_FAIL_STRING:Ljava/lang/String; = "request failed!!!"

.field private static REQUEST_STATIS_HEADER:Ljava/lang/String; = null

.field private static apiKeyField:Ljava/lang/String; = null

.field private static applicationIdField:Ljava/lang/String; = null

.field private static baseUrl:Ljava/lang/String; = null

.field private static final cookieHandler:Ljava/net/CookieHandler; = null

.field public static final defaultContentType:Ljava/lang/String; = "application/json"

.field private static final defaultEncoding:Ljava/lang/String; = "UTF-8"

.field private static fileModifiedDateComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static internalObjectsForEventuallySave:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObjectReferenceCount;",
            ">;"
        }
    .end annotation
.end field

.field private static isCN:Z = false

.field private static isUrulu:Z = false

.field private static lastModify:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastModifyEnabled:Z = false

.field public static final sdkVersion:Ljava/lang/String; = "v3.12.3"

.field static serviceClientMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/PaasClient;",
            ">;"
        }
    .end annotation
.end field

.field static serviceHostMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sessionTokenField:Ljava/lang/String; = null

.field private static final userAgent:Ljava/lang/String; = "AVOS Cloud android-v3.12.3 SDK"


# instance fields
.field private final apiVersion:Ljava/lang/String;

.field private currentUser:Lcom/avos/avoscloud/AVUser;

.field private defaultACL:Lcom/avos/avoscloud/AVACL;

.field private volatile httpClient:Lcom/avos/avoscloud/PaasClient$AVHttpClient;

.field private isProduction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 35
    new-instance v0, Lcom/avos/avoscloud/PaasClient$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/PaasClient$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 55
    sput-boolean v1, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 56
    sput-boolean v1, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    .line 71
    const-string v0, "X-Android-RS"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->REQUEST_STATIS_HEADER:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    .line 79
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://api.leancloud.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    .line 882
    new-instance v0, Lcom/avos/avoscloud/PaasClient$6;

    invoke-direct {v0}, Lcom/avos/avoscloud/PaasClient$6;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->fileModifiedDateComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/PaasClient;->isProduction:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    .line 145
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    .line 147
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useUruluServer()V

    .line 150
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->REQUEST_STATIS_HEADER:Ljava/lang/String;

    return-object v0
.end method

.method private archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 605
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCommandCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {p4, p5, p1, p2, p3}, Lcom/avos/avoscloud/AVUtils;->getArchiveRequestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 609
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 610
    const-string v2, "method"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v2, "relativePath"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v2, "paramString"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v2, "objectId"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v2, "_internalId"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->toJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 618
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did save to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 622
    :cond_0
    return-object v0
.end method

.method private batchRequest(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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
    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 480
    const-string v1, "requests"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    return-object v0
.end method

.method private batchSaveRelativeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string v0, "batch/save"

    return-object v0
.end method

.method private batchUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    const-string v0, "%s/%s/batch"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearLastModifyCache()V
    .locals 4

    .prologue
    .line 799
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 800
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 802
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/avos/avoscloud/AVCacheManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 805
    return-void
.end method

.method public static cloudInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->FUNCTION_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method private createGetHandler(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    new-instance v0, Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V

    .line 276
    return-object v0
.end method

.method private createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;
    .locals 1
    .parameter

    .prologue
    .line 280
    new-instance v0, Lcom/avos/avoscloud/PostHttpResponseHandler;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/PostHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 281
    return-object v0
.end method

.method protected static extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 825
    if-eqz p0, :cond_1

    .line 826
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 827
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 832
    :goto_1
    return-object v0

    .line 826
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getDebugClientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    .line 730
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "YourAppKey"

    goto :goto_0
.end method

.method public static getLastModify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 783
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 786
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleArchivedRequest(Ljava/io/File;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 627
    return-void
.end method

.method private handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 632
    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 635
    const-class v2, Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 636
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 637
    const-string v2, "method"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 638
    const-string v2, "relativePath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 639
    const-string v3, "paramString"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 640
    const-string v5, "objectId"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 641
    const-string v5, "_internalId"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 642
    new-instance v6, Lcom/avos/avoscloud/PaasClient$5;

    invoke-direct {v6, p0, p3, p1}, Lcom/avos/avoscloud/PaasClient$5;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/io/File;)V

    .line 672
    if-nez v4, :cond_0

    .line 673
    new-instance v1, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v5, "Null method."

    invoke-direct {v1, v5}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v6, v1, v5}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 675
    :cond_0
    const-string v1, "post"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    invoke-virtual {p0, v2, v3, p2, v6}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 686
    :cond_1
    :goto_0
    return-void

    .line 677
    :cond_2
    const-string v1, "put"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 678
    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :catch_0
    move-exception v1

    goto :goto_0

    .line 679
    :cond_3
    const-string v1, "delete"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v3, p0

    move-object v4, v2

    move v5, p2

    .line 680
    invoke-virtual/range {v3 .. v8}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private headerString(Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 735
    const-string v0, " -H \"%s: %s\" -H \"%s: %s\" "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v2, v1, v6

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v2, v1, v8

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    if-eqz p1, :cond_0

    .line 740
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 741
    const-string v3, " -H \"%s: %s\" "

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 742
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 745
    :cond_0
    const-string v0, " -H \"Content-Type: application/json\" "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAVOSCloud()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    return v0
.end method

.method public static isJSONResponse(Ljava/lang/String;)Z
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 818
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLastModifyEnabled()Z
    .locals 1

    .prologue
    .line 790
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    return v0
.end method

.method public static lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 808
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 809
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 810
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 813
    :goto_1
    return-object v0

    .line 808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 445
    if-eqz p2, :cond_0

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 448
    :cond_0
    return-void
.end method

.method protected static registerEventuallyObject(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .parameter

    .prologue
    .line 852
    if-eqz p0, :cond_0

    .line 853
    monitor-enter p0

    .line 854
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    .line 855
    if-eqz v0, :cond_1

    .line 856
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObjectReferenceCount;->increment()I

    .line 861
    :goto_0
    monitor-exit p0

    .line 863
    :cond_0
    return-void

    .line 858
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObjectReferenceCount;-><init>(Lcom/avos/avoscloud/AVObject;)V

    .line 859
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 861
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeLastModifyForUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 848
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    return-void
.end method

.method public static setLastModifyEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 794
    sput-boolean p0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    .line 795
    return-void
.end method

.method protected static setServiceHost(Lcom/avos/avoscloud/AVOSServices;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 297
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method protected static sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;
    .locals 3
    .parameter

    .prologue
    .line 95
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 98
    :goto_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/PaasClient;

    .line 99
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/avos/avoscloud/PaasClient;

    invoke-direct {v0}, Lcom/avos/avoscloud/PaasClient;-><init>()V

    .line 101
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PaasClient;->setBaseUrl(Ljava/lang/String;)V

    .line 102
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    return-object v0

    .line 95
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method private signRequest()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getCurrentTimestamp()J

    move-result-wide v2

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static statistisInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->STATISTICS_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method public static storageInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method private static switchPushRouter(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 221
    :try_start_0
    const-string v0, "com.avos.avospush.push.AVPushRouter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 223
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v0, "avpushRouter server didn\'t switched"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static unregisterEvtuallyObject(Lcom/avos/avoscloud/AVObject;)V
    .locals 2
    .parameter

    .prologue
    .line 866
    if-eqz p0, :cond_1

    .line 867
    monitor-enter p0

    .line 868
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    .line 872
    :goto_0
    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObjectReferenceCount;->desc()I

    move-result v0

    if-gtz v0, :cond_0

    .line 874
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_0
    monitor-exit p0

    .line 880
    :cond_1
    return-void

    .line 868
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 836
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 844
    :cond_0
    :goto_0
    return v0

    .line 840
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 841
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useAVCloudCN()V
    .locals 3

    .prologue
    .line 230
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 231
    const-string v0, "https://api.leancloud.cn"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 232
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "X-LC-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 234
    const-string v0, "X-LC-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 235
    const-string v0, "X-LC-Session"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 236
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 237
    const-string v0, "useAVOSCloudCN"

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->switchPushRouter(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public static useLocalStg()V
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 242
    const-string v0, "https://cn-stg1.avoscloud.com"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "X-LC-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 245
    const-string v0, "X-LC-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 246
    const-string v0, "X-LC-Session"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 247
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 248
    return-void
.end method


# virtual methods
.method assembleBatchOpsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 472
    const-string v3, "PUT"

    invoke-virtual {p0, v3, p2, v2}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 473
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    :cond_0
    return-object v0
.end method

.method batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 455
    const-string v1, "method"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v1, "path"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v1, "body"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    if-eqz p4, :cond_0

    .line 459
    const-string v1, "params"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_0
    return-object v0
.end method

.method public buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 251
    const-string v0, "%s/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVRequestParams;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVRequestParams;->getWholeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized clientInstance()Lcom/avos/avoscloud/PaasClient$AVHttpClient;
    .locals 4

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->httpClient:Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    invoke-direct {v0}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->httpClient:Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->httpClient:Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 194
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->httpClient:Lcom/avos/avoscloud/PaasClient$AVHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 567
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    if-eqz p3, :cond_0

    .line 575
    :try_start_0
    const-string v1, "delete"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 576
    invoke-direct {p0, v0, p2, p4}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 593
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpDeleteRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_1
    invoke-direct {p0, p4}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object v2

    .line 583
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->clientInstance()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v3

    .line 584
    new-instance v4, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 585
    const/4 v5, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v4, v5, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;Z)V

    .line 587
    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->delete()Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 588
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v3, v0, p2, v2}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    invoke-direct {p0, v0, p4}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 585
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dumpHttpDeleteRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 762
    const-string v0, "curl -X DELETE %s  -d \'%s\' %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public dumpHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 712
    const-string v0, ""

    .line 713
    if-eqz p2, :cond_0

    .line 714
    const-string v0, "curl -X GET -H \"%s: %s\" -H \"%s: %s\" -G --data-urlencode \'%s\' %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p2, v1, v7

    const/4 v2, 0x5

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 723
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 724
    return-void

    .line 719
    :cond_0
    const-string v0, "curl -X GET -H \"%s: %s\" -H \"%s: %s\"  %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 756
    const-string v0, "curl -X POST %s  -d \'%s\' %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public dumpHttpPutRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 750
    const-string v0, "curl -X PUT %s  -d \' %s \' %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method generateQueryPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentUser()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method getDefaultACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->defaultACL:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;
    .locals 15
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
            "Lcom/avos/avoscloud/AVRequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual/range {p0 .. p2}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v13

    .line 306
    invoke-virtual/range {p0 .. p2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v1}, Lcom/avos/avoscloud/PaasClient;->getLastModify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    sget-object v0, Lcom/avos/avoscloud/PaasClient$7;->$SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy:[I

    invoke-virtual/range {p6 .. p6}, Lcom/avos/avoscloud/AVQuery$CachePolicy;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 311
    invoke-virtual/range {p0 .. p6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    .line 370
    :goto_0
    return-object v13

    .line 314
    :pswitch_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    move-wide/from16 v2, p7

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-virtual/range {p0 .. p6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    new-instance v5, Lcom/avos/avoscloud/PaasClient$2;

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/avos/avoscloud/PaasClient$2;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    move-wide/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 336
    :pswitch_3
    new-instance v5, Lcom/avos/avoscloud/PaasClient$3;

    move-object v6, p0

    move-object/from16 v7, p5

    move-object v8, v1

    move-object v9, v4

    move-wide/from16 v10, p7

    invoke-direct/range {v5 .. v11}, Lcom/avos/avoscloud/PaasClient$3;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    goto :goto_0

    .line 354
    :pswitch_4
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    new-instance v5, Lcom/avos/avoscloud/PaasClient$4;

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/avos/avoscloud/PaasClient$4;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    move-wide/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVRequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 410
    sget-object v6, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    .line 411
    return-void
.end method

.method public getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V
    .locals 8
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
            "Lcom/avos/avoscloud/AVRequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 379
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-virtual {p6, v0}, Lcom/avos/avoscloud/AVQuery$CachePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Z)V

    .line 381
    return-void

    .line 379
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Z)V
    .locals 5
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
            "Lcom/avos/avoscloud/AVRequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 388
    .line 389
    if-nez p4, :cond_0

    .line 390
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 392
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/avos/avoscloud/PaasClient;->updateHeaderForPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;Ljava/util/Map;)V

    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-direct {p0, p5, p6, v1}, Lcom/avos/avoscloud/PaasClient;->createGetHandler(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object v2

    .line 397
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/avos/avoscloud/PaasClient;->dumpHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->clientInstance()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v3

    .line 402
    new-instance v4, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 403
    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->get()Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 404
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v4, p4, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;Z)V

    .line 405
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v3, v0, p3, v2}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V

    .line 406
    return-void

    .line 398
    :cond_2
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVRequestParams;->getDumpQueryString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleAllArchivedRequest()V
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->handleAllArchivedRequest(Z)V

    .line 690
    return-void
.end method

.method protected handleAllArchivedRequest(Z)V
    .locals 5
    .parameter

    .prologue
    .line 693
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCommandCacheDir()Ljava/io/File;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 695
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 696
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->fileModifiedDateComparator:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 697
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 698
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 699
    invoke-direct {p0, v3, p1}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;Z)V

    .line 697
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a dir"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 705
    :cond_2
    return-void
.end method

.method public postBatchObject(Ljava/util/List;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V
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
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 488
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchUrl()Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->batchRequest(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 490
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 491
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 492
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-virtual {p0, p3, v0, v1}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-direct {p0, p4}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object v2

    .line 496
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->clientInstance()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v3

    .line 497
    new-instance v4, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 498
    invoke-virtual {v4, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    sget-object v5, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->JSON:Lcom/avos/avoscloud/okhttp/MediaType;

    invoke-static {v5, v1}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->post(Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 499
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v4, p3, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;Z)V

    .line 501
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v3, v0, p2, v2}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_1
    return-void

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    invoke-direct {p0, v0, p4}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_1
.end method

.method public postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
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
            "Ljava/util/List;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 513
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 514
    const-string v1, "requests"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 516
    if-eqz p3, :cond_0

    .line 517
    const-string v1, "post"

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchSaveRelativeUrl()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 519
    invoke-direct {p0, v0, p2, p5}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 535
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchSaveRelativeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    invoke-virtual {p0, p4, v0, v3}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_1
    invoke-direct {p0, p5}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object v1

    .line 526
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->clientInstance()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v2

    .line 527
    new-instance v4, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 528
    invoke-virtual {v4, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    sget-object v5, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->JSON:Lcom/avos/avoscloud/okhttp/MediaType;

    invoke-static {v5, v3}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/okhttp/Request$Builder;->post(Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 529
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v4, p4, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;Z)V

    .line 530
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v2, v0, p2, v1}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    invoke-direct {p0, v0, p5}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 529
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 539
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    if-eqz p4, :cond_0

    .line 546
    :try_start_0
    const-string v1, "post"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 547
    invoke-direct {p0, v0, p3, p5}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 563
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_1
    invoke-direct {p0, p5}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object v2

    .line 554
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->clientInstance()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v3

    .line 555
    new-instance v4, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 556
    const/4 v5, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v4, v5, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;Z)V

    .line 557
    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->JSON:Lcom/avos/avoscloud/okhttp/MediaType;

    invoke-static {v1, p2}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->post(Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 558
    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v3, v0, p3, v2}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    invoke-direct {p0, v0, p5}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 556
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
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
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
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
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 424
    if-eqz p4, :cond_0

    .line 425
    :try_start_0
    const-string v1, "put"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 426
    invoke-direct {p0, v0, p3, p6}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 442
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-direct {p0, p6}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object v1

    .line 430
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    invoke-virtual {p0, p5, v0, p2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPutRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->clientInstance()Lcom/avos/avoscloud/PaasClient$AVHttpClient;

    move-result-object v2

    .line 434
    new-instance v3, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 435
    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    sget-object v4, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->JSON:Lcom/avos/avoscloud/okhttp/MediaType;

    invoke-static {v4, p2}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->put(Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 436
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v3, p5, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;Z)V

    .line 437
    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v2, v0, p3, v1}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-direct {p0, v0, p6}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 436
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    sput-object p1, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 290
    return-void
.end method

.method setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    .line 141
    return-void
.end method

.method setDefaultACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->defaultACL:Lcom/avos/avoscloud/AVACL;

    .line 125
    return-void
.end method

.method setProduction(Z)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/avos/avoscloud/PaasClient;->isProduction:Z

    .line 87
    return-void
.end method

.method public updateHeaderForPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVRequestParams;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 771
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->getLastModify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 776
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 777
    const-string v0, "If-Modified-Since"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    :cond_0
    return-void
.end method

.method protected updateHeaders(Lcom/avos/avoscloud/okhttp/Request$Builder;Ljava/util/Map;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/okhttp/Request$Builder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 165
    const-string v1, "X-LC-Prod"

    iget-boolean v0, p0, Lcom/avos/avoscloud/PaasClient;->isProduction:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 166
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 171
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 172
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 173
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 174
    const-string v0, "User-Agent"

    const-string v1, "AVOS Cloud android-v3.12.3 SDK"

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 175
    const-string v0, "X-LC-Sign"

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->signRequest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 178
    if-eqz p2, :cond_2

    .line 179
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    goto :goto_2

    .line 165
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 167
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 184
    :cond_2
    if-eqz p3, :cond_3

    .line 185
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->REQUEST_STATIS_HEADER:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 187
    :cond_3
    return-void
.end method

.method public useAVCloudUS()V
    .locals 3

    .prologue
    .line 208
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 209
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    .line 210
    const-string v0, "https://us-api.leancloud.cn"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 211
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "X-LC-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 213
    const-string v0, "X-LC-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 214
    const-string v0, "X-LC-Session"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeS3:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 216
    const-string v0, "useAVOSCloudUS"

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->switchPushRouter(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public useUruluServer()V
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->useAVCloudCN()V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useAVCloudUS()V

    goto :goto_0
.end method

.method public userHeaderMap()Ljava/util/Map;
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
    .line 132
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->headerMap()Ljava/util/Map;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
