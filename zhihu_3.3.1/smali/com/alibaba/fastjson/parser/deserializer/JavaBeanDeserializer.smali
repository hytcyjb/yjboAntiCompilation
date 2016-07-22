.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final feildDeserializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedFieldDeserializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 44
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->addFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getSortedFieldList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 51
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 52
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method

.method private addFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method


# virtual methods
.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    check-cast p2, Ljava/lang/Class;

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 82
    new-array v2, v2, [Ljava/lang/Class;

    aput-object p2, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getDefaultConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 88
    const/4 v1, 0x0

    goto :goto_0

    .line 93
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getDefaultConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_4

    .line 95
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 103
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 105
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_3

    .line 107
    :try_start_1
    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 97
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter
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
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v9

    .line 174
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 175
    const/16 v1, 0x10

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 176
    const/4 p4, 0x0

    .line 373
    :goto_0
    return-object p4

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 180
    if-eqz p4, :cond_2a

    .line 181
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    move-object v7, v1

    .line 183
    :goto_1
    const/4 v2, 0x0

    .line 186
    const/4 v6, 0x0

    .line 188
    :try_start_0
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3

    .line 189
    const/16 v1, 0x10

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 190
    if-nez p4, :cond_1

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 370
    :cond_1
    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_2
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto :goto_0

    .line 196
    :cond_3
    :try_start_1
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xe

    if-ne v1, v3, :cond_5

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 197
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 370
    if-eqz v2, :cond_4

    .line 371
    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_4
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object p4, v1

    goto :goto_0

    .line 200
    :cond_5
    :try_start_2
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_8

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0x10

    if-eq v1, v3, :cond_8

    .line 201
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "syntax error, expect {, actual "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ", pos "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 207
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 208
    const-string v3, ", fieldName "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 212
    :cond_6
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    :catchall_0
    move-exception v1

    move-object v3, p4

    :goto_2
    if-eqz v2, :cond_7

    .line 371
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_7
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v1

    .line 215
    :cond_8
    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    move-object v4, v2

    move-object v2, p4

    .line 221
    :cond_a
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 223
    if-nez v3, :cond_d

    .line 224
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v5, 0xd

    if-ne v1, v5, :cond_c

    .line 225
    const/16 v1, 0x10

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v2

    move-object v2, v4

    .line 334
    :goto_4
    if-nez v3, :cond_26

    .line 335
    if-nez v6, :cond_22

    .line 336
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object p4

    .line 337
    if-nez v2, :cond_27

    .line 338
    :try_start_6
    invoke-virtual {p1, v7, p4, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    .line 370
    :goto_5
    if-eqz v1, :cond_b

    .line 371
    invoke-virtual {v1, p4}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_b
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 228
    :cond_c
    :try_start_7
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v5, 0x10

    if-ne v1, v5, :cond_d

    .line 229
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 235
    :cond_d
    const-string v1, "$ref"

    if-ne v1, v3, :cond_17

    .line 236
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 237
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_14

    .line 238
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 239
    const-string v1, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 240
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 269
    :goto_6
    const/16 v1, 0xd

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 270
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_15

    .line 271
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "illegal ref"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_2

    .line 241
    :cond_e
    const-string v1, ".."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 242
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 244
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v1

    :goto_7
    move-object v2, v1

    .line 249
    goto :goto_6

    .line 246
    :cond_f
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v5, v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 247
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    move-object v1, v2

    goto :goto_7

    .line 249
    :cond_10
    const-string v1, "$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v1, v7

    .line 251
    :goto_8
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 252
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    goto :goto_8

    .line 255
    :cond_11
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 256
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    .line 258
    :cond_12
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v5, v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_6

    .line 262
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v1, v7, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 263
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_6

    .line 266
    :cond_14
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal ref, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_15
    const/16 v1, 0x10

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 275
    invoke-virtual {p1, v7, v2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 370
    if-eqz v4, :cond_16

    .line 371
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_16
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object p4, v2

    goto/16 :goto_0

    .line 280
    :cond_17
    :try_start_8
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v1, v3, :cond_1b

    .line 281
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 282
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    .line 283
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 284
    const/16 v1, 0x10

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 286
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_18

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 287
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_a

    .line 288
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v3, v2

    move-object v2, v4

    .line 289
    goto/16 :goto_4

    .line 294
    :cond_18
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 295
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 296
    invoke-interface {v3, p1, v1, p3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object p4

    .line 370
    if-eqz v4, :cond_19

    .line 371
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_19
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 298
    :cond_1a
    :try_start_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_1b
    if-nez v2, :cond_28

    if-nez v6, :cond_28

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 304
    if-nez v2, :cond_1c

    .line 305
    new-instance v6, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 307
    :cond_1c
    invoke-virtual {p1, v7, v2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v4

    move-object v8, v4

    move-object v4, v2

    :goto_9
    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 310
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v1

    .line 311
    if-nez v1, :cond_1d

    .line 312
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_29

    .line 313
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v2, v8

    move-object v3, v4

    .line 314
    goto/16 :goto_4

    .line 320
    :cond_1d
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1e

    move-object v2, v4

    move-object v4, v8

    .line 321
    goto/16 :goto_3

    .line 324
    :cond_1e
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1f

    .line 325
    const/16 v1, 0x10

    invoke-interface {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v2, v8

    move-object v3, v4

    .line 326
    goto/16 :goto_4

    .line 329
    :cond_1f
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_20

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 330
    :cond_20
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, unexpect token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 370
    :catchall_2
    move-exception v1

    move-object v2, v8

    move-object v3, v4

    goto/16 :goto_2

    :cond_21
    move-object v2, v4

    move-object v4, v8

    .line 332
    goto/16 :goto_3

    .line 343
    :cond_22
    :try_start_b
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v5

    .line 344
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .line 345
    new-array v9, v8, [Ljava/lang/Object;

    .line 346
    const/4 v1, 0x0

    move v4, v1

    :goto_a
    if-ge v4, v8, :cond_23

    .line 347
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 348
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v9, v4

    .line 346
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_a

    .line 351
    :cond_23
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getCreatorConstructor()Ljava/lang/reflect/Constructor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v1

    if-eqz v1, :cond_25

    .line 353
    :try_start_c
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getCreatorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    move-result-object v1

    .line 370
    :goto_b
    if-eqz v2, :cond_24

    .line 371
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_24
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object p4, v1

    goto/16 :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    :try_start_d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instance error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getCreatorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 370
    :catchall_3
    move-exception v1

    goto/16 :goto_2

    .line 358
    :cond_25
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFactoryMethod()Ljava/lang/reflect/Method;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v1

    if-eqz v1, :cond_26

    .line 360
    :try_start_e
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFactoryMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v1

    goto :goto_b

    .line 361
    :catch_1
    move-exception v1

    .line 362
    :try_start_f
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create factory method error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFactoryMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_26
    move-object v1, v3

    goto :goto_b

    :cond_27
    move-object v1, v2

    goto/16 :goto_5

    :cond_28
    move-object v8, v4

    move-object v4, v2

    goto/16 :goto_9

    :cond_29
    move-object v2, v4

    move-object v4, v8

    goto/16 :goto_3

    :cond_2a
    move-object v7, v1

    goto/16 :goto_1
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
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
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v3

    .line 125
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 126
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 131
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 132
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_9

    .line 133
    add-int/lit8 v0, v5, -0x1

    if-ne v2, v0, :cond_2

    const/16 v0, 0x5d

    move v1, v0

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 135
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFieldClass()Ljava/lang/Class;

    move-result-object v6

    .line 136
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    .line 137
    invoke-interface {v3, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v1

    .line 138
    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    .line 132
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 133
    :cond_2
    const/16 v0, 0x2c

    move v1, v0

    goto :goto_1

    .line 139
    :cond_3
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_4

    .line 140
    invoke-interface {v3, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    .line 143
    invoke-interface {v3, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v6

    .line 144
    invoke-virtual {v0, v4, v6, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_2

    .line 145
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 146
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v7

    invoke-interface {v3, v6, v7, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 149
    :cond_6
    const/16 v6, 0xe

    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 150
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .line 151
    invoke-virtual {v0, v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    const/16 v0, 0x5d

    if-ne v1, v0, :cond_8

    .line 154
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_7

    .line 155
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_7
    const/16 v0, 0x10

    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 158
    :cond_8
    const/16 v0, 0x2c

    if-ne v1, v0, :cond_1

    .line 159
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 160
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_9
    const/16 v0, 0x10

    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 167
    return-object v4
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 424
    const/16 v0, 0xc

    return v0
.end method

.method public getFieldDeserializerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    return-object v0
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 407
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setter not found, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 412
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->getExtratype(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 414
    if-nez v0, :cond_1

    .line 415
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 420
    :goto_0
    invoke-static {p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    return-void

    .line 417
    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v3

    .line 381
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 383
    if-nez v0, :cond_1

    .line 384
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 392
    :cond_1
    if-nez v0, :cond_2

    .line 393
    invoke-virtual {p0, p1, p3, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    .line 398
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v1

    invoke-interface {v3, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 400
    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 402
    const/4 v0, 0x1

    goto :goto_0
.end method
