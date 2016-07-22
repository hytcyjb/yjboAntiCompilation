.class public Lcom/alibaba/fastjson/serializer/CollectionSerializer;
.super Ljava/lang/Object;
.source "CollectionSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CollectionSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/alibaba/fastjson/serializer/CollectionSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CollectionSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CollectionSerializer;->instance:Lcom/alibaba/fastjson/serializer/CollectionSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v4

    .line 35
    if-nez p2, :cond_1

    .line 36
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "[]"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 46
    instance-of v1, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_a

    .line 47
    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    .line 48
    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    move-object v1, v0

    :goto_1
    move-object v0, p2

    .line 52
    check-cast v0, Ljava/util/Collection;

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v5

    .line 55
    invoke-virtual {p1, v5, p2, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    const-class v3, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v3, v6, :cond_3

    .line 59
    const-string v3, "Set"

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 67
    :cond_2
    :goto_2
    const/16 v3, 0x5b

    :try_start_0
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 68
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto :goto_0

    .line 60
    :cond_3
    const-class v3, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v3, v6, :cond_2

    .line 61
    const-string v3, "TreeSet"

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_2

    .line 68
    :cond_4
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 70
    add-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_5

    .line 71
    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 74
    :cond_5
    if-nez v0, :cond_6

    .line 75
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    move v2, v3

    .line 76
    goto :goto_3

    .line 79
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 81
    const-class v7, Ljava/lang/Integer;

    if-ne v2, v7, :cond_7

    .line 82
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    move v2, v3

    .line 83
    goto :goto_3

    .line 86
    :cond_7
    const-class v7, Ljava/lang/Long;

    if-ne v2, v7, :cond_8

    .line 87
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 89
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90
    const/16 v0, 0x4c

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    move v2, v3

    .line 92
    goto :goto_3

    .line 95
    :cond_8
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 96
    add-int/lit8 v7, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, p1, v0, v7, v1}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    move v2, v3

    goto :goto_3

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    .line 101
    throw v0

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method
