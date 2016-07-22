.class public Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
.super Ljava/lang/Object;
.source "NumberDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    const/16 v4, 0x10

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 19
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_2

    .line 20
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 22
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 81
    :cond_1
    :goto_0
    return-object v0

    .line 25
    :cond_2
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    .line 26
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 28
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_3

    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_4

    .line 29
    :cond_3
    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_6

    .line 33
    :cond_5
    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_6
    const-wide/32 v0, -0x80000000

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-gtz v0, :cond_7

    .line 37
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_8
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 43
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_9

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_a

    .line 44
    :cond_9
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 46
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_a
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    .line 50
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 52
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_b

    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_c

    .line 53
    :cond_b
    invoke-virtual {v0}, Ljava/math/BigDecimal;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_d

    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_1

    .line 57
    :cond_d
    invoke-virtual {v0}, Ljava/math/BigDecimal;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_0

    .line 63
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 65
    if-nez v0, :cond_f

    .line 66
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 69
    :cond_f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_10

    const-class v1, Ljava/lang/Double;

    if-ne p2, v1, :cond_11

    .line 70
    :cond_10
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    .line 73
    :cond_11
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_12

    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_13

    .line 74
    :cond_12
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :cond_13
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_14

    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_15

    .line 78
    :cond_14
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :cond_15
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    return v0
.end method
