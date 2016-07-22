.class Lcom/avos/avoscloud/AVObjectDeserializer;
.super Ljava/lang/Object;
.source "AVObjectDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field static final LOG_TAG:Ljava/lang/String;

.field public static final instance:Lcom/avos/avoscloud/AVObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVObjectDeserializer;->LOG_TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObjectDeserializer;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObjectDeserializer;->instance:Lcom/avos/avoscloud/AVObjectDeserializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 35
    const-class v3, Lcom/avos/avoscloud/AVObject;

    move-object v2, p2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 36
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    .line 40
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 41
    :try_start_1
    const-string v3, "className"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    .line 42
    const-string v3, "objectId"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V

    .line 43
    const-string v3, "createdAt"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVObject;->setCreatedAt(Ljava/lang/String;)V

    .line 44
    const-string v3, "updatedAt"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVObject;->setUpdatedAt(Ljava/lang/String;)V

    .line 45
    const-string v3, "keyValues"

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 47
    const-string v3, "keyValues"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 49
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 51
    const-string v5, "value"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 55
    :try_start_2
    const-string v5, "op"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/ops/AVOp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    :goto_1
    if-eqz v5, :cond_2

    :try_start_3
    instance-of v9, v5, Lcom/avos/avoscloud/ops/NullOP;

    if-nez v9, :cond_2

    .line 60
    invoke-virtual {p0, v5, v8}, Lcom/avos/avoscloud/AVObjectDeserializer;->updateOp(Lcom/avos/avoscloud/ops/AVOp;Ljava/lang/Object;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v4

    .line 61
    iget-object v5, v2, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 96
    :catch_0
    move-exception v3

    .line 97
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    sget-object v4, Lcom/avos/avoscloud/AVObjectDeserializer;->LOG_TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    :cond_1
    :goto_3
    return-object v2

    .line 56
    :catch_1
    move-exception v5

    move-object v5, v6

    goto :goto_1

    .line 62
    :cond_2
    :try_start_5
    const-string v5, "relationClassName"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 63
    iget-object v4, v2, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 100
    :catch_2
    move-exception v3

    .line 101
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    sget-object v4, Lcom/avos/avoscloud/AVObjectDeserializer;->LOG_TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 109
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 64
    :cond_3
    :try_start_7
    const-string v5, "relationClassName"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    new-instance v8, Lcom/avos/avoscloud/AVRelation;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v8, v2, v5}, Lcom/avos/avoscloud/AVRelation;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 66
    const-string v5, "relationClassName"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/avos/avoscloud/AVRelation;->setTargetClass(Ljava/lang/String;)V

    .line 67
    iget-object v4, v2, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 104
    :catch_3
    move-exception v3

    .line 105
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    sget-object v4, Lcom/avos/avoscloud/AVObjectDeserializer;->LOG_TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 71
    :cond_4
    :try_start_9
    const-string v3, "operationQueue"

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 72
    iget-object v4, v2, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    const-string v3, "operationQueue"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    :cond_5
    const-string v3, "serverData"

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 76
    iget-object v4, v2, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    const-string v3, "serverData"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    :cond_6
    const-class v3, Lcom/avos/avoscloud/AVStatus;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 80
    const-class v3, Lcom/avos/avoscloud/AVStatus;

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVStatus;

    .line 81
    const-string v4, "dataMap"

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 82
    const-string v4, "dataMap"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVStatus;->setData(Ljava/util/Map;)V

    .line 84
    :cond_7
    const-string v4, "inboxType"

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 85
    const-string v4, "inboxType"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVStatus;->setInboxType(Ljava/lang/String;)V

    .line 87
    :cond_8
    const-string v4, "messageId"

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 88
    const-string v4, "messageId"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/avos/avoscloud/AVStatus;->setMessageId(J)V

    .line 90
    :cond_9
    const-string v4, "source"

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 91
    const-string v4, "source"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVStatus;->setSource(Lcom/avos/avoscloud/AVObject;)V

    .line 95
    :cond_a
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    .line 112
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    goto/16 :goto_3

    .line 109
    :catchall_1
    move-exception v2

    move-object v2, v6

    goto/16 :goto_3

    .line 104
    :catch_4
    move-exception v2

    move-object v3, v2

    move-object v2, v6

    goto/16 :goto_5

    .line 100
    :catch_5
    move-exception v2

    move-object v3, v2

    move-object v2, v6

    goto/16 :goto_4

    .line 96
    :catch_6
    move-exception v2

    move-object v3, v2

    move-object v2, v6

    goto/16 :goto_2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0xc

    return v0
.end method

.method public updateOp(Lcom/avos/avoscloud/ops/AVOp;Ljava/lang/Object;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 121
    instance-of v1, p1, Lcom/avos/avoscloud/ops/AddRelationOp;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/avos/avoscloud/ops/RemoveRelationOp;

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->getValues()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 124
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 125
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 126
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/avos/avoscloud/AVObject;

    invoke-static {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 127
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 132
    :cond_1
    :goto_1
    instance-of v1, p1, Lcom/avos/avoscloud/ops/CompoundOp;

    if-eqz v1, :cond_3

    .line 133
    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->getValues()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/ops/AVOp;

    .line 135
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/avos/avoscloud/AVObjectDeserializer;->updateOp(Lcom/avos/avoscloud/ops/AVOp;Ljava/lang/Object;)Lcom/avos/avoscloud/ops/AVOp;

    goto :goto_2

    .line 129
    :cond_2
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/avos/avoscloud/ops/CollectionOp;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/ops/CollectionOp;->setValues(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 138
    :cond_3
    return-object p1
.end method
