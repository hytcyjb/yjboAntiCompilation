.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 83
    return-void

    .line 67
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 68
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 78
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 55
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 59
    return-object v1

    .line 55
    :cond_0
    aget-object v3, p0, v0

    .line 56
    invoke-interface {v1, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 2
    .parameter

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 225
    const-class v1, Ljava/lang/Number;

    if-ne v0, v1, :cond_0

    .line 226
    new-instance v0, Lcom/alibaba/fastjson/serializer/NumberFieldSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/NumberFieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 229
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0
.end method

.method public getGetters()[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    return-object v0
.end method

.method protected isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v9

    .line 92
    if-nez p2, :cond_0

    .line 93
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 216
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_1
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 110
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v10

    .line 111
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v10, v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteAsArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result v11

    .line 116
    if-eqz v11, :cond_6

    const/16 v6, 0x5b

    move v7, v6

    .line 117
    :goto_2
    if-eqz v11, :cond_7

    const/16 v6, 0x5d

    move v8, v6

    .line 118
    :goto_3
    :try_start_0
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 120
    array-length v6, v5

    if-lez v6, :cond_2

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 125
    :cond_2
    const/4 v6, 0x0

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 129
    move-object/from16 v0, p4

    if-eq v7, v0, :cond_3

    .line 130
    sget-object v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 132
    const/4 v6, 0x1

    .line 136
    :cond_3
    if-eqz v6, :cond_8

    const/16 v6, 0x2c

    .line 138
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/serializer/FilterUtils;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v6

    .line 139
    const/16 v7, 0x2c

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    .line 141
    :goto_5
    const/4 v7, 0x0

    :goto_6
    array-length v12, v5

    if-lt v7, v12, :cond_a

    .line 203
    if-eqz v6, :cond_14

    const/16 v6, 0x2c

    :goto_7
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/serializer/FilterUtils;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    .line 205
    array-length v5, v5

    if-lez v5, :cond_4

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 210
    :cond_4
    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto/16 :goto_0

    .line 107
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto/16 :goto_1

    .line 116
    :cond_6
    const/16 v6, 0x7b

    move v7, v6

    goto/16 :goto_2

    .line 117
    :cond_7
    const/16 v6, 0x7d

    move v8, v6

    goto/16 :goto_3

    .line 136
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 139
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 142
    :cond_a
    :try_start_1
    aget-object v12, v5, v7

    .line 144
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 145
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getField()Ljava/lang/reflect/Field;

    move-result-object v13

    .line 146
    if-eqz v13, :cond_c

    .line 147
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 141
    :cond_b
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 153
    :cond_c
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/alibaba/fastjson/serializer/FilterUtils;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 157
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 159
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14, v13}, Lcom/alibaba/fastjson/serializer/FilterUtils;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 163
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14, v13}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 166
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v15, v13}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 168
    if-nez v15, :cond_d

    if-nez v11, :cond_d

    .line 169
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->isWriteNull()Z

    move-result v16

    if-nez v16, :cond_d

    .line 170
    sget-object v16, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 175
    :cond_d
    if-eqz v6, :cond_e

    .line 176
    const/16 v6, 0x2c

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 177
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 182
    :cond_e
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v6

    if-eq v14, v6, :cond_10

    .line 183
    if-nez v11, :cond_f

    .line 184
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 186
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 200
    :goto_9
    const/4 v6, 0x1

    goto :goto_8

    .line 187
    :cond_10
    if-eq v13, v15, :cond_12

    .line 188
    if-nez v11, :cond_11

    .line 189
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 191
    :cond_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .line 211
    :catch_0
    move-exception v5

    .line 212
    :try_start_2
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "write javaBean error"

    invoke-direct {v6, v7, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :catchall_0
    move-exception v5

    .line 214
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    .line 215
    throw v5

    .line 193
    :cond_12
    if-nez v11, :cond_13

    .line 194
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v15}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_9

    .line 196
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v15}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    .line 203
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_7
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 220
    return-void
.end method
