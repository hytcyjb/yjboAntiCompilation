.class public final Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ListResolveFieldDeserializer.java"


# instance fields
.field private final index:I

.field private final list:Ljava/util/List;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 22
    iput p3, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    .line 23
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 32
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->getRelatedArray()Ljava/lang/Object;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 37
    iget v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    if-le v2, v3, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p2

    .line 44
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    invoke-static {v1, v0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 48
    :cond_1
    return-void
.end method
