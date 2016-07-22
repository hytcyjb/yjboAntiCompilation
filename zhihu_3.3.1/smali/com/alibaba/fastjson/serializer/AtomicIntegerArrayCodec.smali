.class public Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;
.super Ljava/lang/Object;
.source "AtomicIntegerArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicIntegerArrayCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 63
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 67
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 69
    new-instance v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 70
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0xe

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    .line 37
    if-nez p2, :cond_1

    .line 38
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "[]"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 46
    :cond_1
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 47
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v2

    .line 48
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 49
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    .line 56
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    .line 51
    if-eqz v0, :cond_3

    .line 52
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 54
    :cond_3
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
