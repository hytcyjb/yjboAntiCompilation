.class public Lcom/avos/avoscloud/AVPush;
.super Ljava/lang/Object;
.source "AVPush.java"


# static fields
.field private static final DEVICE_TYPES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final deviceTypeTag:Ljava/lang/String; = "deviceType"


# instance fields
.field private final channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cql:Ljava/lang/String;

.field private expirationTime:J

.field private expirationTimeInterval:J

.field private volatile notification:Lcom/avos/avoscloud/AVObject;

.field private production:Z

.field private final pushData:Ljava/util/Map;
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

.field private pushDate:Ljava/util/Date;

.field private pushQuery:Lcom/avos/avoscloud/AVQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;"
        }
    .end annotation
.end field

.field private final pushTarget:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    .line 33
    sget-object v0, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    const-string v1, "ios"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v0, Lcom/avos/avoscloud/AVPush;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVPush;->production:Z

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    .line 61
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getQuery()Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVPush;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;

    return-object p1
.end method

.method private expirationDateTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 358
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private postDataMap()Ljava/util/Map;
    .locals 8
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
    const-wide/16 v6, 0x0

    .line 186
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 188
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    const-string v1, "deviceType"

    sget-object v3, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    invoke-virtual {v0, v1, v3}, Lcom/avos/avoscloud/AVQuery;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    move-result-object v3

    .line 195
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t use AVQuery and Cloud query at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    const-string v1, "deviceType"

    iget-object v3, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_0

    .line 198
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 203
    const-string v0, "cql"

    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 206
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPush;->pushChannelsData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 209
    :cond_5
    iget-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_6

    .line 210
    const-string v0, "expiration_time"

    invoke-direct {p0}, Lcom/avos/avoscloud/AVPush;->expirationDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_6
    iget-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_7

    .line 213
    const-string v0, "push_time"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "expiration_interval"

    new-instance v1, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    if-eqz v0, :cond_8

    .line 217
    const-string v0, "push_time"

    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_8
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVPush;->production:Z

    if-nez v0, :cond_9

    .line 221
    const-string v0, "prod"

    const-string v1, "dev"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_9
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 225
    return-object v2
.end method

.method private pushChannelsData()Ljava/util/Map;
    .locals 2
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
    .line 182
    const-string v0, "channels"

    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->createStringObjectMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static sendDataInBackground(Lorg/json/JSONObject;Lcom/avos/avoscloud/AVQuery;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 135
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setData(Lorg/json/JSONObject;)V

    .line 136
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    .line 137
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPush;->sendInBackground()V

    .line 138
    return-void
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/SendCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;",
            "Lcom/avos/avoscloud/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 158
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setData(Lorg/json/JSONObject;)V

    .line 159
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    .line 160
    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 161
    return-void
.end method

.method private sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 235
    .line 236
    const-string v0, "push"

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPush;->postDataMap()Ljava/util/Map;

    move-result-object v1

    .line 239
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    new-instance v3, Lcom/avos/avoscloud/AVPush$1;

    invoke-direct {v3, p0, p2}, Lcom/avos/avoscloud/AVPush$1;-><init>(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/SendCallback;)V

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    if-eqz p2, :cond_0

    .line 259
    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SendCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 261
    :cond_0
    const-string v1, "AVPush sent exception"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 281
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setMessage(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    .line 283
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 284
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/SendCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;",
            "Lcom/avos/avoscloud/SendCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 303
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setMessage(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    .line 305
    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 306
    return-void
.end method


# virtual methods
.method public clearExpiration()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 106
    iput-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    .line 107
    iput-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    .line 108
    return-void
.end method

.method public getChannelSet()Ljava/util/Set;
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
    .line 65
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    return-wide v0
.end method

.method public getExpirationTimeInterval()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    return-wide v0
.end method

.method public getNotification()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getProductionMode()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVPush;->production:Z

    return v0
.end method

.method public getPushData()Ljava/util/Map;
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
    .line 99
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    return-object v0
.end method

.method public getPushDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPushQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    return-object v0
.end method

.method public getPushTarget()Ljava/util/Set;
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
    .line 95
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    return-object v0
.end method

.method public send()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 117
    return-void
.end method

.method public sendInBackground()V
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 169
    return-void
.end method

.method public sendInBackground(Lcom/avos/avoscloud/SendCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    .line 179
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 315
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 325
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 326
    return-void
.end method

.method public setCloudQuery(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 2
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
    .line 335
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 344
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 345
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 346
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 349
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    new-instance v1, Lcom/avos/avoscloud/AVRuntimeException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 351
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1
    .parameter

    .prologue
    .line 378
    iput-wide p1, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    .line 379
    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 1
    .parameter

    .prologue
    .line 389
    iput-wide p1, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    .line 390
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 398
    const-string v0, "alert"

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUtils;->createStringObjectMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public setProductionMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVPush;->production:Z

    .line 465
    return-void
.end method

.method public setPushDate(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    .line 368
    return-void
.end method

.method public setPushToAndroid(Z)V
    .locals 2
    .parameter

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPushToIOS(Z)V
    .locals 2
    .parameter

    .prologue
    .line 411
    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "ios"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "ios"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPushToWindowsPhone(Z)V
    .locals 2
    .parameter

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "wp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    const-string v1, "wp"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setQuery(Lcom/avos/avoscloud/AVQuery;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery",
            "<+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    .line 436
    return-void
.end method
