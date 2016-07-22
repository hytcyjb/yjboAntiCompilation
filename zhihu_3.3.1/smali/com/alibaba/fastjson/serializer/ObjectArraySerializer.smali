.class public Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;
.super Ljava/lang/Object;
.source "ObjectArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v5

    move-object v0, p2

    .line 35
    check-cast v0, [Ljava/lang/Object;

    .line 37
    if-nez p2, :cond_1

    .line 38
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "[]"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 46
    :cond_1
    array-length v3, v0

    .line 48
    add-int/lit8 v6, v3, -0x1

    .line 50
    const/4 v4, -0x1

    if-ne v6, v4, :cond_2

    .line 51
    const-string v0, "[]"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v7

    .line 56
    invoke-virtual {p1, v7, p2, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    const/16 v4, 0x5b

    :try_start_0
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 63
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 66
    :goto_1
    if-lt v1, v3, :cond_3

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 75
    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto :goto_0

    .line 67
    :cond_3
    if-eqz v1, :cond_4

    .line 68
    const/16 v2, 0x2c

    :try_start_1
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 71
    :cond_4
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    move-object v1, v2

    .line 79
    :goto_2
    if-lt v3, v6, :cond_6

    .line 103
    aget-object v0, v0, v6

    .line 105
    if-nez v0, :cond_a

    .line 106
    const-string v0, "null]"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :goto_3
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto :goto_0

    .line 80
    :cond_6
    :try_start_2
    aget-object v8, v0, v3

    .line 82
    if-nez v8, :cond_7

    .line 83
    const-string v4, "null,"

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 79
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 85
    :cond_7
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 86
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 99
    :goto_5
    const/16 v4, 0x2c

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    .line 117
    throw v0

    .line 88
    :cond_8
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 90
    if-ne v4, v2, :cond_9

    .line 91
    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-interface {v1, p1, v8, v4, v9}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_5

    .line 94
    :cond_9
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 96
    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-interface {v1, p1, v8, v2, v9}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move-object v2, v4

    goto :goto_5

    .line 108
    :cond_a
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 109
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 113
    :goto_6
    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_3

    .line 111
    :cond_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method
