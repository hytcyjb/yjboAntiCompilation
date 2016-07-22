.class public Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "BooleanFieldDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 0
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
    .line 16
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x6

    return v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 6
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
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v5, 0x10

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    .line 24
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 25
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 26
    if-nez p2, :cond_1

    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 35
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    .line 36
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 37
    if-ne v3, v0, :cond_3

    .line 38
    :goto_1
    if-nez p2, :cond_4

    .line 39
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 37
    goto :goto_1

    .line 41
    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 46
    :cond_5
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    .line 48
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 55
    if-eqz p2, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_6
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_8

    .line 62
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 63
    if-nez p2, :cond_7

    .line 64
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_7
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 71
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 75
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->getFieldClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 80
    :cond_9
    if-nez p2, :cond_a

    .line 81
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_a
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
