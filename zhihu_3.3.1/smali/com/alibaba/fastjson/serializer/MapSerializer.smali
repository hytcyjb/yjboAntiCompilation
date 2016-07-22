.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Ljava/lang/Object;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v9

    .line 39
    if-nez p2, :cond_0

    .line 40
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 200
    :goto_0
    return-void

    :cond_0
    move-object v1, p2

    .line 44
    check-cast v1, Ljava/util/Map;

    .line 46
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 47
    instance-of v2, v1, Ljava/util/SortedMap;

    if-nez v2, :cond_1f

    instance-of v2, v1, Ljava/util/LinkedHashMap;

    if-nez v2, :cond_1f

    .line 49
    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 56
    :goto_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    move-object v3, v1

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v10

    .line 62
    invoke-virtual {p1, v10, p2, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    const/16 v1, 0x7b

    :try_start_1
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 74
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    move v1, v6

    .line 79
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v5, v1

    move-object v7, v4

    move-object v8, v4

    :cond_2
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 192
    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    .line 195
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 196
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 197
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 199
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 79
    :cond_4
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFiltersDirect()Ljava/util/List;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 87
    if-eqz v2, :cond_5

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 88
    :cond_5
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {p1, p2, v1}, Lcom/alibaba/fastjson/serializer/FilterUtils;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 103
    if-eqz v2, :cond_7

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 104
    :cond_7
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {p1, p2, v1, v4}, Lcom/alibaba/fastjson/serializer/FilterUtils;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 119
    if-eqz v2, :cond_9

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 120
    :cond_9
    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2, v2, v4}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFiltersDirect()Ljava/util/List;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 131
    if-eqz v2, :cond_b

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 132
    :cond_b
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {p1, p2, v1, v4}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    .line 140
    :cond_c
    :goto_5
    if-nez v4, :cond_d

    .line 141
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    :cond_d
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 147
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 149
    if-nez v5, :cond_e

    .line 150
    const/16 v5, 0x2c

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 153
    :cond_e
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 156
    :cond_f
    const/4 v5, 0x1

    invoke-virtual {v9, v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 175
    :goto_6
    if-nez v4, :cond_1c

    .line 176
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    move v5, v6

    .line 177
    goto/16 :goto_3

    .line 91
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_11

    instance-of v1, v2, Ljava/lang/Number;

    if-eqz v1, :cond_6

    .line 92
    :cond_11
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {p1, p2, v1}, Lcom/alibaba/fastjson/serializer/FilterUtils;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_3

    .line 107
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_13

    instance-of v1, v2, Ljava/lang/Number;

    if-eqz v1, :cond_8

    .line 108
    :cond_13
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {p1, p2, v1, v4}, Lcom/alibaba/fastjson/serializer/FilterUtils;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_3

    .line 121
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_15

    instance-of v1, v2, Ljava/lang/Number;

    if-eqz v1, :cond_a

    .line 122
    :cond_15
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {p1, p2, v1, v4}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 133
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_17

    instance-of v1, v2, Ljava/lang/Number;

    if-eqz v1, :cond_c

    .line 134
    :cond_17
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {p1, p2, v1, v4}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_5

    .line 158
    :cond_18
    if-nez v5, :cond_19

    .line 159
    const/16 v1, 0x2c

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 162
    :cond_19
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 163
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 164
    :cond_1a
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 170
    :goto_7
    const/16 v1, 0x3a

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 191
    :catchall_0
    move-exception v1

    .line 192
    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    .line 193
    throw v1

    .line 167
    :cond_1b
    :try_start_3
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_7

    .line 180
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 182
    if-ne v5, v8, :cond_1d

    .line 183
    const/4 v1, 0x0

    invoke-interface {v7, p1, v4, v2, v1}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move v5, v6

    .line 184
    goto/16 :goto_3

    .line 186
    :cond_1d
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 188
    const/4 v7, 0x0

    invoke-interface {v1, p1, v4, v2, v7}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v1

    move-object v8, v5

    move v5, v6

    goto/16 :goto_3

    :cond_1e
    move v1, v5

    goto/16 :goto_2

    :cond_1f
    move-object v3, v1

    goto/16 :goto_1
.end method
