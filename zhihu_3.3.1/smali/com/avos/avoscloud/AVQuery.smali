.class public Lcom/avos/avoscloud/AVQuery;
.super Ljava/lang/Object;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVQuery$CachePolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CLOUD_QUERY_PATH:Ljava/lang/String; = "cloudQuery"

.field private static final TAG:Ljava/lang/String; = "com.parse.AVQuery"


# instance fields
.field private cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field conditions:Lcom/avos/avoscloud/QueryConditions;

.field private externalQueryPath:Ljava/lang/String;

.field private isRunning:Ljava/lang/Boolean;

.field private maxCacheAge:J

.field private queryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 267
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 270
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    .line 272
    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    .line 273
    new-instance v0, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {v0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    .line 274
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVQuery;->processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVQuery;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method private addAndItems(Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    iget-object v1, p1, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addAndItems(Lcom/avos/avoscloud/QueryConditions;)V

    .line 607
    return-object p0
.end method

.method private addOrItems(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)V

    .line 602
    return-object p0
.end method

.method private addWhereItem(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 597
    return-object p0
.end method

.method public static and(Ljava/util/List;)Lcom/avos/avoscloud/AVQuery;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 890
    const/4 v0, 0x0

    .line 891
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 892
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 894
    :goto_0
    new-instance v2, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v2, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 895
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 896
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVQuery;

    .line 897
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 898
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All queries must be for the same class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_0
    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVQuery;->addAndItems(Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_1

    .line 903
    :cond_1
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVQuery;

    iget-object v0, v0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getWhere()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/AVQuery;->setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;

    .line 906
    :cond_2
    return-object v2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public static clearAllCachedResults()V
    .locals 0

    .prologue
    .line 309
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->clearAllCache()Z

    .line 310
    return-void
.end method

.method private countInBackground(ZLcom/avos/avoscloud/CountCallback;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 1526
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object v0

    .line 1527
    const-string v1, "count"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string v1, "limit"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v2

    .line 1531
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v3, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVQuery$13;

    invoke-direct {v6, p0, p2}, Lcom/avos/avoscloud/AVQuery$13;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/CountCallback;)V

    iget-object v7, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v8, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 1554
    return-void
.end method

.method public static doCloudQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 1
    .parameter

    .prologue
    .line 1093
    const-class v0, Lcom/avos/avoscloud/AVObject;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVQuery;->doCloudQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public static doCloudQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .prologue
    .line 1108
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1109
    new-instance v1, Lcom/avos/avoscloud/AVQuery$3;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$3;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v2, v3}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1126
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1129
    :cond_0
    return-object v0
.end method

.method public static varargs doCloudQuery(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .prologue
    .line 1035
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1036
    new-instance v1, Lcom/avos/avoscloud/AVQuery$2;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$2;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const/4 v2, 0x1

    invoke-static {p0, v1, p1, v2, p2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1049
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1052
    :cond_0
    return-object v0
.end method

.method public static varargs doCloudQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1004
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1005
    new-instance v1, Lcom/avos/avoscloud/AVQuery$1;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$1;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const-class v2, Lcom/avos/avoscloud/AVObject;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, p1}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1017
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1020
    :cond_0
    return-object v0
.end method

.method public static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1140
    const-class v0, Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1141
    return-void
.end method

.method public static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1153
    return-void
.end method

.method private static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;Z[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1158
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1159
    if-eqz p4, :cond_0

    .line 1160
    array-length v2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p4, v0

    .line 1161
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    :cond_0
    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVRequestParams;-><init>()V

    .line 1166
    const-string v0, "cql"

    invoke-virtual {v2, v0, p0}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    const-string v0, "pvalues"

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1170
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "cloudQuery"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$4;

    invoke-direct {v5, p1, p2}, Lcom/avos/avoscloud/AVQuery$4;-><init>(Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1193
    return-void
.end method

.method public static varargs doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1080
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1081
    return-void
.end method

.method public static varargs doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1066
    const-class v0, Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1067
    return-void
.end method

.method private generateQueryPath()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 188
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 192
    :cond_0
    return-void
.end method

.method private getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1370
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v0

    .line 1371
    const-string v1, "limit"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    const-string v1, "order"

    const-string v2, "-updatedAt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$8;

    invoke-direct {v5, p0, p2}, Lcom/avos/avoscloud/AVQuery$8;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1404
    return-void
.end method

.method private getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1429
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpointByAVClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1432
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$10;

    invoke-direct {v5, p0, p3}, Lcom/avos/avoscloud/AVQuery$10;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1475
    return-void
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
    .line 294
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "com.parse.AVQuery"

    return-object v0
.end method

.method public static getUserQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getQuery()Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public static or(Ljava/util/List;)Lcom/avos/avoscloud/AVQuery;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 869
    const/4 v0, 0x0

    .line 870
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 871
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 873
    :goto_0
    new-instance v2, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v2, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 875
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVQuery;

    .line 876
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 877
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All queries must be for the same class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_0
    new-instance v4, Lcom/avos/avoscloud/QueryOperation;

    const-string v5, "$or"

    const-string v6, "$or"

    iget-object v0, v0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v4}, Lcom/avos/avoscloud/AVQuery;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_1

    .line 883
    :cond_1
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVQuery;

    iget-object v0, v0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getWhere()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/AVQuery;->setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;

    .line 886
    :cond_2
    return-object v2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private static processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 9
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
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .prologue
    .line 1197
    new-instance v2, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1198
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1200
    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    move-object v0, v2

    .line 1226
    :goto_0
    return-object v0

    .line 1203
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 1204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVResponse;

    .line 1206
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1207
    iget-object v1, v0, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 1208
    iget-object v5, v0, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    array-length v6, v5

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v7, v5, v3

    .line 1209
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1211
    if-eqz p1, :cond_3

    .line 1212
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 1213
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1214
    iget-object v8, v0, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    .line 1219
    :cond_1
    :goto_2
    invoke-static {v7, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1220
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1217
    :cond_3
    new-instance v1, Lcom/avos/avoscloud/AVObject;

    iget-object v8, v0, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-direct {v1, v8}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1224
    :cond_4
    iget v0, v0, Lcom/avos/avoscloud/AVResponse;->count:I

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/AVCloudQueryResult;->setCount(I)V

    .line 1225
    invoke-virtual {v2, v4}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    move-object v0, v2

    .line 1226
    goto :goto_0
.end method

.method private queryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    .line 328
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addAscendingOrder(Ljava/lang/String;)V

    .line 444
    return-object p0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addDescendingOrder(Ljava/lang/String;)V

    .line 456
    return-object p0
.end method

.method protected addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
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
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    return-object p0
.end method

.method protected assembleParameters()Ljava/util/Map;
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
    .line 1623
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public clearCachedResult()V
    .locals 2

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->generateQueryPath()V

    .line 318
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->delete(Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void
.end method

.method public count()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1481
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 1482
    new-instance v1, Lcom/avos/avoscloud/AVQuery$11;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$11;-><init>(Lcom/avos/avoscloud/AVQuery;[I)V

    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 1497
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1500
    :cond_0
    aget v0, v0, v2

    return v0
.end method

.method protected count(Z)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1504
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 1505
    new-instance v1, Lcom/avos/avoscloud/AVQuery$12;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$12;-><init>(Lcom/avos/avoscloud/AVQuery;[I)V

    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 1511
    aget v0, v0, v2

    return v0
.end method

.method public countInBackground(Lcom/avos/avoscloud/CountCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 1521
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 1522
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->find()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->deleteAll(Ljava/util/Collection;)V

    .line 1598
    return-void
.end method

.method public deleteAllInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 1607
    new-instance v0, Lcom/avos/avoscloud/AVQuery$15;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVQuery$15;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/DeleteCallback;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVQuery;->findInBackground(Lcom/avos/avoscloud/FindCallback;)V

    .line 1620
    return-void
.end method

.method public find()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v2

    .line 1564
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v3, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVQuery$14;

    invoke-direct {v6, p0, v0}, Lcom/avos/avoscloud/AVQuery$14;-><init>(Lcom/avos/avoscloud/AVQuery;Ljava/util/List;)V

    iget-object v7, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v8, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    invoke-virtual/range {v1 .. v9}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 1583
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1584
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1586
    :cond_0
    return-object v0
.end method

.method public findInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1269
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v2

    .line 1270
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v3, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVQuery$5;

    invoke-direct {v6, p0, p1}, Lcom/avos/avoscloud/AVQuery$5;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/FindCallback;)V

    iget-object v7, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v8, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    invoke-virtual/range {v1 .. v9}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 1295
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1305
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 1306
    new-instance v1, Lcom/avos/avoscloud/AVQuery$6;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$6;-><init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, v3, v1}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V

    .line 1321
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1324
    :cond_0
    aget-object v0, v0, v2

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getCachePolicy()Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    return-object v0
.end method

.method getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method getExternalQueryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst()Lcom/avos/avoscloud/AVObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1335
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 1336
    new-instance v1, Lcom/avos/avoscloud/AVQuery$7;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$7;-><init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V

    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V

    .line 1351
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1352
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1354
    :cond_0
    aget-object v0, v0, v2

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getFirstInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1365
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V

    .line 1366
    return-void
.end method

.method public getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1416
    .line 1417
    const/4 v0, 0x0

    new-instance v1, Lcom/avos/avoscloud/AVQuery$9;

    invoke-direct {v1, p0, p2}, Lcom/avos/avoscloud/AVQuery$9;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V

    .line 1425
    return-void
.end method

.method getInclude()Ljava/util/List;
    .locals 1
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
    .line 114
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getInclude()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getIsRunning()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->isRunning:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v0

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    return-wide v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameters()Ljava/util/Map;
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
    .line 138
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy()Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object v0
.end method

.method getQueryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    return-object v0
.end method

.method getSelectedKeys()Ljava/util/Set;
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
    .line 122
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getSelectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v0

    return v0
.end method

.method getWhere()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getWhere()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hasCachedResult()Z
    .locals 2

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->generateQueryPath()V

    .line 348
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public include(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->include(Ljava/lang/String;)V

    .line 467
    return-object p0
.end method

.method public isTrace()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->isTrace()Z

    move-result v0

    return v0
.end method

.method public limit(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setLimit(I)Lcom/avos/avoscloud/AVQuery;

    .line 379
    return-object p0
.end method

.method public order(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;

    .line 432
    return-object p0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    .line 489
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    .line 500
    return-object p0
.end method

.method protected processAdditionalInfo(Ljava/lang/String;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1232
    return-void
.end method

.method protected processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1236
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1256
    :goto_0
    return-object v0

    .line 1239
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 1240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVResponse;

    .line 1242
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1243
    iget-object v4, v0, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    array-length v5, v4

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 1244
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1246
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 1247
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 1251
    :goto_2
    invoke-static {v6, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1252
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    .line 1253
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1249
    :cond_2
    iget-object v1, v0, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 1256
    goto :goto_0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->selectKeys(Ljava/util/Collection;)V

    .line 478
    return-object p0
.end method

.method public setCachePolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 208
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method setClazz(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    .line 111
    return-void
.end method

.method setExternalQueryPath(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    .line 159
    return-void
.end method

.method setInclude(Ljava/util/List;)V
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
    .line 118
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setInclude(Ljava/util/List;)V

    .line 119
    return-void
.end method

.method setIsRunning(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->isRunning:Ljava/lang/Boolean;

    .line 135
    return-void
.end method

.method public setLimit(I)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    .line 369
    return-object p0
.end method

.method public setMaxCacheAge(J)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    iput-wide p1, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 240
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setOrder(Ljava/lang/String;)V

    .line 422
    return-object p0
.end method

.method setParameters(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setParameters(Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public setPolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 222
    return-object p0
.end method

.method setQueryPath(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 151
    return-void
.end method

.method setSelectedKeys(Ljava/util/Set;)V
    .locals 1
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
    .line 126
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSelectedKeys(Ljava/util/Set;)V

    .line 127
    return-void
.end method

.method public setSkip(I)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    .line 407
    return-object p0
.end method

.method public setTrace(Z)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setTrace(Z)V

    .line 255
    return-object p0
.end method

.method setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 990
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setWhere(Ljava/util/Map;)V

    .line 991
    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setSkip(I)Lcom/avos/avoscloud/AVQuery;

    .line 389
    return-object p0
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 513
    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContains(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 554
    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereDoesNotExist(Ljava/lang/String;)V

    .line 564
    return-object p0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 963
    const-string v0, "className"

    iget-object v1, p3, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 964
    const-string v1, "where"

    iget-object v2, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string v1, "query"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 967
    const-string v1, "key"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v1, "$dontSelect"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 970
    return-object p0
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 982
    const-string v0, "className"

    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 983
    const-string v1, "where"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string v1, "$notInQuery"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 986
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereExists(Ljava/lang/String;)V

    .line 622
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 921
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 922
    const-string v1, "className"

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string v1, "where"

    iget-object v2, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object v1, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "skip"

    iget-object v2, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_0
    iget-object v1, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "limit"

    iget-object v2, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    :cond_1
    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "order"

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 929
    const-string v2, "query"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v0, "key"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v0, "$select"

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 943
    const-string v0, "where"

    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 945
    const-string v1, "className"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "skip"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_0
    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "limit"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    :cond_1
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "order"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    :cond_2
    const-string v1, "$inQuery"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 950
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 715
    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 728
    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    return-object p0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereSizeEqual(Ljava/lang/String;I)V

    .line 539
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 768
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 782
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)Lcom/avos/avoscloud/AVQuery;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "DD)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 799
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    .line 800
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 809
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)Lcom/avos/avoscloud/AVQuery;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "DD)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 826
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    .line 827
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 841
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 842
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)Lcom/avos/avoscloud/AVQuery;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "DD)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 858
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    .line 859
    return-object p0
.end method
