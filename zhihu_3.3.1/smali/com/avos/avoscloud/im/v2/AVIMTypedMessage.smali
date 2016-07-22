.class public abstract Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMMessage;
.source "AVIMTypedMessage.java"


# static fields
.field static fieldCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avospush/util/FieldAttribute;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private messageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>()V

    .line 27
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->initMessageType()V

    .line 28
    return-void
.end method

.method protected static computeFieldAttribute(Ljava/lang/Class;)V
    .locals 18
    .parameter

    .prologue
    .line 75
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 77
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v1, p0

    .line 79
    :goto_0
    if-eqz v1, :cond_0

    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 81
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 87
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Ljava/lang/Class;

    .line 88
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, [Ljava/lang/reflect/Method;

    .line 89
    array-length v0, v13

    move/from16 v17, v0

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    aget-object v5, v13, v14

    .line 90
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    .line 89
    :cond_2
    :goto_2
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    .line 108
    :cond_4
    const-string v1, "set"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getMetaClass"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "groovy.lang.MetaClass"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "get"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "is"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    :cond_5
    const/4 v1, 0x0

    .line 115
    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 116
    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 117
    const-string v3, "is"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 118
    if-eqz v4, :cond_c

    .line 119
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 121
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_6
    :goto_3
    invoke-static {v12, v1}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 169
    if-nez v2, :cond_17

    if-nez v8, :cond_7

    if-eqz v4, :cond_17

    .line 170
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {v12, v3}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_17

    move-object v7, v2

    move-object v2, v3

    .line 178
    :goto_4
    if-eqz v7, :cond_2

    .line 179
    const-class v1, Lcom/avos/avoscloud/im/v2/AVIMMessageField;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMMessageField;

    .line 181
    if-eqz v1, :cond_2

    .line 182
    invoke-interface {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageField;->name()Ljava/lang/String;

    move-result-object v3

    .line 183
    const/4 v1, 0x0

    .line 184
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 185
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avospush/util/FieldAttribute;

    .line 187
    :cond_8
    if-eqz v4, :cond_13

    .line 188
    if-nez v1, :cond_12

    .line 189
    new-instance v1, Lcom/avos/avospush/util/FieldAttribute;

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/avos/avospush/util/FieldAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 191
    invoke-virtual {v15, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_9
    :goto_5
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_2

    .line 123
    :cond_a
    const/16 v3, 0x5f

    if-ne v1, v3, :cond_b

    .line 124
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 125
    :cond_b
    const/16 v3, 0x66

    if-ne v1, v3, :cond_2

    .line 126
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 132
    :cond_c
    if-eqz v6, :cond_f

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_2

    .line 137
    const-string v1, "getClass"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 143
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 145
    :cond_d
    const/16 v3, 0x5f

    if-ne v1, v3, :cond_e

    .line 146
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 147
    :cond_e
    const/16 v3, 0x66

    if-ne v1, v3, :cond_2

    .line 148
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 152
    :cond_f
    if-eqz v8, :cond_6

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_2

    .line 156
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 158
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 160
    :cond_10
    const/16 v3, 0x5f

    if-ne v1, v3, :cond_11

    .line 161
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 162
    :cond_11
    const/16 v3, 0x66

    if-ne v1, v3, :cond_2

    .line 163
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 193
    :cond_12
    invoke-virtual {v1, v5}, Lcom/avos/avospush/util/FieldAttribute;->setSetterMethod(Ljava/lang/reflect/Method;)V

    goto/16 :goto_5

    .line 195
    :cond_13
    if-nez v8, :cond_14

    if-eqz v6, :cond_9

    .line 196
    :cond_14
    if-nez v1, :cond_15

    .line 197
    new-instance v6, Lcom/avos/avospush/util/FieldAttribute;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    move-object v7, v2

    move-object v8, v3

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/avos/avospush/util/FieldAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 199
    invoke-virtual {v15, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 201
    :cond_15
    invoke-virtual {v1, v5}, Lcom/avos/avospush/util/FieldAttribute;->setGetterMethod(Ljava/lang/reflect/Method;)V

    goto/16 :goto_5

    .line 209
    :cond_16
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void

    :cond_17
    move-object v7, v2

    move-object v2, v1

    goto/16 :goto_4
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initMessageType()V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    .line 32
    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageType;->type()I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->messageType:I

    .line 33
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 46
    const-string v0, "_lctype"

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getMessageType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->computeFieldAttribute(Ljava/lang/Class;)V

    .line 50
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 51
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avospush/util/FieldAttribute;

    .line 52
    invoke-virtual {v0, p0}, Lcom/avos/avospush/util/FieldAttribute;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    invoke-virtual {v0}, Lcom/avos/avospush/util/FieldAttribute;->getAliaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->messageType:I

    return v0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 60
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 61
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->computeFieldAttribute(Ljava/lang/Class;)V

    .line 64
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 65
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avospush/util/FieldAttribute;

    .line 66
    invoke-virtual {v1}, Lcom/avos/avospush/util/FieldAttribute;->getAliaName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/avos/avospush/util/FieldAttribute;->getFieldType()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 68
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/avos/avospush/util/FieldAttribute;->getFieldType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    :cond_1
    invoke-virtual {v1, p0, v2}, Lcom/avos/avospush/util/FieldAttribute;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method protected setMessageType(I)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->messageType:I

    .line 41
    return-void
.end method
